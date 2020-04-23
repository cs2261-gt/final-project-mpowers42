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

// Blue car struct
typedef struct {
	int row;
	int col;
	int height;
	int width;
} BLUECAR;

// Door struct
typedef struct {
	int row;
	int col;
	int height;
	int width;
} DOOR;

// Constants
#define ZOMBIECOUNT 5
#define HAIRBALLCOUNT 5
#define BLUECARCOUNT 5

// Variables
extern CAT cat;
extern ZOMBIE zombie[ZOMBIECOUNT];
extern HAIRBALL hairball[HAIRBALLCOUNT];
extern BLUECAR blueCar[BLUECARCOUNT];
extern int zombiesRemaining;

//Prototypes
void initGame();
void initCat();
void initZombie();
void initBlueCar();
void initDoor();
void initHairball();
void updateGame();
void updateCat();
void updateZombie(ZOMBIE *);
void updateHairball(HAIRBALL *);
void drawGame();
void drawCat();
void drawZombie(ZOMBIE *, int index);
void drawHairball(HAIRBALL *, int index);
void drawBlueCar(BLUECAR *, int index);
void drawDoor();
void animateCat();
void animateZombie(ZOMBIE *);
void fireHairball();
void fireZombie();