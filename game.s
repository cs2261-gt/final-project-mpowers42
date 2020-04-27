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
	ldr	r1, [r5, #36]
	strmi	r3, [r5, #32]
	add	r3, r1, r1, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	ip, .L29
	add	r3, r3, r3, lsl #16
	ldr	lr, .L29+4
	add	r3, r1, r3, lsl #1
	add	ip, r3, ip
	cmp	lr, ip, ror #2
	sub	sp, sp, #20
	bcc	.L3
	ldr	r3, [r5, #44]
	ldr	ip, [r5, #40]
	sub	r3, r3, #1
	cmp	ip, r3
	movge	r3, #0
	addlt	ip, ip, #1
	strlt	ip, [r5, #40]
	strge	r3, [r5, #40]
.L3:
	mov	r6, #0
	add	r1, r1, #1
	ldr	r4, .L29+8
	str	r1, [r5, #36]
	ldr	r3, [r5, #24]
	ldr	r1, [r5]
	ldr	r8, .L29+12
	add	r0, r0, #5
	add	r7, r4, #180
.L7:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	bne	.L27
.L5:
	add	r4, r4, #36
	cmp	r7, r4
	bne	.L7
	ldr	ip, .L29+16
	ldr	r4, [ip, #44]
	ldr	lr, [ip, #4]
	ldr	r6, [ip, #28]
	cmp	r4, #0
	ldr	r4, [ip]
	ldr	ip, [ip, #24]
	add	lr, lr, #4
	stmib	sp, {r4, r6, ip}
	str	lr, [sp]
	bne	.L28
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L10
	ldr	r3, [r5, #32]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L29+20
	strne	r2, [r3]
.L10:
	ldr	r2, .L29+24
	ldr	r3, .L29+28
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
.L27:
	ldr	ip, [r4, #4]
	add	ip, ip, #1
	ldr	lr, [r4, #24]
	str	ip, [sp]
	ldr	r9, [r4, #28]
	str	lr, [sp, #12]
	ldr	ip, [r4]
	str	r9, [sp, #8]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L6
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	add	r0, r0, #5
	b	.L5
.L6:
	str	r6, [r4, #32]
	ldr	r0, [r5, #4]
	str	r6, [r5, #32]
	ldr	r1, [r5]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	add	r0, r0, #5
	b	.L5
.L28:
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L10
	ldr	r3, [r5, #32]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r5, #32]
	b	.L10
.L30:
	.align	2
.L29:
	.word	715827880
	.word	357913940
	.word	hairball
	.word	collision
	.word	cat
	.word	loseGame
	.word	vOff
	.word	totalHOff
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
	mov	r2, #0
	mov	lr, #1
	mov	r4, #3
	mov	ip, #32
	ldr	r1, .L33
	ldr	r3, .L33+4
	ldr	r0, [r1]
	ldr	r1, [r3]
	ldr	r3, .L33+8
	add	r0, r0, #64
	add	r1, r1, #104
	str	r4, [r3, #40]
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
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
	mov	r10, #32
	ldr	r4, .L39
	ldr	r8, .L39+4
	ldr	r9, .L39+8
	ldr	fp, .L39+12
	ldr	r7, .L39+16
	add	r6, r4, #240
.L36:
	mov	lr, pc
	bx	r8
	mov	r2, #0
	mov	r1, #4
	smull	r3, lr, r7, r0
	asr	ip, r0, #31
	rsb	ip, ip, lr, asr #2
	rsb	lr, ip, ip, lsl #3
	rsb	ip, ip, lr, lsl #3
	sub	r0, r0, ip, lsl #1
	ldr	ip, [r9]
	add	r0, r0, ip
	ldr	ip, [fp]
	add	ip, ip, #240
	str	r5, [r4, #16]
	str	r5, [r4, #20]
	str	r10, [r4, #24]
	str	r10, [r4, #28]
	str	r0, [r4, #8]
	str	r0, [r4]
	str	ip, [r4, #12]
	str	ip, [r4, #4]
	str	r2, [r4, #32]
	str	r2, [r4, #36]
	str	r2, [r4, #40]
	str	r1, [r4, #44]
	add	r4, r4, #48
	cmp	r4, r6
	bne	.L36
	ldr	r3, .L39
	str	r5, [r3, #32]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	zombie
	.word	rand
	.word	vOff
	.word	totalHOff
	.word	156180629
	.size	initZombie, .-initZombie
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
	ldr	r3, .L45
	add	r0, r3, #180
.L42:
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
	bne	.L42
	bx	lr
.L46:
	.align	2
.L45:
	.word	hairball
	.size	initHairball, .-initHairball
	.align	2
	.global	initBlueCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlueCar, %function
initBlueCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #32
	ldr	r8, .L51
	ldr	r4, .L51+4
	ldr	r7, .L51+8
	ldr	r6, .L51+12
	add	r5, r8, #80
.L48:
	str	r9, [r8, #8]
	str	r9, [r8, #12]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	str	r0, [r8]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #9
	rsb	r3, r3, r3, lsl #4
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #2
	str	r3, [r8, #4]
	add	r8, r8, #16
	cmp	r8, r5
	bne	.L48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	blueCar
	.word	rand
	.word	2114445439
	.word	-1851608123
	.size	initBlueCar, .-initBlueCar
	.align	2
	.global	initDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoor, %function
initDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #32
	push	{r4, lr}
	ldr	r4, .L55
	ldr	r2, .L55+4
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	mov	lr, pc
	bx	r2
	ldr	r3, .L55+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #8]
	sub	r0, r0, r3, lsl #5
	ldr	r3, .L55+12
	sub	r0, r0, r2
	stm	r4, {r0, r3}
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	door
	.word	rand
	.word	1717986919
	.word	978
	.size	initDoor, .-initDoor
	.align	2
	.global	initFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFish, %function
initFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #8
	push	{r4, r5, r6, lr}
	ldr	r4, .L59
	ldr	r5, .L59+4
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	mov	lr, pc
	bx	r5
	ldr	r3, .L59+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	ldr	r3, .L59+12
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #500
	str	r0, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	fish
	.word	rand
	.word	2114445439
	.word	1374389535
	.size	initFish, .-initFish
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
	mov	lr, #64
	mov	ip, #28
	mov	r5, #3
	ldr	r3, .L65
	str	r4, [r3]
	ldr	r3, .L65+4
	str	r4, [r3]
	ldr	r3, .L65+8
	str	r4, [r3]
	ldr	r3, .L65+12
	str	r4, [r3]
	ldr	r3, .L65+16
	str	r4, [r3]
	ldr	r3, .L65+20
	str	r4, [r3]
	ldr	r3, .L65+24
	str	r4, [r3]
	ldr	r3, .L65+28
	str	r0, [r3, #12]
	ldr	r0, .L65+32
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r5, [r3, #40]
	str	lr, [r3, #8]
	str	ip, [r0]
	bl	initZombie
	mov	r2, #8
	mov	r0, #2
	ldr	r3, .L65+36
	add	r1, r3, #180
.L62:
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r4, [r3, #16]
	str	r0, [r3, #20]
	str	r4, [r3, #32]
	add	r3, r3, #36
	cmp	r3, r1
	bne	.L62
	bl	initBlueCar
	bl	initDoor
	bl	initFish
	mov	r1, #5
	ldr	r2, .L65+40
	ldr	r3, .L65+44
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	vOff
	.word	hOff
	.word	totalHOff
	.word	playerHOff
	.word	loseGame
	.word	winGame
	.word	collided
	.word	cat
	.word	screenBlock
	.word	hairball
	.word	zombiesRemaining
	.word	zombieTimer
	.size	initGame, .-initGame
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
	ldr	r5, .L76
	mov	r4, #0
	mov	r3, r5
.L72:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L75
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #48
	bne	.L72
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L76+8
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	ldr	ip, .L76+12
	ldr	r2, .L76+16
	rsb	lr, r3, r3, lsl #3
	rsb	r3, r3, lr, lsl #3
	ldr	ip, [ip]
	ldr	r2, [r2]
	sub	r0, r0, r3, lsl r1
	add	r4, r4, r4, lsl r1
	add	r4, r5, r4, lsl #4
	add	r0, r0, ip
	add	r3, r2, #240
	str	r0, [r4, #8]
	str	r3, [r4, #12]
	str	r1, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	.align	2
.L76:
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
	beq	.L79
	ldr	r1, [r0, #24]
	add	r1, r3, r1
	cmp	r1, #0
	ble	.L80
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #158
	ble	.L85
.L80:
	mov	r1, #0
	str	r1, [r0, #32]
.L81:
	ldr	r1, [r0, #4]
	cmp	r1, #240
	movgt	r1, #0
	strgt	r1, [r0, #32]
.L79:
	ldr	ip, .L86
	ldr	r1, .L86+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r1
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
.L85:
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	str	r1, [r0, #8]
	mov	r3, r1
	str	r2, [r0, #12]
	b	.L81
.L87:
	.align	2
.L86:
	.word	vOff
	.word	totalHOff
	.size	updateHairball, .-updateHairball
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
	ldr	r3, .L91
	ldr	r1, [r3, #44]
	ldrh	r2, [r3, #4]
	ldrh	r0, [r3]
	ldr	r3, [r3, #36]
	cmp	r1, #0
	ldrne	r1, .L91+4
	ldreq	r1, .L91+8
	addne	r3, r3, #1
	orr	r2, r2, #32768
	lsl	r3, r3, #7
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	bx	lr
.L92:
	.align	2
.L91:
	.word	cat
	.word	shadowOAM+1600
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
	beq	.L94
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #40]
	ldr	ip, .L100
	str	lr, [sp, #-4]!
	lsl	r2, r2, #7
	ldrb	lr, [r0]	@ zero_extendqisi2
	add	r2, r2, #4
	lsl	r0, r1, #3
	add	r1, ip, r1, lsl #3
	strh	lr, [ip, r0]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L94:
	mov	r2, #512
	ldr	r3, .L100
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L101:
	.align	2
.L100:
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
	beq	.L103
	mov	ip, #8
	ldr	r3, [r0, #4]
	ldr	r2, .L109
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
.L103:
	mov	r2, #512
	ldr	r3, .L109
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L110:
	.align	2
.L109:
	.word	shadowOAM
	.size	drawHairball, .-drawHairball
	.align	2
	.global	drawBlueCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlueCar, %function
drawBlueCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L117
	ldr	r3, [r0, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	cmp	r3, #240
	bls	.L112
	mov	r2, #512
	ldr	r3, .L117+4
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L112:
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	ip, #40
	mvn	r3, r3, lsr #17
	str	lr, [sp, #-4]!
	ldr	lr, .L117+8
	ldr	r2, [r0]
	ldr	lr, [lr]
	ldr	r0, .L117+4
	sub	r2, r2, lr
	and	r2, r2, #255
	lsl	lr, r1, #3
	add	r1, r0, r1, lsl #3
	strh	r2, [r0, lr]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L118:
	.align	2
.L117:
	.word	totalHOff
	.word	shadowOAM
	.word	vOff
	.size	drawBlueCar, .-drawBlueCar
	.align	2
	.global	drawDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoor, %function
drawDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L124
	ldr	r3, .L124+4
	ldr	r1, [r2, #4]
	ldr	r3, [r3]
	sub	r1, r1, r3
	lsl	r3, r1, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	ldr	r0, .L124+8
	ldr	r2, [r2]
	ldr	r0, [r0]
	sub	r2, r2, r0
	cmp	r1, #240
	cmpls	r2, #160
	mvn	r3, r3, lsr #17
	ldr	r1, .L124+12
	mov	r0, #168
	strh	r3, [r1, #2]	@ movhi
	movhi	r3, #512
	and	r2, r2, #255
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strhhi	r3, [r1]	@ movhi
	bx	lr
.L125:
	.align	2
.L124:
	.word	door
	.word	totalHOff
	.word	vOff
	.word	shadowOAM+800
	.size	drawDoor, .-drawDoor
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bl	drawCat
	ldr	r2, .L140
	mov	r6, #512
	mov	r1, r2
	ldr	r3, .L140+4
	ldr	r5, .L140+8
	ldr	r4, .L140+12
	add	lr, r3, #240
.L129:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	strheq	r6, [r1, #8]	@ movhi
	beq	.L128
	ldr	ip, [r3, #4]
	ldr	r0, [r3, #40]
	ldrb	r7, [r3]	@ zero_extendqisi2
	and	ip, ip, r5
	lsl	r0, r0, #7
	orr	ip, ip, r4
	add	r0, r0, #4
	strh	ip, [r1, #10]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	strh	r7, [r1, #8]	@ movhi
.L128:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L129
	mov	r6, #512
	mov	r5, #8
	ldr	r3, .L140+16
	ldr	r1, .L140
	ldr	r4, .L140+8
	add	ip, r3, #180
.L132:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	ldrbne	lr, [r3]	@ zero_extendqisi2
	andne	r0, r0, r4
	add	r3, r3, #36
	strhne	r5, [r1, #52]	@ movhi
	strhne	r0, [r1, #50]	@ movhi
	strhne	lr, [r1, #48]	@ movhi
	strheq	r6, [r1, #48]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L132
	mov	fp, #40
	mov	r10, #512
	ldr	r9, .L140+20
	ldr	r8, .L140+24
	ldr	ip, [r9]
	ldrh	r7, [r8]
	lsl	r4, ip, #16
	ldr	r1, .L140+28
	ldr	lr, .L140+32
	ldr	r6, .L140+8
	ldr	r5, .L140+12
	lsr	r4, r4, #16
.L135:
	ldr	r3, [r1, #4]
	sub	r0, r3, ip
	cmp	r0, #240
	ldrls	r0, [r1]
	subls	r3, r3, r4
	andls	r3, r3, r6
	subls	r0, r0, r7
	orrls	r3, r3, r5
	andls	r0, r0, #255
	strhhi	r10, [r2, #88]	@ movhi
	strhls	r3, [r2, #90]	@ movhi
	strhls	fp, [r2, #92]	@ movhi
	strhls	r0, [r2, #88]	@ movhi
	add	r2, r2, #8
	cmp	lr, r2
	add	r1, r1, #16
	bne	.L135
	bl	drawDoor
	mov	r0, #9
	ldr	r1, .L140+36
	ldr	lr, [r9]
	ldr	r3, [r1, #4]
	ldr	ip, [r8]
	ldr	r2, [r1]
	sub	r3, r3, lr
	ldr	r1, .L140+40
	lsl	r3, r3, #23
	sub	r2, r2, ip
	lsr	r3, r3, #23
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L141:
	.align	2
.L140:
	.word	shadowOAM
	.word	zombie
	.word	511
	.word	-32768
	.word	hairball
	.word	totalHOff
	.word	vOff
	.word	blueCar
	.word	shadowOAM+40
	.word	fish
	.word	shadowOAM+960
	.size	drawGame, .-drawGame
	.align	2
	.global	drawFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFish, %function
drawFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #9
	ldr	r2, .L143
	ldr	r1, .L143+4
	ldr	r0, .L143+8
	ldr	r3, [r2, #4]
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	r2, [r2]
	sub	r3, r3, r1
	ldr	r1, .L143+12
	sub	r2, r2, r0
	lsl	r3, r3, #23
	add	r0, r1, #960
	lsr	r3, r3, #23
	add	r1, r1, #964
	and	r2, r2, #255
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	ip, [r1]	@ movhi
	bx	lr
.L144:
	.align	2
.L143:
	.word	fish
	.word	totalHOff
	.word	vOff
	.word	shadowOAM
	.size	drawFish, .-drawFish
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
	ldr	r1, .L148
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L148+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L146
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L146:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L149:
	.align	2
.L148:
	.word	cat
	.word	306783378
	.size	animateCat, .-animateCat
	.align	2
	.global	animateZombie
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateZombie, %function
animateZombie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #36]
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r1, .L153
	add	r3, r3, r3, lsl #16
	ldr	ip, .L153+4
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	ip, r1, ror #2
	bcc	.L151
	add	r1, r0, #40
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r0, #40]
	strge	r3, [r0, #40]
.L151:
	add	r2, r2, #1
	str	r2, [r0, #36]
	bx	lr
.L154:
	.align	2
.L153:
	.word	715827880
	.word	357913940
	.size	animateZombie, .-animateZombie
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
	mov	r2, #0
	ldr	r0, .L162
	ldr	r3, .L162+4
	push	{r4, lr}
	ldr	r1, .L162+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L162+12
	mov	r3, #0
	mov	r2, r0
.L158:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L161
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L158
	pop	{r4, lr}
	bx	lr
.L161:
	mov	r4, #1
	ldr	ip, .L162+16
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
.L163:
	.align	2
.L162:
	.word	catSound
	.word	playSoundB
	.word	4594
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L193
	ldr	r4, .L193+4
	ldr	r6, .L193+8
	ldr	r7, .L193+12
	ldr	r8, .L193+16
	ldr	r9, .L193+20
	sub	sp, sp, #16
	add	r10, r5, #80
.L167:
	ldr	r2, [r5]
	ldr	r0, [r6]
	ldr	r3, [r5, #4]
	ldr	ip, [r7]
	sub	r2, r2, r0
	sub	r3, r3, ip
	ldr	ip, [r5, #8]
	str	r2, [sp, #4]
	ldr	r1, [r4]
	ldr	r2, [r5, #12]
	ldr	r0, [r4, #4]
	str	r3, [sp]
	str	r2, [sp, #8]
	str	ip, [sp, #12]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	sub	r1, r1, #10
	sub	r0, r0, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	add	r5, r5, #16
	bne	.L190
	cmp	r10, r5
	str	r0, [r9]
	bne	.L167
.L166:
	ldr	r5, .L193+24
	ldr	r0, [r7]
	ldm	r5, {r2, r3}
	ldr	r1, [r6]
	ldr	lr, [r5, #8]
	ldr	ip, [r5, #12]
	sub	r2, r2, r1
	sub	r3, r3, r0
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	add	r3, r3, #13
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	sub	r1, r1, #10
	sub	r0, r0, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L193+28
	strne	r2, [r3]
	ldr	r3, .L193+32
	ldr	r1, [r6]
	ldm	r3, {r2, r3}
	sub	r2, r2, r1
	ldr	r0, [r7]
	str	r2, [sp, #4]
	sub	r3, r3, r0
	ldr	r2, [r5, #12]
	ldr	ip, [r5, #8]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	str	r3, [sp]
	str	r2, [sp, #8]
	ldr	r3, [r4, #24]
	str	ip, [sp, #12]
	ldr	r2, [r4, #28]
	sub	r1, r1, #10
	sub	r0, r0, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #44]
	ldr	r3, .L193+36
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L170
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #16]
	sub	r3, r3, r2
	cmp	r3, #0
	strgt	r3, [r4, #8]
.L170:
	ldr	r3, .L193+36
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L171
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	cmp	r3, #143
	strle	r3, [r4, #8]
.L171:
	ldr	r3, .L193+36
	ldrh	r2, [r3, #48]
	ldr	r3, .L193+40
	tst	r2, #16
	ldr	r0, [r3]
	movne	r3, #1
	ldr	r2, [r4, #12]
	strne	r3, [r4, #36]
	bne	.L177
	ldr	r1, [r4, #28]
	ldr	ip, .L193+44
	add	r1, r2, r1
	cmp	r1, ip
	bgt	.L173
	ldr	r1, [r9]
	cmp	r1, #0
	addeq	r2, r2, #1
	streq	r2, [r4, #12]
.L173:
	ldr	r1, .L193+48
	ldr	r1, [r1]
	cmp	r1, #30
	bgt	.L174
	ldr	ip, .L193+52
	ldr	lr, .L193+56
	ldr	r1, [ip]
	cmp	r1, lr
	bgt	.L174
	ldr	lr, [r4, #4]
	cmp	lr, #80
	ble	.L174
	ldr	lr, [r7]
	add	r1, r1, #1
	add	r0, r0, #1
	add	lr, lr, #1
	str	r1, [ip]
	str	r0, [r3]
	str	lr, [r7]
.L174:
	ldr	r1, [r4, #32]
	add	r3, r1, r1, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r1, r3, lsl #3
	ldr	ip, .L193+60
	add	r3, r3, r3, lsl #15
	add	r3, r1, r3, lsl #3
	sub	r3, ip, r3
	cmp	ip, r3, ror #1
	bcs	.L191
.L175:
	add	r1, r1, #1
	str	r1, [r4, #32]
.L177:
	ldr	r3, .L193+64
	ldr	ip, [r6]
	ldrh	r1, [r3]
	ldr	r3, [r4, #8]
	sub	r2, r2, r0
	sub	r3, r3, ip
	tst	r1, #1
	str	r2, [r4, #4]
	str	r3, [r4]
	beq	.L164
	ldr	r3, .L193+68
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L192
.L164:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L191:
	ldr	r3, [r4, #40]
	ldr	ip, [r4, #36]
	sub	r3, r3, #1
	cmp	ip, r3
	movge	r3, #0
	addlt	ip, ip, #1
	strlt	ip, [r4, #36]
	strge	r3, [r4, #36]
	b	.L175
.L190:
	mov	r3, #1
	str	r3, [r9]
	b	.L166
.L192:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	fireHairball
.L194:
	.align	2
.L193:
	.word	blueCar
	.word	cat
	.word	vOff
	.word	totalHOff
	.word	collision
	.word	collided
	.word	door
	.word	winGame
	.word	fish
	.word	67109120
	.word	playerHOff
	.word	1022
	.word	screenBlock
	.word	hOff
	.word	782
	.word	306783378
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
	ldr	r6, .L206
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L196
	mov	ip, #67108864
	ldr	r0, .L206+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L196:
	ldr	r1, .L206+8
	ldr	r3, [r1]
	ldr	r0, .L206+12
	ldr	r2, .L206+16
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L206+20
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L205
.L197:
	bl	updateCat
	ldr	r4, .L206+24
	add	r5, r4, #240
.L199:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L198:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L199
	ldr	r0, .L206+28
	bl	updateHairball
	ldr	r0, .L206+32
	bl	updateHairball
	ldr	r0, .L206+36
	bl	updateHairball
	ldr	r0, .L206+40
	bl	updateHairball
	ldr	r0, .L206+44
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L206+48
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L205:
	bl	fireZombie
	b	.L197
.L207:
	.align	2
.L206:
	.word	hOff
	.word	screenBlock
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
	.comm	fish,16,4
	.comm	door,16,4
	.comm	blueCar,80,4
	.comm	hairball,180,4
	.comm	zombie,240,4
	.comm	cat,48,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
