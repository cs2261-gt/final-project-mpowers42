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
	mov	r3, #3120
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
	.ascii	"Instructions\000"
	.align	2
.LC1:
	.ascii	"Avoid the zombies and obstacles,\000"
	.align	2
.LC2:
	.ascii	"and help Cheeto escape the apocalypse!\000"
	.align	2
.LC3:
	.ascii	" Use RIGHT, UP, and DOWN to walk\000"
	.align	2
.LC4:
	.ascii	"Use A to shoot hairballs at zombies\000"
	.align	2
.LC5:
	.ascii	"Press START to pause and unpause\000"
	.align	2
.LC6:
	.ascii	"Press SELECT\000"
	.align	2
.LC7:
	.ascii	" to go back\000"
	.align	2
.LC8:
	.ascii	"Press START\000"
	.align	2
.LC9:
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
	mov	r1, #20
	mov	r0, #80
	ldr	r2, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #40
	mov	r0, #20
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #50
	mov	r0, #4
	ldr	r2, .L16+24
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L16+28
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #80
	mov	r0, #10
	ldr	r2, .L16+32
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L16+36
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #130
	mov	r0, #10
	ldr	r2, .L16+40
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #140
	mov	r0, #10
	ldr	r2, .L16+44
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #130
	mov	r0, #160
	ldr	r2, .L16+48
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L16+52
	mov	r1, #140
	mov	r0, #165
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L16+56
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
	.word	.LC9
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
	push	{r4, lr}
	ldr	r4, .L34
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L23
	ldr	r2, .L34+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L32
.L23:
	tst	r3, #4
	beq	.L22
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L33
.L22:
	pop	{r4, lr}
	bx	lr
.L33:
	pop	{r4, lr}
	b	goToInstructions
.L32:
	ldr	r3, .L34+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L23
.L35:
	.align	2
.L34:
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
	ldr	r4, .L48
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L37
	ldr	r2, .L48+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L46
.L37:
	tst	r3, #8
	beq	.L36
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L47
.L36:
	pop	{r4, lr}
	bx	lr
.L47:
	pop	{r4, lr}
	b	goToGame
.L46:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L37
.L49:
	.align	2
.L48:
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
	ldr	r5, .L52
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+4
	mov	lr, pc
	bx	r5
	mov	r3, #2528
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L52+12
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #3
	ldr	r3, .L52+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L67
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L55
	ldr	r2, .L67+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L66
.L55:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L67+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L66:
	push	{r4, lr}
	ldr	r3, .L67+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L68:
	.align	2
.L67:
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
	ldr	r5, .L71
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L71+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L71+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L71+12
	ldr	r1, .L71+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #4
	ldr	r3, .L71+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
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
	ldr	r3, .L75
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L76:
	.align	2
.L75:
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
	ldr	r5, .L79
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L79+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L79+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+12
	ldr	r1, .L79+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #5
	ldr	r3, .L79+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r3, .L95
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L95+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L95+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
	ldr	r2, .L95+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L92
.L82:
	ldr	r2, .L95+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L93
	tst	r3, #2
	beq	.L81
	ldr	r3, .L95+24
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L94
.L81:
	pop	{r4, lr}
	bx	lr
.L93:
	ldr	r3, .L95+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToWin
.L92:
	ldr	r3, .L95+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPause
.L94:
	ldr	r3, .L95+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L96:
	.align	2
.L95:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	zombiesRemaining
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
	ldr	r6, .L114
	push	{r4, r7, fp, lr}
	ldr	r3, .L114+4
	mov	lr, pc
	bx	r3
	ldr	r10, .L114+8
	ldr	r3, [r6]
	ldr	r9, .L114+12
	ldr	r8, .L114+16
	ldr	r7, .L114+20
	ldr	r4, .L114+24
	ldr	fp, .L114+28
	ldr	r5, .L114+32
.L108:
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L98
.L100:
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L99
.L102:
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
.L98:
	ldrh	r1, [fp]
	strh	r1, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	strh	r1, [fp]	@ movhi
	b	.L108
.L105:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L98
.L103:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L98
.L104:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L98
.L99:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L107
.L112:
	ldrh	r3, [fp]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L112
.L107:
	ldr	r3, .L114+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L98
.L101:
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L106
.L113:
	ldrh	r3, [fp]
	strh	r3, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L113
.L106:
	ldr	r3, .L114+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	b	.L98
.L115:
	.align	2
.L114:
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
	.comm	state,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
