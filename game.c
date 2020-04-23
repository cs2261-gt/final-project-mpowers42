#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "startScreen.h"
#include "gameScreen.h"
#include "pauseScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "spritesheet.h"
#include "background.h"
#include "font.h"
#include "text.h"
#include "grass.h"
#include "sound.h"
#include "gameSong.h"
#include "catSound.h"

// Variables
CAT cat;
ZOMBIE zombie[ZOMBIECOUNT];
HAIRBALL hairball[HAIRBALLCOUNT];
BLUECAR blueCar[BLUECARCOUNT];
int zombiesRemaining;
int zombieTimer; // timer for spawning zombies at intervals
extern int loseGame;

// Horizontal and vertical offsets
int hOff;
int vOff;
int playerHOff;
int totalHOff;

// Screenblock to change for XL background
int screenBlock;

// Initialize game
void initGame() {

    // Initialize horizontal and vertical offsets and screenblock
    vOff = 0;
    hOff = 0;
    totalHOff = 0;
    playerHOff = 0;
    screenBlock = 28;
    loseGame = 0;

    initCat();
    initZombie();
    initHairball();
    initBlueCar();

    // Initialize score
    zombiesRemaining = ZOMBIECOUNT;
    zombieTimer = 0;

}

// Initialize cat
void initCat() {

    cat.rdel = 1;
    cat.cdel = 1;
    cat.height = 32;
    cat.width = 32;

    cat.aniCounter = 0;
    cat.currFrame = 0;
    cat.numFrames = 3;

    // Place in the middle of the screen
    cat.worldRow = SCREENHEIGHT / 2 - cat.width / 2 + vOff;
    cat.worldCol = SCREENWIDTH / 2 - cat.height / 2 + hOff;
}

// Initialize zombie
void initZombie() {

    for (int i = 0; i < ZOMBIECOUNT; i++) {
        zombie[i].worldRow = rand() % 110 + vOff;
        zombie[i].worldCol = SCREENWIDTH + totalHOff;
        zombie[i].rdel = 1;
        zombie[i].cdel = 1;
        zombie[i].height = 32;
        zombie[i].width = 32;
        zombie[i].active = 0;
        zombie[i].aniCounter = 0;
        zombie[i].currFrame = 0;
        zombie[i].numFrames = 4;
        zombie[i].screenRow = zombie[i].worldRow;
        zombie[i].screenCol = zombie[i].worldCol;
    }
    zombie[0].active = 1; // set just one to active to start
 
}

// Initialize hairball
void initHairball() {

    for (int i = 0; i < HAIRBALLCOUNT; i++) {

		hairball[i].height = 8;
		hairball[i].width = 8;
		hairball[i].screenRow = 0;
		hairball[i].screenCol = 0;
        hairball[i].worldRow = 0;
        hairball[i].worldCol = 0;
		hairball[i].rdel = 0;
        hairball[i].cdel = 2; // Move faster than cat
		hairball[i].active = 0; // Inactive until fired
	}
}

// Initialize blue car
void initBlueCar() {

    for (int i = 0; i < BLUECARCOUNT; i++) {
        blueCar[i].height = 32;
        blueCar[i].width = 32;
        blueCar[i].row = i % BLUECARCOUNT * 200;
        blueCar[i].col = i % BLUECARCOUNT * 200;
    }

}

// Update game
void updateGame() {

    // Wrap XL BG correctly
    if (hOff > 256) {
        screenBlock++;
        hOff -= 256;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_4BPP;
    }

    if (playerHOff > 512) {
        playerHOff -= 512;
    }

    // Spawn zombies at a fixed rate
    zombieTimer++;
     if (zombieTimer % 100 == 0) {
        fireZombie();
    }

    updateCat();
    for (int i = 0; i < ZOMBIECOUNT; i++)
		updateZombie(&zombie[i]);
    for (int i = 0; i < HAIRBALLCOUNT; i++)
		updateHairball(&hairball[i]);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}

// Update cat
void updateCat() {

    if (BUTTON_HELD(BUTTON_UP) && cat.worldRow - cat.rdel > 0) {

        cat.worldRow -= cat.rdel;

    }
    if (BUTTON_HELD(BUTTON_DOWN) && cat.worldRow + cat.rdel < SCREENHEIGHT - 16) {

        cat.worldRow += cat.rdel;

    } 
    if (BUTTON_HELD(BUTTON_RIGHT)) {

        if (cat.worldCol + cat.width < WORLDWIDTH - 1) {
            cat.worldCol++;
        }

        // SCREENWIDTH / 3 is complex movement - change it to what fits the game
        if (screenBlock < 31 && hOff < (WORLDWIDTH - SCREENWIDTH - 1) && cat.screenCol > SCREENWIDTH / 3) {
            hOff++;
            playerHOff++;
            totalHOff++;
        }

        animateCat();
    } else {

        // Stand still if no button is held
        cat.currFrame = 1;
    }

    cat.screenRow = cat.worldRow - vOff;
    cat.screenCol = cat.worldCol - playerHOff;

    if (BUTTON_PRESSED(BUTTON_A)) {
        fireHairball();
    }

}

