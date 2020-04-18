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
	.type	instructions.part.0, %function
instructions.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L10:
	.align	2
.L9:
	.word	buttons
	.size	instructions.part.0, .-instructions.part.0
	.set	pause.part.0,instructions.part.0
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
	ldr	r3, .L13
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L14:
	.align	2
.L13:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
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
	push	{r4, r5, r6, lr}
	mov	r2, #7168
	mov	r4, #67108864
	ldr	r5, .L17
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L17+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L17+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L17+12
	ldr	r1, .L17+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L17+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100720640
	.word	winScreenMap
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	@ link register save eliminated.
	ldr	r3, .L21
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	instructions.part.0
.L22:
	.align	2
.L21:
	.word	oldButtons
	.size	instructions, .-instructions
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
	ldr	r4, .L25
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L25+4
	mov	lr, pc
	bx	r4
	mov	r3, #128
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L25+12
	ldr	r1, .L25+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L25+20
	ldr	r1, .L25+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L25+28
	mov	r3, #16384
	ldr	r2, .L25+32
	mov	lr, pc
	bx	r4
	mov	r2, #4352
	ldr	r3, .L25+36
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L25+44
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L25+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r4, .L39
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L28
	ldr	r2, .L39+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L37
.L28:
	tst	r3, #4
	beq	.L27
	ldr	r3, .L39+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L38
.L27:
	pop	{r4, lr}
	bx	lr
.L38:
	pop	{r4, lr}
	b	goToInstructions
.L37:
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L28
.L40:
	.align	2
.L39:
	.word	oldButtons
	.word	buttons
	.word	initGame
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
	push	{r4, r5, r6, lr}
	mov	r2, #7168
	mov	r4, #67108864
	ldr	r5, .L43
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L43+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L43+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L43+12
	ldr	r1, .L43+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #3
	ldr	r3, .L43+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	.align	2
.L43:
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
	ldr	r3, .L52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
	ldr	r2, .L52+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L51
.L46:
	tst	r3, #4
	bxeq	lr
	b	pause.part.0
.L51:
	b	goToGame
.L53:
	.align	2
.L52:
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
	ldr	r5, .L56
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L56+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L56+12
	ldr	r1, .L56+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #4
	ldr	r3, .L56+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L60
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L61:
	.align	2
.L60:
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
	ldr	r5, .L64
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+4
	mov	lr, pc
	bx	r5
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L64+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L64+12
	ldr	r1, .L64+16
	mov	lr, pc
	bx	r5
	mov	r0, #256
	mov	r1, #0
	mov	r2, #5
	ldr	r3, .L64+20
	strh	r0, [r4]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L80+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L80+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
	ldr	r2, .L80+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L77
.L67:
	ldr	r2, .L80+28
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L78
	tst	r3, #2
	beq	.L66
	ldr	r3, .L80+24
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L79
.L66:
	pop	{r4, lr}
	bx	lr
.L78:
	pop	{r4, lr}
	b	goToWin
.L77:
	pop	{r4, lr}
	b	goToPause
.L79:
	pop	{r4, lr}
	b	goToLose
.L81:
	.align	2
.L80:
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
	ldr	r5, .L102
	push	{r4, r7, fp, lr}
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L102+4
	mov	lr, pc
	bx	r3
	ldr	r8, .L102+8
	ldr	r3, [r5]
	ldr	r10, .L102+12
	ldr	r9, .L102+16
	ldr	fp, .L102+20
	ldr	r7, .L102+24
	ldr	r6, .L102+28
	ldr	r4, .L102+32
.L94:
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L83
.L85:
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L84
.L87:
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
.L83:
	ldrh	r0, [r9]
	strh	r0, [r10]	@ movhi
	ldrh	r0, [r4, #48]
	strh	r0, [r9]	@ movhi
	b	.L94
.L90:
	mov	lr, pc
	bx	r8
	ldr	r3, [r5]
	b	.L83
.L88:
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	b	.L83
.L89:
	ldrh	r3, [r10]
	tst	r3, #4
	bne	.L91
.L99:
	ldrh	r3, [r9]
	strh	r3, [r10]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r10]
	tst	r3, #4
	beq	.L99
.L91:
	mov	lr, pc
	bx	fp
	ldr	r3, [r5]
	b	.L83
.L84:
	ldrh	r3, [r10]
	tst	r3, #8
	bne	.L93
.L100:
	ldrh	r3, [r9]
	strh	r3, [r10]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r10]
	tst	r3, #8
	beq	.L100
.L93:
	ldr	r3, .L102+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	b	.L83
.L86:
	ldrh	r3, [r10]
	tst	r3, #8
	bne	.L92
.L101:
	ldrh	r3, [r9]
	strh	r3, [r10]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r10]
	tst	r3, #8
	beq	.L101
.L92:
	ldr	r3, .L102+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	b	.L83
.L103:
	.align	2
.L102:
	.word	state
	.word	goToStart
	.word	start
	.word	oldButtons
	.word	buttons
	.word	instructions.part.0
	.word	game
	.word	pause
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
