#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "startScreen.h"
#include "gameScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "spritesheet.h"

// Variables
CAT cat;
ZOMBIE zombie[ZOMBIECOUNT];
HAIRBALL hairball[HAIRBALLCOUNT];
int zombiesRemaining;
int zombieTimer; // timer for spawning zombies at intervals

// Horizontal and vertical offsets
int hOff;
int vOff;
int playerHOff;

// Screenblock to change for XL background
int screenBlock;

// Initialize game
void initGame() {

    // Initialize horizontal and vertical offsets and screenblock
    vOff = 0;
    hOff = 0;
    playerHOff = 0;
    screenBlock = 28;

    initCat();
    initZombie();
    initHairball();

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
        zombie[i].row = rand() % 110;
        zombie[i].col = SCREENWIDTH;
        zombie[i].rdel = 1;
        zombie[i].cdel = 1;
        zombie[i].height = 16;
        zombie[i].width = 16;
        zombie[i].active = 0;
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
        z->col -= z->cdel;

        // if zombie reaches the end of the screen, set to inactive!
        if (z->col < 0) {
            z->active = 0;
        }

        // Handle zombie-hairball collisions
        for (int i = 0; i < HAIRBALLCOUNT; i++) {
            if (collision(z->col, z->row, z->width, z->height,
                hairball[i].screenCol, hairball[i].screenRow, hairball[i].width, hairball[i].height)) {

                // Put back in the pool
                hairball[i].active = 0;
                z->active = 0;

                // Update "score" (for now)
                zombiesRemaining--;
            }
        }

        // Handle zombie-cat collisions
        if (collision(z->col, z->row, z->width, z->height,
            cat.screenCol - 5, cat.screenRow, cat.width, cat.height) // Adjusting bc cat sprite is not the full 32 x 32
            && z->active) {

            goToLose();
        }
    }
}

// intialize inactive zombies on fire
void fireZombie() {
    for (int i = 0; i < ZOMBIECOUNT; i++) {
        if (!zombie[i].active) {
            zombie[i].active = 1;
            zombie[i].row = rand() % 110;
            zombie[i].col = SCREENWIDTH;
            break;
        }
    }
}

// Update hairball
void updateHairball(HAIRBALL* h) {

    // If the hairball is active, update it; otherwise, ignore
    if (h->active) {
        if (h->worldRow + h->height-1 >= 0
            && h->worldRow + h->rdel < SCREENHEIGHT-1
            && h->worldCol + h->cdel < SCREENWIDTH) {
                h->worldRow += h->rdel;
                h->worldCol += h->cdel;
            } else {
                h->active = 0;
            }
    }

    h->screenRow = h->worldRow - vOff;
    h->screenCol = h->worldCol - hOff;

}

// Draw game
void drawGame() {

    drawCat();
    for (int i = 0; i < ZOMBIECOUNT; i++) {
        drawZombie(&zombie[i], 1 + i);
    }
    for (int i = 0; i < HAIRBALLCOUNT; i++)
		drawHairball(&hairball[i], 5 + i);
}

// Draw cat
void drawCat() {

    shadowOAM[0].attr0 = cat.screenRow | ATTR0_SQUARE;
    shadowOAM[0].attr1 = cat.screenCol | ATTR1_MEDIUM; // 32 x 32
    shadowOAM[0].attr2 = ATTR2_TILEID(0, cat.currFrame * 4);
}

// Draw zombie
void drawZombie(ZOMBIE* z, int index) {
    
    if (z->active) {
        shadowOAM[index].attr0 = z->row | ATTR0_SQUARE;
        shadowOAM[index].attr1 = z->col | ATTR1_SMALL; // 16 x 16
        shadowOAM[index].attr2 = ATTR2_TILEID(4, 0);
    } else {
        shadowOAM[index].attr0 = ATTR0_HIDE;
    }
}

// Draw hairball
void drawHairball(HAIRBALL* h, int index) {
    if (h->active) {
            shadowOAM[index].attr0 = h->screenRow | ATTR0_SQUARE;
            shadowOAM[index].attr1 = h->screenCol | ATTR1_TINY; // 8 x 8
            shadowOAM[index].attr2 = ATTR2_TILEID(6, 0);
    } else {
        shadowOAM[index].attr0 = ATTR0_HIDE;
    }
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

// Fire a hairball
void fireHairball() {

	// Find the first inactive bullet
	for (int i = 0; i < HAIRBALLCOUNT; i++) {
		if (!hairball[i].active) {

			// Position the new bullet
			hairball[i].screenRow = cat.screenRow + cat.height/2 ;
            hairball[i].screenCol = cat.screenCol + cat.width/2 ;

			// Take the bullet out of the pool
			hairball[i].active = 1;

			// Break out of the loop
			break;
		}
	}
}