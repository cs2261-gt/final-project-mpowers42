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

// Prototype
void initialize();

// Button variables
unsigned short buttons;
unsigned short oldButtons;

// Game states
enum {START, GAME, PAUSE, WIN, LOSE};
int state;
OBJ_ATTR shadowOAM[128];

int main() {

    initialize();

    while(1) {

        // State machine
        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
        oldButtons = buttons;
        buttons = BUTTONS;
    }

}

// Sets up GBA
void initialize() {

    // Set up BG0 register
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {

    // DMA bg tiles, map, and palette into memory
    DMANow(3, startScreenPal, PALETTE, 256);
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen / 2);
    DMANow(3, startScreenMap, &SCREENBLOCK[28], startScreenMapLen / 2);

    // turn off sprites
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = START;
}

// Runs every frame of the start state
void start() {

    // State transition
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
}

// Sets up the game state
void goToGame() {

    // DMA bg tiles, map, and palette into memory
    DMANow(3, gameScreenPal, PALETTE, 256);
    DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen / 2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[28], gameScreenMapLen / 2);

    // DMA sprite tiles and palette into palette
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);
    // sprite tile either go in charblock 4 or charblock 5
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    // when we do sprite enable, the entire spritesheet shows up in top left corner of screen, so lets hide it!
    hideSprites(); // only modifies shadowOAM
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = GAME;
}

// Runs every frame of the game state
void game() {

    updateGame(); // Modify structs
    drawGame(); // Modify shadowOAM
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (zombiesRemaining == 0)
        goToWin();
    else if (BUTTON_PRESSED(BUTTON_B))
        goToLose();
}

// Sets up the pause state
void goToPause() {

    // DMA bg tiles, map, and palette into memory
    DMANow(3, pauseScreenPal, PALETTE, 256);
    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen / 2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[28], pauseScreenMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {

    // DMA bg tiles, map, and palette into memory
    DMANow(3, winScreenPal, PALETTE, 256);
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[28], winScreenMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = WIN;
}

// Runs every frame of the win state
void win() {

    // State transition
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {

    // DMA bg tiles, map, and palette into memory
    DMANow(3, loseScreenPal, PALETTE, 256);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen / 2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[28], loseScreenMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // State transition
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}