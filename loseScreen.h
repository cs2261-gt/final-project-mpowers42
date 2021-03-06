
//{{BLOCK(loseScreen)

//======================================================================
//
//	loseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 205 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6560 + 2048 = 9120
//
//	Time-stamp: 2020-04-22, 21:27:58
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define loseScreenTilesLen 6560
extern const unsigned short loseScreenTiles[3280];

#define loseScreenMapLen 2048
extern const unsigned short loseScreenMap[1024];

#define loseScreenPalLen 512
extern const unsigned short loseScreenPal[256];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(loseScreen)
