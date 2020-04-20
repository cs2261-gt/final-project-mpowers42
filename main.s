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
	mov	r3, #16
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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r1, #7168
	mov	r2, #4352
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
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
	ldr	r3, .L9
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L10:
	.align	2
.L9:
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
	mov	r2, #67108864
	ldr	r1, .L13
	push	{r4, lr}
	mov	r3, #256
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L13+4
	ldr	r4, .L13+8
	mov	lr, pc
	bx	r4
	mov	r0, #224
	ldr	r3, .L13+12
	mov	lr, pc
	bx	r3
	ldr	r0, .L13+16
	ldr	r3, .L13+20
	ldr	r4, .L13+24
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #40
	mov	r0, #20
	ldr	r2, .L13+28
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #50
	mov	r0, #4
	ldr	r2, .L13+32
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L13+36
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #80
	mov	r0, #10
	ldr	r2, .L13+40
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L13+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #130
	mov	r0, #10
	ldr	r2, .L13+48
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #140
	mov	r0, #10
	ldr	r2, .L13+52
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #130
	mov	r0, #160
	ldr	r2, .L13+56
	mov	lr, pc
	bx	r4
	ldr	r2, .L13+60
	mov	r1, #140
	mov	r0, #165
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+68
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L13+72
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L14:
	.align	2
.L13:
	.word	1044
	.word	grassPal
	.word	DMANow
	.word	fillScreen4
	.word	grassBitmap
	.word	drawFullscreenImage4
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
	.word	waitForVBlank
	.word	flipPage
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
	ldr	r4, .L17
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L17+4
	mov	lr, pc
	bx	r4
	mov	r3, #128
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L17+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L17+12
	ldr	r1, .L17+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L17+20
	ldr	r1, .L17+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L17+28
	mov	r3, #16384
	ldr	r2, .L17+32
	mov	lr, pc
	bx	r4
	mov	r2, #4352
	ldr	r3, .L17+36
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L17+44
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L17+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L18:
	.align	2
.L17:
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
	push	{r4, lr}
	ldr	r4, .L31
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L20
	ldr	r2, .L31+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L29
.L20:
	tst	r3, #4
	beq	.L19
	ldr	r3, .L31+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L30
.L19:
	pop	{r4, lr}
	bx	lr
.L30:
	pop	{r4, lr}
	b	goToInstructions
.L29:
	ldr	r3, .L31+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L20
.L32:
	.align	2
.L31:
	.word	oldButtons
	.word	buttons
	.word	initGame
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
	ldr	r4, .L45
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L34
	ldr	r2, .L45+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L43
.L34:
	tst	r3, #8
	beq	.L33
	ldr	r3, .L45+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L44
.L33:
	pop	{r4, lr}
	bx	lr
.L44:
	pop	{r4, lr}
	b	goToGame
.L43:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L34
.L46:
	.align	2
.L45:
	.word	oldButtons
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
	ldr	r5, .L49
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L49+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+12
	ldr	r1, .L49+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #3
	ldr	r3, .L49+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
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
	@ link register save eliminated.
	ldr	r3, .L61
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L52
	ldr	r2, .L61+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L60
.L52:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L61+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L60:
	b	goToGame
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	buttons
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
	ldr	r5, .L65
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L65+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+12
	ldr	r1, .L65+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #4
	ldr	r3, .L65+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r3, .L69
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L70:
	.align	2
.L69:
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
	ldr	r5, .L73
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L73+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L73+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L73+12
	ldr	r1, .L73+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #5
	ldr	r3, .L73+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L89+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L89+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
	ldr	r2, .L89+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L86
.L76:
	ldr	r2, .L89+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L87
	tst	r3, #2
	beq	.L75
	ldr	r3, .L89+24
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L88
.L75:
	pop	{r4, lr}
	bx	lr
.L87:
	pop	{r4, lr}
	b	goToWin
.L86:
	pop	{r4, lr}
	b	goToPause
.L88:
	pop	{r4, lr}
	b	goToLose
.L90:
	.align	2
.L89:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	zombiesRemaining
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
	mov	r3, #67108864
	mov	r1, #7168
	mov	r2, #4352
	ldr	r6, .L108
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r10, .L108+8
	ldr	r3, [r6]
	ldr	r9, .L108+12
	ldr	r8, .L108+16
	ldr	r7, .L108+20
	ldr	r4, .L108+24
	ldr	fp, .L108+28
	ldr	r5, .L108+32
.L102:
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L92
.L94:
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L95
	.word	.L93
.L96:
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
.L92:
	ldrh	r1, [fp]
	strh	r1, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	strh	r1, [fp]	@ movhi
	b	.L102
.L99:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L92
.L97:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L92
.L98:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L92
.L93:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L101
.L106:
	ldrh	r3, [fp]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L106
.L101:
	ldr	r3, .L108+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L92
.L95:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L100
.L107:
	ldrh	r3, [fp]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L107
.L100:
	ldr	r3, .L108+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L92
.L109:
	.align	2
.L108:
	.word	state
	.word	goToStart
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
	.comm	state,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
