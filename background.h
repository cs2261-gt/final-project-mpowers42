
//{{BLOCK(background)

//======================================================================
//
//	background, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 9 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 288 + 8192 = 8992
//
//	Time-stamp: 2020-04-14, 11:07:56
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACKGROUND_H
#define GRIT_BACKGROUND_H

#define backgroundTilesLen 288
extern const unsigned short backgroundTiles[144];

#define backgroundMapLen 8192
extern const unsigned short backgroundMap[4096];

#define backgroundPalLen 512
extern const unsigned short backgroundPal[256];

#endif // GRIT_BACKGROUND_H

//}}BLOCK(background)