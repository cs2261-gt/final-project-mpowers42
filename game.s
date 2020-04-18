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
	mov	r5, r0
	ldr	r0, [r0, #12]
	sub	r0, r3, r0
	cmp	r0, #0
	movlt	r3, #0
	mov	r9, #0
	ldr	r4, .L19
	str	r0, [r5, #4]
	strlt	r3, [r5, #24]
	ldr	r6, .L19+4
	ldr	r8, .L19+8
	sub	sp, sp, #20
	add	r7, r4, #180
.L4:
	ldm	r4, {r2, r3}
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #24]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r1, [r5]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #32]
	subne	r3, r3, #1
	add	r4, r4, #36
	strne	r3, [r8]
	strne	r9, [r5, #24]
	cmp	r4, r7
	ldr	r0, [r5, #4]
	bne	.L4
	ldr	r3, .L19+12
	ldr	r1, [r3]
	ldr	lr, [r3, #24]
	ldr	ip, [r3, #28]
	ldr	r2, [r3, #4]
	stmib	sp, {r1, ip, lr}
	sub	r3, r2, #5
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r1, [r5]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L1
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L18
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L18:
	ldr	r3, .L19+16
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	hairball
	.word	collision
	.word	zombiesRemaining
	.word	cat
	.word	goToLose
	.size	updateZombie.part.0, .-updateZombie.part.0
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
	ldr	r2, .L23
	ldr	r3, .L23+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L23+8
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
.L24:
	.align	2
.L23:
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
	ldr	r9, .L29
	mov	r8, #240
	mov	r4, r9
	mov	r10, #1
	ldr	r7, .L29+4
	ldr	r6, .L29+8
	add	r5, r9, #140
.L26:
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
	bne	.L26
	str	r10, [r9, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L30:
	.align	2
.L29:
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
	mov	r0, #104
	mov	r1, #1
	mov	r2, #32
	mov	ip, #28
	mov	lr, #64
	mov	r5, #3
	ldr	r3, .L35
	str	r4, [r3]
	ldr	r3, .L35+4
	str	r4, [r3]
	ldr	r3, .L35+8
	str	r4, [r3]
	ldr	r3, .L35+12
	str	r0, [r3, #12]
	ldr	r0, .L35+16
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	ip, [r0]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r5, [r3, #40]
	str	lr, [r3, #8]
	bl	initZombie
	mov	r2, r4
	mov	r1, #8
	mov	ip, #2
	ldr	r3, .L35+20
	add	r0, r3, #180
.L32:
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #32]
	add	r3, r3, #36
	cmp	r3, r0
	bne	.L32
	mov	r0, #5
	ldr	r1, .L35+24
	ldr	r3, .L35+28
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
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
	@ link register save eliminated.
	mov	r1, #8
	mov	r2, #0
	mov	ip, #2
	ldr	r3, .L41
	add	r0, r3, #180
.L38:
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #32]
	add	r3, r3, #36
	cmp	r3, r0
	bne	.L38
	bx	lr
.L42:
	.align	2
.L41:
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
	ldr	r5, .L52
	mov	r3, #0
	mov	r2, r5
.L48:
	ldr	r1, [r2, #24]
	cmp	r1, #0
	beq	.L51
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bne	.L48
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	mov	r1, #1
	rsb	r3, r3, r3, lsl #3
	add	r6, r5, r3, lsl #2
	str	r1, [r6, #24]
	ldr	r2, .L52+4
	lsl	r4, r3, #2
	mov	lr, pc
	bx	r2
	mov	r1, #240
	ldr	r3, .L52+8
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
.L53:
	.align	2
.L52:
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
	ldr	r3, [r0, #32]
	cmp	r3, #0
	ldr	r2, [r0, #12]
	ldr	r3, [r0, #8]
	beq	.L55
	ldr	r1, [r0, #24]
	add	r1, r3, r1
	cmp	r1, #0
	ble	.L56
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #158
	bgt	.L56
	ldr	ip, [r0, #20]
	add	ip, r2, ip
	cmp	ip, #239
	bgt	.L56
	mov	r2, ip
	mov	r3, r1
	str	r1, [r0, #8]
	str	ip, [r0, #12]
.L55:
	ldr	ip, .L60
	ldr	r1, .L60+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r1
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
.L56:
	mov	r1, #0
	str	r1, [r0, #32]
	b	.L55
.L61:
	.align	2
.L60:
	.word	vOff
	.word	hOff
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
	ldr	lr, .L72
	ldr	r3, [lr, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L72+4
	mov	r5, #512
	mov	r2, r0
	mov	r1, r0
	mov	r4, #4
	ldr	ip, [lr, #36]
	ldr	lr, [lr]
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L72+8
	lsl	ip, ip, #7
	strh	lr, [r0]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	add	ip, r3, #140
.L65:
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
	bne	.L65
	mov	r4, #512
	mov	lr, #6
	ldr	r3, .L72+12
	add	r0, r3, #180
.L68:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #36
	strhne	lr, [r2, #44]	@ movhi
	strhne	ip, [r2, #40]	@ movhi
	strhne	r1, [r2, #42]	@ movhi
	strheq	r4, [r2, #40]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L68
	pop	{r4, r5, lr}
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r0, .L75
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #36]
	ldr	r2, .L75+4
	ldr	r0, [r0]
	lsl	r1, r1, #7
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L76:
	.align	2
.L75:
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
	beq	.L78
	mov	ip, #4
	ldr	r3, [r0, #4]
	ldr	r2, .L84
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
.L78:
	mov	r2, #512
	ldr	r3, .L84
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L87
	mov	r2, #6
	ldr	r3, .L93
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
.L87:
	mov	r2, #512
	ldr	r3, .L93
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r1, .L98
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L98+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L96
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L96:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r0, .L111
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L110
.L101:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L101
.L110:
	push	{r4, lr}
	mov	r4, #1
	ldr	ip, .L111+4
	ldr	r1, [ip, #24]
	ldr	r2, [ip, #28]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	add	r3, r3, r3, lsl #3
	add	r1, r1, r1, lsr #31
	add	r2, r2, r2, lsr #31
	add	r2, ip, r2, asr r4
	add	r1, lr, r1, asr r4
	add	ip, r0, r3, lsl #2
	str	r4, [ip, #32]
	str	r1, [r0, r3, lsl #2]
	str	r2, [ip, #4]
	pop	{r4, lr}
	bx	lr
.L112:
	.align	2
.L111:
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
	ldr	r3, .L131
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	ldr	r3, .L131+4
	bne	.L114
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	sub	r2, r2, r1
	cmp	r2, #0
	strgt	r2, [r3, #8]
.L114:
	ldr	r2, .L131
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L115
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	add	r2, r2, r1
	cmp	r2, #143
	strle	r2, [r3, #8]
.L115:
	ldr	r2, .L131
	ldrh	r1, [r2, #48]
	ldr	r2, .L131+8
	tst	r1, #16
	ldr	ip, [r2]
	movne	r2, #1
	ldr	r1, [r3, #12]
	strne	r2, [r3, #36]
	bne	.L121
	ldr	r0, [r3, #28]
	ldr	lr, .L131+12
	add	r0, r1, r0
	cmp	r0, lr
	ldr	r0, .L131+16
	ldr	r0, [r0]
	addle	r1, r1, #1
	strle	r1, [r3, #12]
	cmp	r0, #30
	bgt	.L118
	ldr	lr, .L131+20
	ldr	r4, .L131+24
	ldr	r0, [lr]
	cmp	r0, r4
	bgt	.L118
	ldr	r4, [r3, #4]
	cmp	r4, #80
	addgt	r0, r0, #1
	addgt	ip, ip, #1
	strgt	r0, [lr]
	strgt	ip, [r2]
.L118:
	ldr	r0, [r3, #32]
	add	r2, r0, r0, lsl #3
	add	r2, r2, r2, lsl #6
	add	r2, r0, r2, lsl #3
	ldr	lr, .L131+28
	add	r2, r2, r2, lsl #15
	add	r2, r0, r2, lsl #3
	sub	r2, lr, r2
	cmp	lr, r2, ror #1
	bcs	.L129
.L119:
	add	r0, r0, #1
	str	r0, [r3, #32]
.L121:
	ldr	r0, .L131+32
	ldr	r2, .L131+36
	ldr	lr, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3, #8]
	sub	r1, r1, ip
	sub	r2, r2, lr
	tst	r0, #1
	str	r1, [r3, #4]
	str	r2, [r3]
	beq	.L113
	ldr	r3, .L131+40
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L130
.L113:
	pop	{r4, lr}
	bx	lr
.L129:
	ldr	r2, [r3, #40]
	ldr	lr, [r3, #36]
	sub	r2, r2, #1
	cmp	lr, r2
	movge	r2, #0
	addlt	lr, lr, #1
	strlt	lr, [r3, #36]
	strge	r2, [r3, #36]
	b	.L119
.L130:
	pop	{r4, lr}
	b	fireHairball
.L132:
	.align	2
.L131:
	.word	67109120
	.word	cat
	.word	playerHOff
	.word	1022
	.word	screenBlock
	.word	hOff
	.word	782
	.word	306783378
	.word	vOff
	.word	oldButtons
	.word	buttons
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
	ldr	r6, .L145
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L134
	mov	ip, #67108864
	ldr	r0, .L145+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L134:
	ldr	r2, .L145+8
	ldr	r3, [r2]
	ldr	r1, .L145+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, [r1]
	ldr	r0, .L145+16
	ldr	r2, .L145+20
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L145+24
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L144
.L136:
	bl	updateCat
	ldr	r4, .L145+28
	add	r5, r4, #140
.L138:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L137:
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L138
	ldr	r0, .L145+32
	bl	updateHairball
	ldr	r0, .L145+36
	bl	updateHairball
	ldr	r0, .L145+40
	bl	updateHairball
	ldr	r0, .L145+44
	bl	updateHairball
	ldr	r0, .L145+48
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L145+52
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L144:
	bl	fireZombie
	b	.L136
.L146:
	.align	2
.L145:
	.word	hOff
	.word	screenBlock
	.word	playerHOff
	.word	zombieTimer
	.word	85899344
	.word	-1030792151
	.word	42949672
	.word	zombie
	.word	hairball
	.word	hairball+36
	.word	hairball+72
	.word	hairball+108
	.word	hairball+144
	.word	vOff
	.size	updateGame, .-updateGame
	.comm	screenBlock,4,4
	.comm	playerHOff,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	zombieTimer,4,4
	.comm	zombiesRemaining,4,4
	.comm	hairball,180,4
	.comm	zombie,140,4
	.comm	cat,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