// Update zombie
void updateZombie(ZOMBIE* z) {
    if (z->active) { // only update active zombies
        // Move the zombie across the screen to the left
        z->worldCol -= z->cdel;

        // if zombie reaches the end of the WORLD, set to inactive!
        if (z->screenCol + z->width < 0) {
            z->active = 0;
        }

        animateZombie(z);

        // Handle zombie-hairball collisions
        for (int i = 0; i < HAIRBALLCOUNT; i++) {
            // need to check if hairball is active too!
            if (hairball[i].active && collision(z->screenCol, z->screenRow, z->width, z->height,
                hairball[i].screenCol, hairball[i].screenRow, hairball[i].width, hairball[i].height)) {

                // Put back in the pool
                hairball[i].active = 0;
                z->active = 0;

                // Update "score" (for now)
                zombiesRemaining--;
            }
        }

        // Handle zombie-cat collisions
        if (collision(z->screenCol, z->screenRow, z->width, z->height,
            cat.screenCol - 5, cat.screenRow, cat.width, cat.height) // Adjusting bc cat sprite is not the full 32 x 32
            && z->active) {

            loseGame = 1;
        }

        // allow zombie to move independently from the cat
        z->screenRow = z->worldRow - vOff;
        z->screenCol = z->worldCol - totalHOff;
    }
}

// intialize inactive zombies on fire
void fireZombie() {
    for (int i = 0; i < ZOMBIECOUNT; i++) {
        if (!zombie[i].active) {
            zombie[i].worldRow = rand() % 110 + vOff;
            zombie[i].worldCol = SCREENWIDTH + totalHOff; // initialize worldCol and row to use totalHOff and voff
            zombie[i].active = 1;
            break;
        }
    }
}

// Update hairball
void updateHairball(HAIRBALL* h) {

    // If the hairball is active, update it; otherwise, ignore
    if (h->active) {
        if (h->worldRow + h->height-1 >= 0 && h->worldRow + h->rdel < SCREENHEIGHT-1) {
                h->worldRow += h->rdel;
                h->worldCol += h->cdel;
        } else {
            h->active = 0;
        }

        // if hairball reaches end of the screen
        if (h->screenCol > SCREENWIDTH) {
            h->active = 0;
        }
    }

    h->screenRow = h->worldRow - vOff;
    h->screenCol = h->worldCol - totalHOff;

}

// Draw game
void drawGame() {

    drawCat();
    for (int i = 0; i < ZOMBIECOUNT; i++) {
        drawZombie(&zombie[i], 1 + i);
    }
    for (int i = 0; i < HAIRBALLCOUNT; i++)
		drawHairball(&hairball[i], 5 + i);

    for (int i = 0; i < BLUECARCOUNT; i++)
		drawBlueCar(&blueCar[i], 10 + i);
}

// Draw cat
void drawCat() {

    shadowOAM[0].attr0 = cat.screenRow | ATTR0_SQUARE;
    shadowOAM[0].attr1 = cat.screenCol | ATTR1_MEDIUM; // 32 x 32
    shadowOAM[0].attr2 = ATTR2_TILEID(0, cat.currFrame * 4);
}

// Draw zombie
void drawZombie(ZOMBIE* z, int index) {
    
    if (z->active) {            // rowmask and colmask are macros that help draw things outside of the screen boundaries!
        shadowOAM[index].attr0 = (ROWMASK & z->screenRow) | ATTR0_SQUARE;
        shadowOAM[index].attr1 = (COLMASK & z->screenCol) | ATTR1_MEDIUM; // 32 x 32
        shadowOAM[index].attr2 = ATTR2_TILEID(4, z->currFrame * 4);
    } else {
        shadowOAM[index].attr0 = ATTR0_HIDE;
    }
}

// Draw hairball
void drawHairball(HAIRBALL* h, int index) {
    if (h->active) {
            shadowOAM[index].attr0 = (ROWMASK & h->screenRow) | ATTR0_SQUARE;
            shadowOAM[index].attr1 = (COLMASK & h->screenCol) | ATTR1_TINY; // 8 x 8
            shadowOAM[index].attr2 = ATTR2_TILEID(8, 0);
    } else {
        shadowOAM[index].attr0 = ATTR0_HIDE;
    }
}

// Draw blue car
void drawBlueCar(BLUECAR* b, int index) {
    shadowOAM[index].attr0 = (ROWMASK & (b->row - vOff)) | ATTR0_SQUARE;
    shadowOAM[index].attr1 = (COLMASK & (b->col - totalHOff)) | ATTR1_MEDIUM; // 32 x 32
    shadowOAM[index].attr2 = ATTR2_TILEID(8, 1);
}

// Animate the cat
void animateCat() {

    if (cat.aniCounter % 14 == 0) {
        if (cat.currFrame < cat.numFrames - 1) {
            cat.currFrame++;
        } else {
            cat.currFrame = 0;
        }
    }

    cat.aniCounter++;
}

// Animate zombies
void animateZombie(ZOMBIE* z) {

    if (z->aniCounter % 12 == 0) {
        if (z->currFrame < z->numFrames - 1) {
            z->currFrame++;
        } else {
            z->currFrame = 0;
        }
    }

    z->aniCounter++;
}

// Fire a hairball
void fireHairball() {

    playSoundB(catSound, CATSOUNDLEN, 0);

	// Find the first inactive bullet
	for (int i = 0; i < HAIRBALLCOUNT; i++) {
		if (!hairball[i].active) {

			// Position the new bullet
            hairball[i].worldRow = cat.worldRow + cat.height / 2; // set the worldRow and col so that you can update screenrow and col accurately in updateHairball
            hairball[i].worldCol = cat.worldCol + cat.width / 2;
			// hairball[i].screenRow = cat.screenRow + cat.height/2;
            // hairball[i].screenCol = cat.screenCol + cat.width/2;

			// Take the bullet out of the pool
			hairball[i].active = 1;

			// Break out of the loop
			break;
		}
	}
}