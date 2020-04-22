
//{{BLOCK(loseScreen)

//======================================================================
//
//	loseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 56 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1792 + 2048 = 4352
//
//	Time-stamp: 2020-04-22, 18:03:44
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short loseScreenTiles[896] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0050,0x0000,0x0505,0x0500,0x2100,0x0055,0x3350,0x0026,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0566,0x5000,0x0533,0x6500,0x0633,0x3605,0x0333,
	0x3360,0x0533,0x3370,0x0733,0x3330,0x5333,0x3335,0x3333,
	0x3335,0x3333,0x3332,0x3333,0x3336,0x3333,0x3331,0x3333,

	0x0505,0x0000,0x0000,0x0000,0x0000,0x0000,0x0500,0x0000,
	0x5507,0x0000,0x0053,0x0000,0x5533,0x0000,0x5333,0x0000,
	0x0000,0x0500,0x0000,0x5000,0x0000,0x0050,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x5000,0x0000,0x3000,0x0000,0x3650,
	0x3300,0x5333,0x3310,0x1333,0x3370,0x7333,0x3332,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0005,0x0000,
	0x0005,0x0000,0x0005,0x0000,0x0006,0x0000,0x0023,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x5000,0x0000,0x5000,
	0x3337,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x6333,0x0000,0x3333,0x0000,0x3333,0x0056,0x3333,0x0053,
	0x3333,0x5023,0x3333,0x0533,0x3333,0x0333,0x3333,0x2333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0005,0x0000,

	0x0000,0x3310,0x0000,0x3330,0x0000,0x3332,0x0000,0x3333,
	0x5000,0x3333,0x7005,0x3333,0x3550,0x3333,0x3305,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0063,0x0000,0x0013,0x0000,0x0073,0x0000,0x0033,0x0000,
	0x0033,0x0000,0x0533,0x0000,0x0233,0x0000,0x0233,0x0000,
	0x0000,0x5000,0x0000,0x5000,0x0000,0x5000,0x0000,0x5000,
	0x0000,0x5000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3333,0x7333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x2333,0x3333,0x3333,0x3333,0x6333,
	0x5005,0x0000,0x0007,0x0000,0x0053,0x0000,0x0063,0x0000,
	0x0537,0x0005,0x0655,0x0000,0x5051,0x0000,0x0056,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0050,
	0x0000,0x2005,0x0000,0x6000,0x0000,0x0000,0x0000,0x0000,
	0x3355,0x3333,0x3310,0x3333,0x3335,0x3333,0x3336,0x3333,
	0x3633,0x3333,0x3056,0x3333,0x7150,0x3333,0x2250,0x3337,

	0x0233,0x0000,0x0633,0x0000,0x0633,0x0000,0x0233,0x0000,
	0x0133,0x0000,0x0733,0x0000,0x0733,0x0000,0x0733,0x0000,
	0x3337,0x3333,0x3337,0x3333,0x3337,0x3333,0x3336,0x3333,
	0x3332,0x3333,0x3335,0x3333,0x3335,0x3333,0x3330,0x7333,
	0x3333,0x0733,0x3333,0x5573,0x3333,0x0063,0x3333,0x0057,
	0x6333,0x0000,0x0213,0x0000,0x5053,0x0000,0x5055,0x0000,
	0x0000,0x3372,0x0000,0x7505,0x0000,0x1000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3335,0x3333,
	0x3150,0x3333,0x0500,0x3337,0x0000,0x3335,0x0505,0x3320,
	0x0733,0x0000,0x0733,0x0000,0x0733,0x0000,0x0733,0x0000,
	0x0133,0x0000,0x0233,0x0000,0x0233,0x0000,0x0533,0x0000,
	0x3310,0x0333,0x3360,0x0633,0x3350,0x5023,0x3300,0x0005,
	0x6200,0x0550,0x0000,0x0000,0x0000,0x0000,0x0000,0x0050,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3312,0x2000,0x3333,0x3720,0x3333,0x3336,0x3333,

	0x0000,0x0000,0x5000,0x0000,0x0050,0x0550,0x0500,0x0000,
	0x6333,0x0005,0x3333,0x0067,0x3333,0x5333,0x3333,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0005,0x0000,0x0000,0x0050,0x0005,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x5000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x6000,0x0000,0x3100,0x0000,0x3320,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6500,0x2666,
	0x3315,0x3333,0x3337,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x0000,0x3500,0x0000,0x3500,0x0000,0x5000,0x0000,0x5000,
	0x0513,0x0005,0x2133,0x0000,0x3333,0x0002,0x3333,0x0053,
	0x0033,0x0005,0x5033,0x0000,0x0013,0x0000,0x0055,0x0000,
	0x0000,0x0000,0x0500,0x0000,0x0005,0x0000,0x0000,0x0000,
	0x0000,0x5000,0x0000,0x1000,0x0000,0x3500,0x0000,0x3500,
	0x0000,0x3700,0x0000,0x3350,0x0000,0x3320,0x0000,0x3320,
	0x3333,0x3333,0x3333,0x3333,0x1333,0x3333,0x5133,0x3336,
	0x0033,0x3320,0x0073,0x3350,0x0063,0x3300,0x0523,0x3350,

	0x0006,0x0000,0x0053,0x0000,0x0563,0x0005,0x0063,0x0000,
	0x0033,0x0000,0x0533,0x0000,0x0233,0x0000,0x5233,0x0000,
	0x0000,0x3315,0x0000,0x3332,0x0000,0x3333,0x0000,0x3333,
	0x2000,0x6333,0x6500,0x2333,0x3250,0x5333,0x3600,0x5333,
	0x3333,0x3333,0x3333,0x3333,0x3321,0x3333,0x3602,0x3333,
	0x3000,0x3333,0x1500,0x3333,0x6002,0x3333,0x1052,0x3333,
	0x3333,0x5523,0x3333,0x0533,0x3333,0x0733,0x3333,0x0333,
	0x3333,0x5333,0x3333,0x1333,0x3333,0x3333,0x3333,0x7333,

	0x0000,0x3365,0x0000,0x3350,0x0000,0x3305,0x0000,0x3200,
	0x0000,0x7000,0x0000,0x0050,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3337,0x3333,0x3332,0x3333,0x6550,0x3333,
	0x2713,0x3300,0x0533,0x3350,0x0033,0x3350,0x0633,0x3315,
	0x3333,0x3333,0x3333,0x7333,0x3333,0x2333,0x1333,0x0526,
	0x6333,0x0000,0x0533,0x0000,0x0233,0x0000,0x0033,0x0000,
	0x0023,0x0000,0x0005,0x0000,0x0050,0x5000,0x0000,0x5000,

	0x0000,0x5000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5000,0x0000,0x2250,0x0505,0x3315,0x0061,0x3336,0x0073,
	0x3120,0x2333,0x1500,0x1333,0x2000,0x3333,0x0500,0x3331,
	0x0000,0x3375,0x0000,0x3100,0x0000,0x2500,0x0000,0x0505,
	0x1016,0x3333,0x3002,0x3333,0x3556,0x3333,0x3313,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3336,0x3333,0x2500,0x6666,
	0x3333,0x1333,0x3333,0x2333,0x3333,0x5333,0x3333,0x0733,
	0x3333,0x0533,0x3333,0x5052,0x2133,0x0000,0x0005,0x0050,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0005,0x0000,0x0000,0x0000,0x0005,0x0000,
	0x0000,0x5550,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0055,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x6250,0x0000,0x5000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x6000,0x0000,0x4400,0x0000,0x4450,0x0000,0x4420,
	0x0000,0x0000,0x5000,0x0005,0x1650,0x0005,0x4420,0x0005,
	0x4444,0x0544,0x4444,0x5444,0x4444,0x2444,0x4444,0x6444,
	0x0000,0x4400,0x0000,0x5000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x4544,0x6444,0x2005,0x0644,0x0000,0x0555,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short loseScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0001,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0002,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0003,0x0004,0x0000,0x0000,0x0000,
	0x0000,0x0005,0x0006,0x0007,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0008,0x0009,0x000A,0x000B,0x0000,0x0000,
	0x0000,0x000C,0x000D,0x000E,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x000F,0x000D,0x0010,0x0011,0x0000,0x0000,
	0x0012,0x0013,0x000D,0x0014,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0015,0x0016,0x080B,0x0000,0x0000,
	0x0000,0x0017,0x0018,0x0019,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x001A,0x001B,0x001C,0x001D,0x0000,
	0x001E,0x001F,0x0020,0x0021,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0022,0x000D,0x0023,0x0024,0x0000,
	0x0025,0x0026,0x0027,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0028,0x0029,0x002A,0x002B,0x002C,
	0x002D,0x002E,0x002F,0x0030,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0031,0x0032,0x0000,0x0033,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0034,0x0035,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0036,0x0037,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short loseScreenPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x4A52,0x2108,0x7FFF,0x561D,0x0C63,0x35AD,0x6318,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(loseScreen)
