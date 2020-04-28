/* Finished: XL background implementation, basic gameplay, cat sprite and animation, state machine, collisions, zombie sprite and animation,
    car as a road block, car-cat collision, door at the end */
// What needs to be added: Car animation, cheat
/* Cheat idea: There is a green crystal (or maybe a green fish/some sort of cat food) that the cat can get and 
    makes the cheeks turn green and allows the cat to eat the zombies */
/* Bugs:  */
// How to play: Go up, down, and right with the up, down, and right buttons, press A to shoot hairballs, try to kill zombies

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
#include "loseSound.h"
#include "winSound.h"
#include "eatingSound.h"

// Prototype
void initialize();

// Button variables
unsigned short buttons;
unsigned short oldButtons;

// Random seed
int seed;

// Game states
enum {START, INSTRUCTIONS, GAME, PAUSE, WIN, LOSE};
int state;
int loseGame;
int winGame;
int collided;
OBJ_ATTR shadowOAM[128];

int main() {

    initialize();

    while(1) {

        // State machine
        switch(state) {

            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
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

    setupSounds();
    setupInterrupts();


    // Set up the first state
    goToStart();
}

// Sets up the start state
// Settings: tile, 4bpp, Map with sbb checked, Pal checked
void goToStart() {

    // DMA bg tiles, map, and palette into memory
    DMANow(3, startScreenPal, PALETTE, 256);
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen / 2);
    DMANow(3, startScreenMap, &SCREENBLOCK[28], startScreenMapLen / 2);

    // Turn off sprites
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    playSoundA(gameSong, GAMESONGLEN, 1);

    // Reset hOff to 0
    REG_BG0HOFF = 0;

    state = START;
}

// Runs every frame of the start state
void start() {

    // State transition
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        srand(seed);
        goToGame();
    }
    seed++;

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
}

// Sets up the instructions state
// Settings: 16bpp, bitmap (GBA), do not check Pal
void goToInstructions() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    drawFullscreenImage3(grassBitmap);
    drawString(20, 40, "Avoid the zombies and obstacles,", BLACK);
    drawString(4, 50, "and help Cheeto escape the apocalypse!", BLACK);
    drawString(20, 60, " Use RIGHT, UP, and DOWN to walk", BLACK);
    drawString(10, 70, "Use A to shoot hairballs at zombies", BLACK);
    drawString(20, 80, "Press START to pause and unpause", BLACK);
    drawString(50, 100, "Eat the single fish snack", BLACK);
    drawString(60, 110, "to eat the zombies!", BLACK);
    drawString(10, 130, "Press SELECT", BLACK);
    drawString(10, 140, " to go back", BLACK);
    drawString(160, 130, "Press START", BLACK);
    drawString(165, 140, " to play", BLACK);

    state = INSTRUCTIONS;
}

// Runs every frame of the instructions state
void instructions() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        srand(seed);
        goToGame();
    }
    seed++;
}

// Sets up the game state
void goToGame() {

    // Change size to wide
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_4BPP;

    // DMA bg tiles, map, and palette into memory
    DMANow(3, backgroundPal, PALETTE, 256);
    DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
    DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);

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

    unpauseSound();

    collided = 0; //reset

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    } else if (winGame) { 
        goToWin();
    } else if (loseGame) {
        stopSound();
        goToLose();
    }
}

// Sets up the pause state
void goToPause() {

    // Change size to small
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;

    // DMA bg tiles, map, and palette into memory
    DMANow(3, pauseScreenPal, PALETTE, 256);
    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen / 2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[28], pauseScreenMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    // Reset hOff to 0
    REG_BG0HOFF = 0;

    // playSoundA(pauseSong, PAUSESONGLEN, 1);

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        // stopSound();
        goToGame();
        unpauseSound();
    } else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {

    // Change size to small
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;

    // DMA bg tiles, map, and palette into memory
    DMANow(3, winScreenPal, PALETTE, 256);
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[28], winScreenMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    playSoundB(winSound, WINSOUNDLEN, 0);

    // Reset hOff to 0
    REG_BG0HOFF = 0;

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

    // Change size to small
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;

    // DMA bg tiles, map, and palette into memory
    DMANow(3, loseScreenPal, PALETTE, 256);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen / 2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[28], loseScreenMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    playSoundA(loseSong, LOSESONGLEN, 0);

    // Reset hOff to 0
    REG_BG0HOFF = 0;

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // State transition
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}