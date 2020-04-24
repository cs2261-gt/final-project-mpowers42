	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #5696
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r3, #0
	mov	r0, #256
	ldr	r1, .L4+20
	strh	r0, [r2]	@ movhi
	strh	r3, [r2, #16]	@ movhi
	pop	{r4, lr}
	str	r3, [r1]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startScreenPal
	.word	startScreenTiles
	.word	100720640
	.word	startScreenMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #7168
	mov	r2, #4352
	push	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Avoid the zombies and obstacles,\000"
	.align	2
.LC1:
	.ascii	"and help Cheeto escape the apocalypse!\000"
	.align	2
.LC2:
	.ascii	" Use RIGHT, UP, and DOWN to walk\000"
	.align	2
.LC3:
	.ascii	"Use A to shoot hairballs at zombies\000"
	.align	2
.LC4:
	.ascii	"Press START to pause and unpause\000"
	.align	2
.LC5:
	.ascii	"Press SELECT\000"
	.align	2
.LC6:
	.ascii	" to go back\000"
	.align	2
.LC7:
	.ascii	"Press START\000"
	.align	2
.LC8:
	.ascii	" to play\000"
	.text
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L16
	push	{r4, lr}
	ldr	r0, .L16+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L16+8
	ldr	r4, .L16+12
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #40
	mov	r0, #20
	ldr	r2, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #50
	mov	r0, #4
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L16+24
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #80
	mov	r0, #10
	ldr	r2, .L16+28
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L16+32
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #130
	mov	r0, #10
	ldr	r2, .L16+36
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #140
	mov	r0, #10
	ldr	r2, .L16+40
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #130
	mov	r0, #160
	ldr	r2, .L16+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L16+48
	mov	r1, #140
	mov	r0, #165
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L16+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	1027
	.word	grassBitmap
	.word	drawFullscreenImage3
	.word	drawString
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #23552
	mov	r5, #67108864
	ldr	r4, .L20
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L20+4
	mov	lr, pc
	bx	r4
	mov	r3, #128
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L20+12
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L20+28
	mov	r3, #16384
	ldr	r2, .L20+32
	mov	lr, pc
	bx	r4
	mov	r2, #4352
	ldr	r3, .L20+36
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+44
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L20+48
	ldr	r1, .L20+52
	ldr	r0, .L20+56
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L20+60
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	backgroundPal
	.word	backgroundTiles
	.word	100720640
	.word	backgroundMap
	.word	83886592
	.word	spritesheetPal
	.word	spritesheetTiles
	.word	100728832
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	playSoundA
	.word	1830816
	.word	gameSong
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L35
	ldrh	r2, [r5]
	tst	r2, #8
	bne	.L31
	ldr	r4, .L35+4
.L23:
	ldr	r3, [r4]
	tst	r2, #4
	add	r3, r3, #1
	str	r3, [r4]
	beq	.L22
	ldr	r3, .L35+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L34
.L22:
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	ldr	r3, .L35+8
	ldrh	r3, [r3]
	tst	r3, #8
	ldr	r4, .L35+4
	bne	.L23
	ldr	r3, .L35+12
	mov	lr, pc
	bx	r3
	ldr	r0, [r4]
	ldr	r3, .L35+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r2, [r5]
	b	.L23
.L34:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L36:
	.align	2
.L35:
	.word	oldButtons
	.word	seed
	.word	buttons
	.word	initGame
	.word	srand
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L49
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L38
	ldr	r2, .L49+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L47
.L38:
	tst	r3, #8
	beq	.L37
	ldr	r3, .L49+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L48
.L37:
	pop	{r4, lr}
	bx	lr
.L48:
	pop	{r4, lr}
	b	goToGame
.L47:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L38
.L50:
	.align	2
.L49:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #7168
	mov	r4, #67108864
	ldr	r5, .L53
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L53+4
	mov	lr, pc
	bx	r5
	mov	r3, #3152
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L53+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+12
	ldr	r1, .L53+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #3
	ldr	r3, .L53+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100720640
	.word	pauseScreenMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L68
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L56
	ldr	r2, .L68+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L67
.L56:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L67:
	push	{r4, lr}
	ldr	r3, .L68+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L69:
	.align	2
.L68:
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #7168
	mov	r4, #67108864
	ldr	r5, .L72
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L72+4
	mov	lr, pc
	bx	r5
	mov	r3, #4000
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L72+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L72+12
	ldr	r1, .L72+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #4
	ldr	r3, .L72+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100720640
	.word	winScreenMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L76
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L77:
	.align	2
.L76:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #7168
	mov	r4, #67108864
	ldr	r5, .L80
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L80+4
	mov	lr, pc
	bx	r5
	mov	r3, #3280
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L80+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L80+12
	ldr	r1, .L80+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #5
	ldr	r3, .L80+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100720640
	.word	loseScreenMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L93+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L93+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L93+20
	ldrh	r1, [r3]
	ldr	r3, .L93+24
	tst	r1, #8
	str	r2, [r3]
	beq	.L83
	ldr	r3, .L93+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L90
.L83:
	ldr	r3, .L93+32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L91
	ldr	r3, .L93+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L92
	pop	{r4, lr}
	bx	lr
.L91:
	ldr	r3, .L93+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin
.L92:
	ldr	r3, .L93+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L90:
	ldr	r3, .L93+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPause
.L94:
	.align	2
.L93:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	collided
	.word	buttons
	.word	zombiesRemaining
	.word	loseGame
	.word	stopSound
	.word	pauseSound
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r6, .L112
	push	{r4, r7, fp, lr}
	ldr	r3, .L112+4
	mov	lr, pc
	bx	r3
	ldr	r10, .L112+8
	ldr	r3, [r6]
	ldr	r9, .L112+12
	ldr	r8, .L112+16
	ldr	r7, .L112+20
	ldr	r4, .L112+24
	ldr	fp, .L112+28
	ldr	r5, .L112+32
.L106:
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L96
.L98:
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L99
	.word	.L97
.L100:
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
.L96:
	ldrh	r1, [fp]
	strh	r1, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	strh	r1, [fp]	@ movhi
	b	.L106
.L103:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L96
.L101:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L96
.L102:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L96
.L97:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L105
.L110:
	ldrh	r3, [fp]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L110
.L105:
	ldr	r3, .L112+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L96
.L99:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L104
.L111:
	ldrh	r3, [fp]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L111
.L104:
	ldr	r3, .L112+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L96
.L113:
	.align	2
.L112:
	.word	state
	.word	initialize
	.word	start
	.word	instructions
	.word	game
	.word	pause
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	collided,4,4
	.comm	loseGame,4,4
	.comm	state,4,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
