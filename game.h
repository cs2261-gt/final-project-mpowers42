// Cat struct
typedef struct {
    int screenRow;
	int screenCol;
	int worldRow;
	int worldCol;
    int rdel;
	int cdel;
	int height;
	int width;
    int aniCounter;
	int currFrame;
	int numFrames;
} CAT;

// Zombie struct
typedef struct {
    int screenRow;
	int screenCol;
	int worldRow;
	int worldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
	int aniCounter;
	int currFrame;
	int numFrames;
} ZOMBIE;

// Hairball struct
typedef struct {
	int screenRow;
	int screenCol;
	int worldRow;
	int worldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
} HAIRBALL;

// Constants
#define ZOMBIECOUNT 5
#define HAIRBALLCOUNT 5

// Variables
extern CAT cat;
extern ZOMBIE zombie[ZOMBIECOUNT];
extern HAIRBALL hairball[HAIRBALLCOUNT];
extern int zombiesRemaining;

//Prototypes
void initGame();
void initCat();
void initZombie();
void initHairball();
void updateGame();
void updateCat();
void updateZombie(ZOMBIE *);
void updateHairball(HAIRBALL *);
void drawGame();
void drawCat();
void drawZombie(ZOMBIE *, int index);
void drawHairball(HAIRBALL *, int index);
void animateCat();
void animateZombie(ZOMBIE *);
void fireHairball();
void fireZombie();