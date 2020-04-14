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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateZombie.part.0, %function
updateZombie.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	ldr	r0, [r0, #4]
	ldr	r3, [r5, #12]
	sub	r0, r0, r3
	cmp	r0, #0
	movlt	r3, #0
	mov	r9, #0
	ldr	r4, .L11
	str	r0, [r5, #4]
	strlt	r3, [r5, #24]
	ldr	r7, .L11+4
	ldr	r8, .L11+8
	sub	sp, sp, #20
	add	r6, r4, #140
.L5:
	ldm	r4, {r2, r3}
	ldr	r1, [r4, #20]
	ldr	ip, [r4, #16]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r1, [r5]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #24]
	subne	r3, r3, #1
	add	r4, r4, #28
	strne	r3, [r8]
	strne	r9, [r5, #24]
	cmp	r4, r6
	ldrne	r0, [r5, #4]
	bne	.L5
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	hairball
	.word	collision
	.word	zombiesRemaining
	.size	updateZombie.part.0, .-updateZombie.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHairball.part.0, %function
updateHairball.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	ldr	r3, [r0, #16]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L14
	ldr	r3, [r0, #8]
	add	r2, r2, r3
	cmp	r2, #158
	bgt	.L14
	ldr	r3, [r0, #4]
	ldr	r1, [r0, #12]
	add	r3, r3, r1
	cmp	r3, #239
	bgt	.L14
	stm	r0, {r2, r3}
	bx	lr
.L14:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
	.size	updateHairball.part.0, .-updateHairball.part.0
	.align	2
	.global	initCat
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCat, %function
initCat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #1
	mov	r0, #32
	ldr	r2, .L17
	ldr	r3, .L17+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L17+8
	add	r1, r1, #64
	add	r2, r2, #104
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	bx	lr
.L18:
	.align	2
.L17:
	.word	vOff
	.word	hOff
	.word	cat
	.size	initCat, .-initCat
	.align	2
	.global	initZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	initZombie, %function
initZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, .L23
	mov	r8, #240
	mov	r4, r9
	mov	r10, #1
	ldr	r7, .L23+4
	ldr	r6, .L23+8
	add	r5, r9, #140
.L20:
	mov	lr, pc
	bx	r7
	mov	r2, #16
	mov	r1, #0
	smull	r3, ip, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #2
	rsb	ip, r3, r3, lsl #3
	rsb	r3, r3, ip, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r10, [r4, #12]
	str	r3, [r4]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r1, [r4, #24]
	stmib	r4, {r8, r10}
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L20
	str	r10, [r9, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	zombie
	.word	rand
	.word	156180629
	.size	initZombie, .-initZombie
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	mov	lr, #28
	mov	r1, #1
	mov	r2, #32
	mov	ip, #64
	mov	r0, #104
	ldr	r3, .L29
	str	r4, [r3]
	ldr	r3, .L29+4
	str	r4, [r3]
	ldr	r3, .L29+8
	str	r4, [r3]
	ldr	r3, .L29+12
	str	lr, [r3]
	ldr	r3, .L29+16
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	bl	initZombie
	mov	r2, r4
	mov	r1, #8
	mvn	lr, #7
	mov	ip, #2
	ldr	r3, .L29+20
	add	r0, r3, #140
.L26:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L26
	mov	r0, #5
	ldr	r1, .L29+24
	ldr	r3, .L29+28
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	vOff
	.word	hOff
	.word	playerHOff
	.word	screenBlock
	.word	cat
	.word	hairball
	.word	zombiesRemaining
	.word	zombieTimer
	.size	initGame, .-initGame
	.align	2
	.global	initHairball
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHairball, %function
initHairball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #8
	mvn	lr, #7
	mov	r2, #0
	mov	ip, #2
	ldr	r3, .L35
	add	r0, r3, #140
.L32:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L32
	ldr	lr, [sp], #4
	bx	lr
.L36:
	.align	2
.L35:
	.word	hairball
	.size	initHairball, .-initHairball
	.align	2
	.global	updateZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateZombie, %function
updateZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateZombie.part.0
	.size	updateZombie, .-updateZombie
	.align	2
	.global	fireZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireZombie, %function
fireZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L46
	mov	r3, #0
	mov	r2, r5
.L42:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	beq	.L45
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bne	.L42
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	mov	r1, #1
	rsb	r3, r3, r3, lsl #3
	add	r6, r5, r3, lsl #2
	str	r1, [r6, #24]
	ldr	r2, .L46+4
	lsl	r4, r3, #2
	mov	lr, pc
	bx	r2
	mov	r1, #240
	ldr	r3, .L46+8
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #1
	str	r0, [r5, r4]
	str	r1, [r6, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	zombie
	.word	rand
	.word	156180629
	.size	fireZombie, .-fireZombie
	.align	2
	.global	updateHairball
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHairball, %function
updateHairball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateHairball.part.0
	.size	updateHairball, .-updateHairball
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L60
	ldr	r3, [ip, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	push	{r4, r5, lr}
	ldr	r0, .L60+4
	mov	lr, #0
	mov	r2, r0
	mov	r1, r0
	mov	r5, #512
	mov	r4, #4
	ldr	ip, [ip]
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L60+8
	strh	lr, [r0, #4]	@ movhi
	strh	ip, [r0]	@ movhi
	add	ip, r3, #140
.L53:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	ldrne	lr, [r3]
	orrne	r0, r0, #16384
	add	r3, r3, #28
	strhne	r4, [r1, #12]	@ movhi
	strhne	r0, [r1, #10]	@ movhi
	strhne	lr, [r1, #8]	@ movhi
	strheq	r5, [r1, #8]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L53
	mov	r4, #512
	mov	lr, #6
	ldr	r3, .L60+12
	add	r0, r3, #140
.L56:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #28
	strhne	lr, [r2, #20]	@ movhi
	strhne	ip, [r2, #16]	@ movhi
	strhne	r1, [r2, #18]	@ movhi
	strheq	r4, [r2, #16]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L56
	pop	{r4, r5, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	cat
	.word	shadowOAM
	.word	zombie
	.word	hairball
	.size	drawGame, .-drawGame
	.align	2
	.global	drawCat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCat, %function
drawCat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L63
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #0
	mvn	r3, r3, lsr #17
	ldr	r0, [r2]
	ldr	r2, .L63+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L64:
	.align	2
.L63:
	.word	cat
	.word	shadowOAM
	.size	drawCat, .-drawCat
	.align	2
	.global	drawZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawZombie, %function
drawZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L66
	mov	ip, #4
	ldr	r3, [r0, #4]
	ldr	r2, .L72
	str	lr, [sp, #-4]!
	ldr	lr, [r0]
	orr	r3, r3, #16384
	lsl	r0, r1, #3
	add	r1, r2, r1, lsl #3
	strh	lr, [r2, r0]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L66:
	mov	r2, #512
	ldr	r3, .L72
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L73:
	.align	2
.L72:
	.word	shadowOAM
	.size	drawZombie, .-drawZombie
	.align	2
	.global	drawHairball
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHairball, %function
drawHairball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L75
	mov	r2, #6
	ldr	r3, .L81
	str	lr, [sp, #-4]!
	ldr	lr, [r0]
	ldr	r0, [r0, #4]
	lsl	ip, r1, #3
	add	r1, r3, r1, lsl #3
	strh	lr, [r3, ip]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L75:
	mov	r2, #512
	ldr	r3, .L81
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L82:
	.align	2
.L81:
	.word	shadowOAM
	.size	drawHairball, .-drawHairball
	.align	2
	.global	fireHairball
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireHairball, %function
fireHairball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L94
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L93
.L84:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L84
.L93:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #1
	ldr	r2, .L94+4
	rsb	r3, r3, r3, lsl #3
	add	ip, r0, r3, lsl #2
	ldr	r6, [r2, #24]
	ldr	r5, [r2, #28]
	ldr	lr, [ip, #16]
	add	r7, r6, r6, lsr #31
	ldr	r1, [r2]
	add	r6, r5, r5, lsr #31
	ldr	r2, [r2, #4]
	add	r5, lr, lr, lsr #31
	ldr	lr, [ip, #20]
	add	r1, r1, r7, asr r4
	add	r2, r2, r6, asr r4
	add	lr, lr, lr, lsr #31
	sub	r1, r1, r5, asr r4
	sub	r2, r2, lr, asr r4
	str	r4, [ip, #24]
	str	r1, [r0, r3, lsl #2]
	str	r2, [ip, #4]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	hairball
	.word	cat
	.size	fireHairball, .-fireHairball
	.align	2
	.global	updateCat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCat, %function
updateCat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L108
	ldrh	r2, [r3, #48]
	push	{r4, r5, lr}
	ldr	r3, .L108+4
	ldr	lr, .L108+8
	tst	r2, #64
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	ldr	ip, [lr]
	bne	.L97
	ldr	r0, [r3, #16]
	sub	r0, r2, r0
	cmp	r0, #0
	ble	.L97
.L106:
	mov	r2, r0
	str	r0, [r3, #8]
.L98:
	ldr	lr, .L108+12
	ldr	r0, .L108+16
	ldr	lr, [lr]
	ldrh	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, lr
	tst	r0, #1
	str	r1, [r3, #4]
	str	r2, [r3]
	beq	.L96
	ldr	r3, .L108+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L107
.L96:
	pop	{r4, r5, lr}
	bx	lr
.L97:
	ldr	r0, .L108
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L99
	ldr	r0, [r3, #16]
	add	r0, r2, r0
	cmp	r0, #143
	ble	.L106
.L99:
	ldr	r0, .L108
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L98
	ldr	r0, [r3, #28]
	ldr	r4, .L108+24
	add	r0, r1, r0
	cmp	r0, r4
	ldr	r0, .L108+28
	ldr	r0, [r0]
	addle	r1, r1, #1
	strle	r1, [r3, #12]
	cmp	r0, #30
	bgt	.L98
	ldr	r4, .L108+32
	ldr	r5, .L108+36
	ldr	r0, [r4]
	cmp	r0, r5
	bgt	.L98
	ldr	r5, [r3, #4]
	cmp	r5, #80
	addgt	r0, r0, #1
	addgt	ip, ip, #1
	strgt	r0, [r4]
	strgt	ip, [lr]
	b	.L98
.L107:
	pop	{r4, r5, lr}
	b	fireHairball
.L109:
	.align	2
.L108:
	.word	67109120
	.word	cat
	.word	playerHOff
	.word	vOff
	.word	oldButtons
	.word	buttons
	.word	1022
	.word	screenBlock
	.word	hOff
	.word	782
	.size	updateCat, .-updateCat
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L128
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L111
	mov	ip, #67108864
	ldr	r0, .L128+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L111:
	ldr	r2, .L128+8
	ldr	r3, [r2]
	ldr	r1, .L128+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, [r1]
	ldr	r0, .L128+16
	ldr	r2, .L128+20
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L128+24
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L127
.L113:
	bl	updateCat
	ldr	r4, .L128+28
	add	r5, r4, #140
.L115:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L114:
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L115
	ldr	r0, .L128+32
	add	r4, r0, #140
.L117:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateHairball.part.0
.L116:
	add	r0, r0, #28
	cmp	r0, r4
	bne	.L117
	mov	r3, #67108864
	ldr	r2, .L128+36
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L127:
	bl	fireZombie
	b	.L113
.L129:
	.align	2
.L128:
	.word	hOff
	.word	screenBlock
	.word	playerHOff
	.word	zombieTimer
	.word	85899344
	.word	-1030792151
	.word	42949672
	.word	zombie
	.word	hairball
	.word	vOff
	.size	updateGame, .-updateGame
	.comm	screenBlock,4,4
	.comm	playerHOff,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	zombieTimer,4,4
	.comm	zombiesRemaining,4,4
	.comm	hairball,140,4
	.comm	zombie,140,4
	.comm	cat,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
