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
	cmp	r4, r7
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
	beq	.L10
	mov	r2, #0
	ldr	r1, .L29+32
	str	r2, [r5, #32]
	ldr	r0, .L29+36
	ldr	r3, .L29+40
	mov	lr, pc
	bx	r3
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
	.word	17568
	.word	eatingSound
	.word	playSoundB
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
	ldr	r4, .L51
	ldr	r5, .L51+4
	ldr	r8, .L51+8
	ldr	r7, .L51+12
	add	r6, r4, #140
.L48:
	str	r9, [r4, #8]
	str	r9, [r4, #12]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	r2, #0
	mov	r1, #3
	smull	r3, ip, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #8
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	add	r0, r0, #100
	str	r0, [r4, #4]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r1, [r4, #24]
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	blueCar
	.word	rand
	.word	2114445439
	.word	1374389535
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
	mov	r2, #8
	mov	r3, #16
	push	{r4, r5, r6, lr}
	ldr	r4, .L59
	ldr	r5, .L59+4
	str	r2, [r4, #8]
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
	mov	r1, #1
	ldr	r3, .L59+12
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #500
	str	r0, [r4, #4]
	str	r1, [r4, #16]
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
	.global	updateBlueCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlueCar, %function
updateBlueCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #16]
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r1, .L72
	add	r3, r3, r3, lsl #16
	ldr	ip, .L72+4
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	ip, r1, ror #2
	bcc	.L70
	add	r1, r0, #20
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r0, #20]
	strge	r3, [r0, #20]
.L70:
	add	r2, r2, #1
	str	r2, [r0, #16]
	bx	lr
.L73:
	.align	2
.L72:
	.word	715827880
	.word	357913940
	.size	updateBlueCar, .-updateBlueCar
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
	ldr	r5, .L81
	mov	r4, #0
	mov	r3, r5
.L77:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L80
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #48
	bne	.L77
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L81+8
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	ldr	ip, .L81+12
	ldr	r2, .L81+16
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
.L82:
	.align	2
.L81:
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
	beq	.L84
	ldr	r1, [r0, #24]
	add	r1, r3, r1
	cmp	r1, #0
	ble	.L85
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #158
	ble	.L90
.L85:
	mov	r1, #0
	str	r1, [r0, #32]
.L86:
	ldr	r1, [r0, #4]
	cmp	r1, #240
	movgt	r1, #0
	strgt	r1, [r0, #32]
.L84:
	ldr	ip, .L91
	ldr	r1, .L91+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r1
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
.L90:
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	str	r1, [r0, #8]
	mov	r3, r1
	str	r2, [r0, #12]
	b	.L86
.L92:
	.align	2
.L91:
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
	ldr	r3, .L96
	ldr	r1, [r3, #44]
	ldrh	r2, [r3, #4]
	ldrh	r0, [r3]
	ldr	r3, [r3, #36]
	cmp	r1, #0
	addne	r3, r3, #3
	ldr	r1, .L96+4
	orr	r2, r2, #32768
	lsl	r3, r3, #7
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	bx	lr
.L97:
	.align	2
.L96:
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
	beq	.L99
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #40]
	ldr	ip, .L105
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
.L99:
	mov	r2, #512
	ldr	r3, .L105
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L106:
	.align	2
.L105:
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
	beq	.L108
	mov	ip, #8
	ldr	r3, [r0, #4]
	ldr	r2, .L114
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
.L108:
	mov	r2, #512
	ldr	r3, .L114
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L115:
	.align	2
.L114:
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
	ldr	r2, .L122
	ldr	r3, [r0, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	cmp	r3, #240
	bls	.L117
	mov	r2, #512
	ldr	r3, .L122+4
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L117:
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L122+8
	push	{r4, lr}
	ldr	ip, [r0]
	ldr	r4, [r2]
	ldr	r2, [r0, #20]
	ldr	lr, .L122+4
	sub	r0, ip, r4
	add	r2, r2, #10
	lsl	ip, r1, #3
	and	r0, r0, #255
	add	r1, lr, r1, lsl #3
	lsl	r2, r2, #2
	strh	r0, [lr, ip]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L123:
	.align	2
.L122:
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
	ldr	r2, .L129
	ldr	r3, .L129+4
	ldr	r1, [r2, #4]
	ldr	r3, [r3]
	sub	r1, r1, r3
	lsl	r3, r1, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	ldr	r0, .L129+8
	ldr	r2, [r2]
	ldr	r0, [r0]
	sub	r2, r2, r0
	cmp	r1, #240
	cmpls	r2, #160
	mvn	r3, r3, lsr #17
	ldr	r1, .L129+12
	mov	r0, #168
	strh	r3, [r1, #2]	@ movhi
	movhi	r3, #512
	and	r2, r2, #255
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strhhi	r3, [r1]	@ movhi
	bx	lr
.L130:
	.align	2
.L129:
	.word	door
	.word	totalHOff
	.word	vOff
	.word	shadowOAM+800
	.size	drawDoor, .-drawDoor
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
	ldr	r2, .L137
	ldr	r3, [r2, #16]
	ldr	r1, .L137+4
	cmp	r3, #0
	str	lr, [sp, #-4]!
	ldr	r3, [r2]
	ldr	ip, [r1]
	beq	.L132
	mov	lr, #9
	ldr	r1, .L137+8
	ldr	r0, [r1]
	ldr	r1, [r2, #4]
	sub	r3, r3, ip
	sub	r1, r1, r0
	lsl	r1, r1, #23
	ldr	r0, .L137+12
	and	ip, r3, #255
	lsr	r1, r1, #23
	orr	ip, ip, #16384
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	lr, [r0, #4]	@ movhi
.L133:
	cmp	r3, #160
	bhi	.L134
	ldr	r1, .L137+8
	ldr	r3, [r2, #4]
	ldr	r2, [r1]
	sub	r3, r3, r2
	cmp	r3, #240
	bls	.L131
.L134:
	mov	r3, #512
	strh	r3, [r0]	@ movhi
.L131:
	ldr	lr, [sp], #4
	bx	lr
.L132:
	mov	r1, #512
	ldr	r0, .L137+12
	sub	r3, r3, ip
	strh	r1, [r0]	@ movhi
	b	.L133
.L138:
	.align	2
.L137:
	.word	fish
	.word	vOff
	.word	totalHOff
	.word	shadowOAM+960
	.size	drawFish, .-drawFish
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
	push	{r4, r5, r6, r7, r8, lr}
	bl	drawCat
	ldr	r2, .L149
	mov	r6, #512
	mov	r1, r2
	ldr	r3, .L149+4
	ldr	r5, .L149+8
	ldr	r4, .L149+12
	add	lr, r3, #240
.L142:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	strheq	r6, [r1, #8]	@ movhi
	beq	.L141
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
.L141:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L142
	mov	r5, #512
	mov	r4, #8
	ldr	r3, .L149+16
	ldr	lr, .L149+8
	add	r0, r3, #180
.L145:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrbne	ip, [r3]	@ zero_extendqisi2
	andne	r1, r1, lr
	add	r3, r3, #36
	strhne	r4, [r2, #52]	@ movhi
	strhne	r1, [r2, #50]	@ movhi
	strhne	ip, [r2, #48]	@ movhi
	strheq	r5, [r2, #48]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L145
	mov	r1, #11
	ldr	r0, .L149+20
	bl	drawBlueCar
	mov	r1, #12
	ldr	r0, .L149+24
	bl	drawBlueCar
	mov	r1, #13
	ldr	r0, .L149+28
	bl	drawBlueCar
	mov	r1, #14
	ldr	r0, .L149+32
	bl	drawBlueCar
	mov	r1, #15
	ldr	r0, .L149+36
	bl	drawBlueCar
	bl	drawDoor
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawFish
.L150:
	.align	2
.L149:
	.word	shadowOAM
	.word	zombie
	.word	511
	.word	-32768
	.word	hairball
	.word	blueCar
	.word	blueCar+28
	.word	blueCar+56
	.word	blueCar+84
	.word	blueCar+112
	.size	drawGame, .-drawGame
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
	ldr	r1, .L154
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L154+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L152
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L152:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L155:
	.align	2
.L154:
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
	ldr	r1, .L159
	add	r3, r3, r3, lsl #16
	ldr	ip, .L159+4
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	ip, r1, ror #2
	bcc	.L157
	add	r1, r0, #40
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r0, #40]
	strge	r3, [r0, #40]
.L157:
	add	r2, r2, #1
	str	r2, [r0, #36]
	bx	lr
.L160:
	.align	2
.L159:
	.word	715827880
	.word	357913940
	.size	animateZombie, .-animateZombie
	.align	2
	.global	animateBlueCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBlueCar, %function
animateBlueCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updateBlueCar
	.size	animateBlueCar, .-animateBlueCar
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
	ldr	r0, .L169
	ldr	r3, .L169+4
	push	{r4, lr}
	ldr	r1, .L169+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L169+12
	mov	r3, #0
	mov	r2, r0
.L165:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L168
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L165
	pop	{r4, lr}
	bx	lr
.L168:
	mov	r4, #1
	ldr	ip, .L169+16
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
.L170:
	.align	2
.L169:
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
	ldr	r5, .L200
	ldr	r4, .L200+4
	ldr	r6, .L200+8
	ldr	r7, .L200+12
	ldr	r8, .L200+16
	ldr	r9, .L200+20
	sub	sp, sp, #16
	add	r10, r5, #140
.L174:
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
	add	r5, r5, #28
	bne	.L197
	cmp	r10, r5
	str	r0, [r9]
	bne	.L174
.L173:
	ldr	r5, .L200+24
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
	ldrne	r3, .L200+28
	ldr	r10, .L200+32
	strne	r2, [r3]
	ldr	r1, [r6]
	ldm	r10, {r2, r3}
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
	ldr	r2, [r4, #28]
	str	ip, [sp, #12]
	sub	r1, r1, #10
	sub	r0, r0, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r3, #0
	movne	r2, #1
	strne	r3, [r10, #16]
	ldr	r3, .L200+36
	ldrh	r3, [r3, #48]
	strne	r2, [r4, #44]
	tst	r3, #64
	bne	.L177
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #16]
	sub	r3, r3, r2
	cmp	r3, #0
	strgt	r3, [r4, #8]
.L177:
	ldr	r3, .L200+36
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L178
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	cmp	r3, #143
	strle	r3, [r4, #8]
.L178:
	ldr	r3, .L200+36
	ldrh	r2, [r3, #48]
	ldr	r3, .L200+40
	tst	r2, #16
	ldr	r0, [r3]
	movne	r3, #1
	ldr	r2, [r4, #12]
	strne	r3, [r4, #36]
	bne	.L184
	ldr	r1, [r4, #28]
	ldr	ip, .L200+44
	add	r1, r2, r1
	cmp	r1, ip
	bgt	.L180
	ldr	r1, [r9]
	cmp	r1, #0
	addeq	r2, r2, #1
	streq	r2, [r4, #12]
.L180:
	ldr	r1, .L200+48
	ldr	r1, [r1]
	cmp	r1, #30
	bgt	.L181
	ldr	ip, .L200+52
	ldr	lr, .L200+56
	ldr	r1, [ip]
	cmp	r1, lr
	bgt	.L181
	ldr	lr, [r4, #4]
	cmp	lr, #80
	ble	.L181
	ldr	lr, [r7]
	add	r1, r1, #1
	add	r0, r0, #1
	add	lr, lr, #1
	str	r1, [ip]
	str	r0, [r3]
	str	lr, [r7]
.L181:
	ldr	r1, [r4, #32]
	add	r3, r1, r1, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r1, r3, lsl #3
	ldr	ip, .L200+60
	add	r3, r3, r3, lsl #15
	add	r3, r1, r3, lsl #3
	sub	r3, ip, r3
	cmp	ip, r3, ror #1
	bcs	.L198
.L182:
	add	r1, r1, #1
	str	r1, [r4, #32]
.L184:
	ldr	r3, .L200+64
	ldr	ip, [r6]
	ldrh	r1, [r3]
	ldr	r3, [r4, #8]
	sub	r2, r2, r0
	sub	r3, r3, ip
	tst	r1, #1
	str	r2, [r4, #4]
	str	r3, [r4]
	beq	.L171
	ldr	r3, .L200+68
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L199
.L171:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L198:
	ldr	r3, [r4, #40]
	ldr	ip, [r4, #36]
	sub	r3, r3, #1
	cmp	ip, r3
	movge	r3, #0
	addlt	ip, ip, #1
	strlt	ip, [r4, #36]
	strge	r3, [r4, #36]
	b	.L182
.L197:
	mov	r3, #1
	str	r3, [r9]
	b	.L173
.L199:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	fireHairball
.L201:
	.align	2
.L200:
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
	ldr	r4, .L217
	ldr	r3, [r4]
	cmp	r3, #256
	ble	.L203
	mov	ip, #67108864
	ldr	r0, .L217+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r4]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L203:
	ldr	r1, .L217+8
	ldr	r3, [r1]
	ldr	r0, .L217+12
	ldr	r2, .L217+16
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L217+20
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L216
.L204:
	bl	updateCat
	ldr	r5, .L217+24
	add	r6, r5, #240
.L206:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	movne	r0, r5
	blne	updateZombie.part.0
.L205:
	add	r5, r5, #48
	cmp	r5, r6
	bne	.L206
	mov	r5, #0
	ldr	r1, .L217+28
	ldr	lr, .L217+32
	ldr	ip, .L217+36
	add	r0, r1, #140
.L209:
	ldr	r2, [r1, #16]
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	add	r3, r2, r3, lsl #1
	add	r3, r3, lr
	cmp	ip, r3, ror #2
	bcc	.L207
	add	r3, r1, #20
	ldm	r3, {r3, r6}
	sub	r6, r6, #1
	cmp	r3, r6
	add	r3, r3, #1
	strlt	r3, [r1, #20]
	strge	r5, [r1, #20]
.L207:
	add	r2, r2, #1
	str	r2, [r1, #16]
	add	r1, r1, #28
	cmp	r0, r1
	bne	.L209
	ldr	r0, .L217+40
	bl	updateHairball
	ldr	r0, .L217+44
	bl	updateHairball
	ldr	r0, .L217+48
	bl	updateHairball
	ldr	r0, .L217+52
	bl	updateHairball
	ldr	r0, .L217+56
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L217+60
	ldrh	r1, [r4]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L216:
	bl	fireZombie
	b	.L204
.L218:
	.align	2
.L217:
	.word	hOff
	.word	screenBlock
	.word	zombieTimer
	.word	85899344
	.word	-1030792151
	.word	42949672
	.word	zombie
	.word	blueCar
	.word	715827880
	.word	357913940
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
	.comm	fish,20,4
	.comm	door,16,4
	.comm	blueCar,140,4
	.comm	hairball,180,4
	.comm	zombie,240,4
	.comm	cat,48,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
