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
	ldr	r3, [r0, #4]
	mov	r4, r0
	ldr	r0, [r0, #12]
	sub	r0, r3, r0
	cmp	r0, #0
	movlt	r3, #0
	mov	r9, #0
	ldr	r5, .L21
	str	r0, [r4, #4]
	strlt	r3, [r4, #24]
	ldr	r7, .L21+4
	ldr	r8, .L21+8
	sub	sp, sp, #20
	add	r6, r5, #140
.L4:
	ldr	r1, [r5, #20]
	ldm	r5, {r2, r3}
	ldr	ip, [r5, #16]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r5, #24]
	subne	r3, r3, #1
	add	r5, r5, #28
	strne	r3, [r8]
	strne	r9, [r4, #24]
	cmp	r5, r6
	ldr	r0, [r4, #4]
	bne	.L4
	mov	r6, #5
	ldr	r5, .L21+12
	ldr	r8, .L21+16
.L7:
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #28]
	ldr	ip, [r5, #24]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L5
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L20
.L5:
	subs	r6, r6, #1
	ldrne	r0, [r4, #4]
	bne	.L7
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L20:
	mov	lr, pc
	bx	r8
	b	.L5
.L22:
	.align	2
.L21:
	.word	hairball
	.word	collision
	.word	zombiesRemaining
	.word	cat
	.word	goToLose
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
	ble	.L24
	ldr	r3, [r0, #8]
	add	r2, r2, r3
	cmp	r2, #158
	bgt	.L24
	ldr	r3, [r0, #4]
	ldr	r1, [r0, #12]
	add	r3, r3, r1
	cmp	r3, #239
	bgt	.L24
	stm	r0, {r2, r3}
	bx	lr
.L24:
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
	ldr	r2, .L27
	ldr	r3, .L27+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L27+8
	add	r1, r1, #64
	add	r2, r2, #104
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r9, .L33
	mov	r8, #240
	mov	r4, r9
	mov	r10, #1
	ldr	r7, .L33+4
	ldr	r6, .L33+8
	add	r5, r9, #140
.L30:
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
	bne	.L30
	str	r10, [r9, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L34:
	.align	2
.L33:
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
	ldr	r3, .L39
	str	r4, [r3]
	ldr	r3, .L39+4
	str	r4, [r3]
	ldr	r3, .L39+8
	str	r4, [r3]
	ldr	r3, .L39+12
	str	lr, [r3]
	ldr	r3, .L39+16
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
	ldr	r3, .L39+20
	add	r0, r3, #140
.L36:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L36
	mov	r0, #5
	ldr	r1, .L39+24
	ldr	r3, .L39+28
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r3, .L45
	add	r0, r3, #140
.L42:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L42
	ldr	lr, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r5, .L56
	mov	r3, #0
	mov	r2, r5
.L52:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	beq	.L55
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bne	.L52
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	mov	r1, #1
	rsb	r3, r3, r3, lsl #3
	add	r6, r5, r3, lsl #2
	str	r1, [r6, #24]
	ldr	r2, .L56+4
	lsl	r4, r3, #2
	mov	lr, pc
	bx	r2
	mov	r1, #240
	ldr	r3, .L56+8
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
.L57:
	.align	2
.L56:
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
	ldr	ip, .L70
	ldr	r3, [ip, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	push	{r4, r5, lr}
	ldr	r0, .L70+4
	mov	lr, #0
	mov	r2, r0
	mov	r1, r0
	mov	r5, #512
	mov	r4, #4
	ldr	ip, [ip]
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L70+8
	strh	lr, [r0, #4]	@ movhi
	strh	ip, [r0]	@ movhi
	add	ip, r3, #140
.L63:
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
	bne	.L63
	mov	r4, #512
	mov	lr, #6
	ldr	r3, .L70+12
	add	r0, r3, #140
.L66:
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
	bne	.L66
	pop	{r4, r5, lr}
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r2, .L73
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	mov	r1, #0
	mvn	r3, r3, lsr #17
	ldr	r0, [r2]
	ldr	r2, .L73+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L74:
	.align	2
.L73:
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
	beq	.L76
	mov	ip, #4
	ldr	r3, [r0, #4]
	ldr	r2, .L82
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
.L76:
	mov	r2, #512
	ldr	r3, .L82
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L83:
	.align	2
.L82:
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
	beq	.L85
	mov	r2, #6
	ldr	r3, .L91
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
.L85:
	mov	r2, #512
	ldr	r3, .L91
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r0, .L104
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L103
.L94:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L94
.L103:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #1
	ldr	r2, .L104+4
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
.L105:
	.align	2
.L104:
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
	ldr	r3, .L118
	ldrh	r2, [r3, #48]
	push	{r4, r5, lr}
	ldr	r3, .L118+4
	ldr	lr, .L118+8
	tst	r2, #64
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	ldr	ip, [lr]
	bne	.L107
	ldr	r0, [r3, #16]
	sub	r0, r2, r0
	cmp	r0, #0
	ble	.L107
.L116:
	mov	r2, r0
	str	r0, [r3, #8]
.L108:
	ldr	lr, .L118+12
	ldr	r0, .L118+16
	ldr	lr, [lr]
	ldrh	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, lr
	tst	r0, #1
	str	r1, [r3, #4]
	str	r2, [r3]
	beq	.L106
	ldr	r3, .L118+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L117
.L106:
	pop	{r4, r5, lr}
	bx	lr
.L107:
	ldr	r0, .L118
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L109
	ldr	r0, [r3, #16]
	add	r0, r2, r0
	cmp	r0, #143
	ble	.L116
.L109:
	ldr	r0, .L118
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L108
	ldr	r0, [r3, #28]
	ldr	r4, .L118+24
	add	r0, r1, r0
	cmp	r0, r4
	ldr	r0, .L118+28
	ldr	r0, [r0]
	addle	r1, r1, #1
	strle	r1, [r3, #12]
	cmp	r0, #30
	bgt	.L108
	ldr	r4, .L118+32
	ldr	r5, .L118+36
	ldr	r0, [r4]
	cmp	r0, r5
	bgt	.L108
	ldr	r5, [r3, #4]
	cmp	r5, #80
	addgt	r0, r0, #1
	addgt	ip, ip, #1
	strgt	r0, [r4]
	strgt	ip, [lr]
	b	.L108
.L117:
	pop	{r4, r5, lr}
	b	fireHairball
.L119:
	.align	2
.L118:
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
	ldr	r6, .L138
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L121
	mov	ip, #67108864
	ldr	r0, .L138+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L121:
	ldr	r2, .L138+8
	ldr	r3, [r2]
	ldr	r1, .L138+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, [r1]
	ldr	r0, .L138+16
	ldr	r2, .L138+20
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L138+24
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L137
.L123:
	bl	updateCat
	ldr	r4, .L138+28
	add	r5, r4, #140
.L125:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L124:
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L125
	ldr	r0, .L138+32
	add	r4, r0, #140
.L127:
	ldr	r3, [r0, #24]
	cmp	r3, #0
	blne	updateHairball.part.0
.L126:
	add	r0, r0, #28
	cmp	r0, r4
	bne	.L127
	mov	r3, #67108864
	ldr	r2, .L138+36
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L137:
	bl	fireZombie
	b	.L123
.L139:
	.align	2
.L138:
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
