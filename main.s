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
	mov	r1, #23552
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L13
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L13+4
	mov	lr, pc
	bx	r4
	mov	r3, #128
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L13+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L13+12
	ldr	r1, .L13+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L13+20
	ldr	r1, .L13+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #16384
	ldr	r2, .L13+28
	ldr	r1, .L13+32
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #4352
	ldr	r3, .L13+36
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L13+44
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L13+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L14:
	.align	2
.L13:
	.word	DMANow
	.word	backgroundPal
	.word	backgroundTiles
	.word	100720640
	.word	backgroundMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	start.part.0, %function
start.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L20
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L20+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L21:
	.align	2
.L20:
	.word	buttons
	.word	initGame
	.size	start.part.0, .-start.part.0
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
	@ link register save eliminated.
	ldr	r3, .L24
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	start.part.0
.L25:
	.align	2
.L24:
	.word	oldButtons
	.size	start, .-start
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L28
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+4
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L28+12
	ldr	r1, .L28+16
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	ip, #256
	mov	r0, #0
	mov	r1, #2
	ldr	r2, .L28+20
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	pop	{r4, lr}
	str	r1, [r2]
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L31
	ldr	r2, .L40+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L39
.L31:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L40+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L39:
	b	goToGame
.L41:
	.align	2
.L40:
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L44
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+4
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L44+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L44+12
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	ip, #256
	mov	r0, #0
	mov	r1, #3
	ldr	r2, .L44+20
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	pop	{r4, lr}
	str	r1, [r2]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L48
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L49:
	.align	2
.L48:
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L52
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+4
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L52+12
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	ip, #256
	mov	r0, #0
	mov	r1, #4
	ldr	r2, .L52+20
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	pop	{r4, lr}
	str	r1, [r2]
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L68+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L55
	ldr	r2, .L68+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L65
.L55:
	ldr	r2, .L68+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L66
	tst	r3, #2
	beq	.L54
	ldr	r3, .L68+24
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L67
.L54:
	pop	{r4, lr}
	bx	lr
.L66:
	pop	{r4, lr}
	b	goToWin
.L65:
	pop	{r4, lr}
	b	goToPause
.L67:
	pop	{r4, lr}
	b	goToLose
.L69:
	.align	2
.L68:
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
	mov	r1, #23552
	mov	r2, #4352
	ldr	r5, .L89
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L89+4
	mov	lr, pc
	bx	r3
	ldr	r8, .L89+8
	ldr	r3, [r5]
	ldr	fp, .L89+12
	ldr	r10, .L89+16
	ldr	r7, .L89+20
	ldr	r6, .L89+24
	ldr	r9, .L89+28
	ldr	r4, .L89+32
.L81:
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L71
.L73:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L72
.L75:
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
.L71:
	ldrh	r2, [fp]
	strh	r2, [r8]	@ movhi
	ldrh	r2, [r4, #48]
	strh	r2, [fp]	@ movhi
	b	.L81
.L76:
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	b	.L71
.L77:
	ldrh	r3, [r8]
	tst	r3, #8
	bne	.L78
.L86:
	ldrh	r3, [fp]
	strh	r3, [r8]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r8]
	tst	r3, #8
	beq	.L86
.L78:
	mov	lr, pc
	bx	r10
	ldr	r3, [r5]
	b	.L71
.L72:
	ldrh	r3, [r8]
	tst	r3, #8
	bne	.L80
.L87:
	ldrh	r3, [fp]
	strh	r3, [r8]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r8]
	tst	r3, #8
	beq	.L87
.L80:
	ldr	r3, .L89+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	b	.L71
.L74:
	ldrh	r3, [r8]
	tst	r3, #8
	bne	.L79
.L88:
	ldrh	r3, [fp]
	strh	r3, [r8]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r8]
	tst	r3, #8
	beq	.L88
.L79:
	mov	lr, pc
	bx	r9
	ldr	r3, [r5]
	b	.L71
.L90:
	.align	2
.L89:
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	buttons
	.word	start.part.0
	.word	game
	.word	pause
	.word	win.part.0
	.word	67109120
	.word	lose.part.0
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
