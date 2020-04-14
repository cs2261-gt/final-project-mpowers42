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

// Initialize game
void initGame() {

    initCat();
    initZombie();
    initHairball();

    // Initialize score
    zombiesRemaining = ZOMBIECOUNT;
    zombieTimer = 0;

}

// Initialize cat
void initCat() {

    cat.row = 80;
    cat.col = 10;
    cat.rdel = 1;
    cat.cdel = 1;
    cat.height = 16;
    cat.width = 16;
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
		hairball[i].row = -hairball[i].height;
		hairball[i].col = 0;
		hairball[i].rdel = 0;
        hairball[i].cdel = 2; // Move faster than cat
		hairball[i].active = 0; // Inactive until fired
	}
}

// Update game
void updateGame() {
    // spawn zombies at a fixed rate
    zombieTimer++;
     if (zombieTimer % 100 == 0) {
        fireZombie();
    }

    updateCat();
    for (int i = 0; i < ZOMBIECOUNT; i++)
		updateZombie(&zombie[i]);
    for (int i = 0; i < HAIRBALLCOUNT; i++)
		updateHairball(&hairball[i]);
}

// Update cat
void updateCat() {

    if (BUTTON_HELD(BUTTON_UP) && cat.row - cat.rdel > 0) {

        cat.row -= cat.rdel;

    } else if (BUTTON_HELD(BUTTON_DOWN) && cat.row + cat.rdel < SCREENHEIGHT - 16) {

        cat.row += cat.rdel;

    } else if (BUTTON_HELD(BUTTON_LEFT) && cat.col - cat.cdel > 0) {

        cat.col -= cat.cdel;

    } else if (BUTTON_HELD(BUTTON_RIGHT) && cat.col + cat.cdel < SCREENWIDTH - 16) {

        cat.col += cat.cdel;

    }

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
                hairball[i].col, hairball[i].row, hairball[i].width, hairball[i].height)) {

                // Put back in the pool
                hairball[i].active = 0;
                z->active = 0;

                // Update "score" (for now)
                zombiesRemaining--;
            }
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
        if (h->row + h->height-1 >= 0
            && h->row + h->rdel < SCREENHEIGHT-1
            && h->col + h->cdel < SCREENWIDTH) {
                h->row += h->rdel;
                h->col += h->cdel;
            } else {
                h->active = 0;
            }
    }
}

// Draw game
void drawGame() {

    drawCat();
    for (int i = 0; i < ZOMBIECOUNT; i++) {
        drawZombie(&zombie[i], 1 + i);
    }
    for (int i = 0; i < HAIRBALLCOUNT; i++)
		drawHairball(&hairball[i], 2 + i);
}

// Draw cat
void drawCat() {

    shadowOAM[0].attr0 = cat.row | ATTR0_SQUARE;
    shadowOAM[0].attr1 = cat.col | ATTR1_SMALL; // 16 x 16
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 0);
}

// Draw zombie
void drawZombie(ZOMBIE* z, int index) {
    
    if (z->active) {
        shadowOAM[index].attr0 = z->row | ATTR0_SQUARE;
        shadowOAM[index].attr1 = z->col | ATTR1_SMALL; // 16 x 16
        shadowOAM[index].attr2 = ATTR2_TILEID(2, 0);
    } else {
        shadowOAM[index].attr0 = ATTR0_HIDE;
    }
}

// Draw hairball
void drawHairball(HAIRBALL* h, int index) {
    if (h->active) {
            shadowOAM[index].attr0 = h->row | ATTR0_SQUARE;
            shadowOAM[index].attr1 = h->col | ATTR1_TINY; // 8 x 8
            shadowOAM[index].attr2 = ATTR2_TILEID(4, 0);
    } else {
        shadowOAM[index].attr0 = ATTR0_HIDE;
    }
}

// Fire a hairball
void fireHairball() {

	// Find the first inactive bullet
	for (int i = 0; i < HAIRBALLCOUNT; i++) {
		if (!hairball[i].active) {

			// Position the new bullet
			hairball[i].row = cat.row + cat.height/2 - hairball[i].height/2;
			hairball[i].col = cat.col + cat.width/2 - hairball[i].width/2;

			// Take the bullet out of the pool
			hairball[i].active = 1;

			// Break out of the loop
			break;
		}
	}
}