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
	ldr	r1, [r0, #20]
	ldr	r3, [r0, #12]
	ldr	r2, [r5, #28]
	ldr	r0, [r0, #4]
	sub	r3, r3, r1
	cmn	r0, r2
	str	r3, [r5, #12]
	movmi	r3, #0
	mov	r9, #0
	ldr	r4, .L22
	strmi	r3, [r5, #32]
	ldr	r1, [r5]
	ldr	r3, [r5, #24]
	ldr	r7, .L22+4
	ldr	r8, .L22+8
	sub	sp, sp, #20
	add	r6, r4, #180
.L5:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	bne	.L20
.L3:
	add	r4, r4, #36
	cmp	r6, r4
	bne	.L5
	ldr	ip, .L22+12
	ldr	lr, [ip, #4]
	sub	lr, lr, #5
	ldr	r4, [ip, #24]
	str	lr, [sp]
	ldr	lr, [ip, #28]
	ldr	ip, [ip]
	str	r4, [sp, #12]
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L6
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L21
.L6:
	ldr	r2, .L22+16
	ldr	r3, .L22+20
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #12]
	sub	r2, r2, r0
	sub	r3, r3, r1
	stm	r5, {r2, r3}
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L20:
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #32]
	subne	r3, r3, #1
	strne	r3, [r8]
	strne	r9, [r5, #32]
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	b	.L3
.L21:
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r3
	b	.L6
.L23:
	.align	2
.L22:
	.word	hairball
	.word	collision
	.word	zombiesRemaining
	.word	cat
	.word	vOff
	.word	totalHOff
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
	ldr	r2, .L26
	ldr	r3, .L26+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L26+8
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
.L27:
	.align	2
.L26:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #1
	mov	r10, #16
	ldr	r4, .L32
	ldr	r8, .L32+4
	ldr	r9, .L32+8
	ldr	fp, .L32+12
	ldr	r7, .L32+16
	add	r6, r4, #180
.L29:
	mov	lr, pc
	bx	r8
	mov	r1, #0
	smull	r3, ip, r7, r0
	asr	r2, r0, #31
	rsb	r2, r2, ip, asr #2
	rsb	ip, r2, r2, lsl #3
	rsb	r2, r2, ip, lsl #3
	sub	r0, r0, r2, lsl #1
	ldr	ip, [r9]
	ldr	r2, [fp]
	add	r0, r0, ip
	add	r2, r2, #240
	str	r5, [r4, #16]
	str	r5, [r4, #20]
	str	r10, [r4, #24]
	str	r10, [r4, #28]
	str	r0, [r4, #8]
	str	r2, [r4, #12]
	str	r1, [r4, #32]
	add	r4, r4, #36
	cmp	r4, r6
	bne	.L29
	ldr	r3, .L32
	str	r5, [r3, #32]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	zombie
	.word	rand
	.word	vOff
	.word	totalHOff
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
	ldr	r3, .L38
	str	r4, [r3]
	ldr	r3, .L38+4
	str	r4, [r3]
	ldr	r3, .L38+8
	str	r4, [r3]
	ldr	r3, .L38+12
	str	r4, [r3]
	ldr	r3, .L38+16
	str	r0, [r3, #12]
	ldr	r0, .L38+20
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
	ldr	r3, .L38+24
	add	r0, r3, #180
.L35:
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
	bne	.L35
	mov	r0, #5
	ldr	r1, .L38+28
	ldr	r3, .L38+32
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	vOff
	.word	hOff
	.word	totalHOff
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
	ldr	r3, .L44
	add	r0, r3, #180
.L41:
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
	bne	.L41
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, [r0, #32]
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
	ldr	r5, .L55
	mov	r4, #0
	mov	r3, r5
.L51:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L54
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #36
	bne	.L51
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	ldr	r3, .L55+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L55+8
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	ldr	ip, .L55+12
	ldr	r2, .L55+16
	rsb	lr, r3, r3, lsl #3
	rsb	r3, r3, lr, lsl #3
	ldr	ip, [ip]
	ldr	r2, [r2]
	sub	r0, r0, r3, lsl r1
	add	r4, r4, r4, lsl #3
	add	r4, r5, r4, lsl #2
	add	r0, r0, ip
	add	r3, r2, #240
	str	r0, [r4, #8]
	str	r3, [r4, #12]
	str	r1, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	zombie
	.word	rand
	.word	156180629
	.word	vOff
	.word	totalHOff
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
	beq	.L58
	ldr	r1, [r0, #24]
	add	r1, r3, r1
	cmp	r1, #0
	ble	.L59
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #158
	ble	.L64
.L59:
	mov	r1, #0
	str	r1, [r0, #32]
.L60:
	ldr	r1, [r0, #4]
	cmp	r1, #240
	movgt	r1, #0
	strgt	r1, [r0, #32]
.L58:
	ldr	ip, .L65
	ldr	r1, .L65+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r1
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
.L64:
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	str	r1, [r0, #8]
	mov	r3, r1
	str	r2, [r0, #12]
	b	.L60
.L66:
	.align	2
.L65:
	.word	vOff
	.word	totalHOff
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
	push	{r4, r5, r6, lr}
	ldr	lr, .L77
	ldr	r3, [lr, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L77+4
	mov	r5, #512
	mov	r2, r0
	mov	r1, r0
	mov	r4, #4
	ldr	ip, [lr, #36]
	ldr	lr, [lr]
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L77+8
	lsl	ip, ip, #7
	strh	lr, [r0]	@ movhi
	ldr	r6, .L77+12
	strh	ip, [r0, #4]	@ movhi
	add	ip, r3, #180
.L70:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	ldrbne	lr, [r3]	@ zero_extendqisi2
	andne	r0, r0, r6
	orrne	r0, r0, #16384
	add	r3, r3, #36
	strhne	r4, [r1, #12]	@ movhi
	strhne	r0, [r1, #10]	@ movhi
	strhne	lr, [r1, #8]	@ movhi
	strheq	r5, [r1, #8]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L70
	mov	r5, #512
	mov	r4, #6
	ldr	r3, .L77+16
	ldr	lr, .L77+12
	add	r0, r3, #180
.L73:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrbne	ip, [r3]	@ zero_extendqisi2
	andne	r1, r1, lr
	add	r3, r3, #36
	strhne	r4, [r2, #44]	@ movhi
	strhne	r1, [r2, #42]	@ movhi
	strhne	ip, [r2, #40]	@ movhi
	strheq	r5, [r2, #40]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L73
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	cat
	.word	shadowOAM
	.word	zombie
	.word	511
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
	ldr	r0, .L80
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #36]
	ldr	r2, .L80+4
	ldr	r0, [r0]
	lsl	r1, r1, #7
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L81:
	.align	2
.L80:
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
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L83
	mov	ip, #4
	ldr	r3, [r0, #4]
	ldr	r2, .L89
	lsl	r3, r3, #23
	str	lr, [sp, #-4]!
	lsr	r3, r3, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	orr	r3, r3, #16384
	lsl	r0, r1, #3
	add	r1, r2, r1, lsl #3
	strh	lr, [r2, r0]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L83:
	mov	r2, #512
	ldr	r3, .L89
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L90:
	.align	2
.L89:
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
	beq	.L92
	mov	ip, #6
	ldr	r3, [r0, #4]
	ldr	r2, .L98
	str	lr, [sp, #-4]!
	lsl	r3, r3, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	lsr	r3, r3, #23
	lsl	r0, r1, #3
	add	r1, r2, r1, lsl #3
	strh	lr, [r2, r0]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L92:
	mov	r2, #512
	ldr	r3, .L98
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r1, .L103
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L103+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L101
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L101:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r0, .L116
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L115
.L106:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L106
.L115:
	push	{r4, lr}
	mov	r4, #1
	ldr	ip, .L116+4
	add	r1, ip, #24
	ldm	r1, {r1, r2}
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	ldr	lr, [ip, #8]
	ldr	r0, [ip, #12]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r2, lsr #31
	add	r1, lr, r1, asr r4
	add	r2, r0, r2, asr r4
	str	r4, [r3, #32]
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L136
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, lr}
	ldr	r3, .L136+4
	bne	.L119
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	sub	r2, r2, r1
	cmp	r2, #0
	strgt	r2, [r3, #8]
.L119:
	ldr	r2, .L136
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L120
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	add	r2, r2, r1
	cmp	r2, #143
	strle	r2, [r3, #8]
.L120:
	ldr	r2, .L136
	ldrh	r1, [r2, #48]
	ldr	r2, .L136+8
	tst	r1, #16
	ldr	ip, [r2]
	movne	r2, #1
	ldr	r1, [r3, #12]
	strne	r2, [r3, #36]
	bne	.L126
	ldr	r0, [r3, #28]
	ldr	lr, .L136+12
	add	r0, r1, r0
	cmp	r0, lr
	ldr	r0, .L136+16
	ldr	r0, [r0]
	addle	r1, r1, #1
	strle	r1, [r3, #12]
	cmp	r0, #30
	bgt	.L123
	ldr	lr, .L136+20
	ldr	r4, .L136+24
	ldr	r0, [lr]
	cmp	r0, r4
	bgt	.L123
	ldr	r4, [r3, #4]
	cmp	r4, #80
	ble	.L123
	ldr	r5, .L136+28
	ldr	r4, [r5]
	add	r0, r0, #1
	add	ip, ip, #1
	add	r4, r4, #1
	str	r0, [lr]
	str	ip, [r2]
	str	r4, [r5]
.L123:
	ldr	r0, [r3, #32]
	add	r2, r0, r0, lsl #3
	add	r2, r2, r2, lsl #6
	add	r2, r0, r2, lsl #3
	ldr	lr, .L136+32
	add	r2, r2, r2, lsl #15
	add	r2, r0, r2, lsl #3
	sub	r2, lr, r2
	cmp	lr, r2, ror #1
	bcs	.L134
.L124:
	add	r0, r0, #1
	str	r0, [r3, #32]
.L126:
	ldr	r0, .L136+36
	ldr	r2, .L136+40
	ldr	lr, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3, #8]
	sub	r1, r1, ip
	sub	r2, r2, lr
	tst	r0, #1
	str	r1, [r3, #4]
	str	r2, [r3]
	beq	.L118
	ldr	r3, .L136+44
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L135
.L118:
	pop	{r4, r5, lr}
	bx	lr
.L134:
	ldr	r2, [r3, #40]
	ldr	lr, [r3, #36]
	sub	r2, r2, #1
	cmp	lr, r2
	movge	r2, #0
	addlt	lr, lr, #1
	strlt	lr, [r3, #36]
	strge	r2, [r3, #36]
	b	.L124
.L135:
	pop	{r4, r5, lr}
	b	fireHairball
.L137:
	.align	2
.L136:
	.word	67109120
	.word	cat
	.word	playerHOff
	.word	1022
	.word	screenBlock
	.word	hOff
	.word	782
	.word	totalHOff
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
	ldr	r6, .L150
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L139
	mov	ip, #67108864
	ldr	r0, .L150+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L139:
	ldr	r2, .L150+8
	ldr	r3, [r2]
	ldr	r1, .L150+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, [r1]
	ldr	r0, .L150+16
	ldr	r2, .L150+20
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L150+24
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L149
.L141:
	bl	updateCat
	ldr	r4, .L150+28
	add	r5, r4, #180
.L143:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L142:
	add	r4, r4, #36
	cmp	r4, r5
	bne	.L143
	ldr	r0, .L150+32
	bl	updateHairball
	ldr	r0, .L150+36
	bl	updateHairball
	ldr	r0, .L150+40
	bl	updateHairball
	ldr	r0, .L150+44
	bl	updateHairball
	ldr	r0, .L150+48
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L150+52
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L149:
	bl	fireZombie
	b	.L141
.L151:
	.align	2
.L150:
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
	.comm	totalHOff,4,4
	.comm	playerHOff,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	zombieTimer,4,4
	.comm	zombiesRemaining,4,4
	.comm	hairball,180,4
	.comm	zombie,180,4
	.comm	cat,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
