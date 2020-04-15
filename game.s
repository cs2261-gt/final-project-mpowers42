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
	push	{r4, lr}
	mov	ip, #32
	mov	lr, #1
	mov	r4, #3
	mov	r0, #0
	ldr	r2, .L18
	ldr	r3, .L18+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L18+8
	add	r1, r1, #64
	add	r2, r2, #104
	str	r4, [r3, #40]
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #32]
	str	r0, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
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
	ldr	r9, .L24
	mov	r8, #240
	mov	r4, r9
	mov	r10, #1
	ldr	r7, .L24+4
	ldr	r6, .L24+8
	add	r5, r9, #140
.L21:
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
	bne	.L21
	str	r10, [r9, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L25:
	.align	2
.L24:
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
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r0, #64
	mov	r1, #1
	mov	r2, #32
	mov	lr, #104
	mov	ip, #28
	mov	r5, #3
	ldr	r3, .L30
	str	r4, [r3]
	ldr	r3, .L30+4
	str	r4, [r3]
	ldr	r3, .L30+8
	str	r4, [r3]
	ldr	r3, .L30+12
	str	r0, [r3, #8]
	ldr	r0, .L30+16
	str	lr, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	ip, [r0]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r5, [r3, #40]
	bl	initZombie
	mov	r2, r4
	mov	r1, #8
	mvn	lr, #7
	mov	ip, #2
	ldr	r3, .L30+20
	add	r0, r3, #140
.L27:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L27
	mov	r0, #5
	ldr	r1, .L30+24
	ldr	r3, .L30+28
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	vOff
	.word	hOff
	.word	playerHOff
	.word	cat
	.word	screenBlock
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
	ldr	r3, .L36
	add	r0, r3, #140
.L33:
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L33
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r5, .L47
	mov	r3, #0
	mov	r2, r5
.L43:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	beq	.L46
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bne	.L43
	pop	{r4, r5, r6, lr}
	bx	lr
.L46:
	mov	r1, #1
	rsb	r3, r3, r3, lsl #3
	add	r6, r5, r3, lsl #2
	str	r1, [r6, #24]
	ldr	r2, .L47+4
	lsl	r4, r3, #2
	mov	lr, pc
	bx	r2
	mov	r1, #240
	ldr	r3, .L47+8
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
.L48:
	.align	2
.L47:
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
	push	{r4, r5, lr}
	ldr	lr, .L61
	ldr	r3, [lr, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L61+4
	mov	r5, #512
	mov	r2, r0
	mov	r1, r0
	mov	r4, #4
	ldr	ip, [lr, #36]
	ldr	lr, [lr]
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L61+8
	lsl	ip, ip, #7
	strh	lr, [r0]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	add	ip, r3, #140
.L54:
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
	bne	.L54
	mov	r4, #512
	mov	lr, #6
	ldr	r3, .L61+12
	add	r0, r3, #140
.L57:
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
	bne	.L57
	pop	{r4, r5, lr}
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r0, .L64
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #36]
	ldr	r2, .L64+4
	ldr	r0, [r0]
	lsl	r1, r1, #7
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L65:
	.align	2
.L64:
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
	beq	.L67
	mov	ip, #4
	ldr	r3, [r0, #4]
	ldr	r2, .L73
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
.L67:
	mov	r2, #512
	ldr	r3, .L73
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L74:
	.align	2
.L73:
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
	beq	.L76
	mov	r2, #6
	ldr	r3, .L82
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
	.size	drawHairball, .-drawHairball
	.align	2
	.global	animateCat
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateCat, %function
animateCat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L87
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L87+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L85
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L85:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L88:
	.align	2
.L87:
	.word	cat
	.word	306783378
	.size	animateCat, .-animateCat
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
	ldr	r0, .L100
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L99
.L90:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L90
.L99:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #1
	ldr	r2, .L100+4
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
.L101:
	.align	2
.L100:
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
	ldr	ip, .L118+4
	ldr	r3, .L118+8
	tst	r2, #64
	push	{r4, r5, lr}
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #12]
	ldr	lr, [ip]
	bne	.L103
	ldr	r0, [r3, #16]
	sub	r0, r2, r0
	cmp	r0, #0
	ble	.L103
.L116:
	mov	r2, r0
	str	r0, [r3, #8]
.L104:
	ldr	ip, .L118+12
	ldr	r0, .L118+16
	ldr	ip, [ip]
	ldrh	r0, [r0]
	sub	r1, r1, lr
	sub	r2, r2, ip
	tst	r0, #1
	str	r1, [r3, #4]
	str	r2, [r3]
	beq	.L102
	ldr	r3, .L118+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L117
.L102:
	pop	{r4, r5, lr}
	bx	lr
.L103:
	ldr	r0, .L118
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L105
	ldr	r0, [r3, #16]
	add	r0, r2, r0
	cmp	r0, #143
	ble	.L116
.L105:
	ldr	r0, .L118
	ldrh	r0, [r0, #48]
	tst	r0, #16
	movne	r0, #1
	strne	r0, [r3, #36]
	bne	.L104
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
	addgt	lr, lr, #1
	strgt	r0, [r4]
	strgt	lr, [ip]
.L108:
	ldr	ip, [r3, #32]
	add	r0, ip, ip, lsl #3
	add	r0, r0, r0, lsl #6
	add	r0, ip, r0, lsl #3
	ldr	r4, .L118+40
	add	r0, r0, r0, lsl #15
	add	r0, ip, r0, lsl #3
	sub	r0, r4, r0
	cmp	r4, r0, ror #1
	bcc	.L109
	ldr	r0, [r3, #40]
	ldr	r4, [r3, #36]
	sub	r0, r0, #1
	cmp	r4, r0
	movge	r0, #0
	addlt	r4, r4, #1
	strlt	r4, [r3, #36]
	strge	r0, [r3, #36]
.L109:
	add	ip, ip, #1
	str	ip, [r3, #32]
	b	.L104
.L117:
	pop	{r4, r5, lr}
	b	fireHairball
.L119:
	.align	2
.L118:
	.word	67109120
	.word	playerHOff
	.word	cat
	.word	vOff
	.word	oldButtons
	.word	buttons
	.word	1022
	.word	screenBlock
	.word	hOff
	.word	782
	.word	306783378
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
	.comm	cat,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
