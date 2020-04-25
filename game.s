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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
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
	ldr	ip, .L22
	add	r3, r3, r3, lsl #16
	ldr	lr, .L22+4
	add	r3, r1, r3, lsl #1
	add	ip, r3, ip
	cmp	lr, ip, ror #2
	sub	sp, sp, #16
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
	mov	r9, #0
	add	r1, r1, #1
	ldr	r4, .L22+8
	str	r1, [r5, #36]
	ldr	r3, [r5, #24]
	ldr	r1, [r5]
	ldr	r7, .L22+12
	ldr	r8, .L22+16
	add	r0, r0, #5
	add	r6, r4, #180
.L7:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	bne	.L21
.L5:
	add	r4, r4, #36
	cmp	r6, r4
	bne	.L7
	ldr	ip, .L22+20
	ldr	lr, [ip, #4]
	add	lr, lr, #4
	ldr	r4, [ip, #24]
	str	lr, [sp]
	ldr	lr, [ip, #28]
	ldr	ip, [ip]
	str	r4, [sp, #12]
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L8
	ldr	r3, [r5, #32]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L22+24
	strne	r2, [r3]
.L8:
	ldr	r2, .L22+28
	ldr	r3, .L22+32
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #12]
	sub	r2, r2, r0
	sub	r3, r3, r1
	stm	r5, {r2, r3}
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L21:
	ldr	ip, [r4, #4]
	add	ip, ip, #1
	ldr	lr, [r4, #24]
	str	ip, [sp]
	ldr	r10, [r4, #28]
	str	lr, [sp, #12]
	ldr	ip, [r4]
	str	r10, [sp, #8]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L6
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	add	r0, r0, #5
	b	.L5
.L6:
	str	r9, [r4, #32]
	ldr	r3, [r8]
	ldr	r0, [r5, #4]
	sub	r3, r3, #1
	str	r3, [r8]
	str	r9, [r5, #32]
	ldr	r1, [r5]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	add	r0, r0, #5
	b	.L5
.L23:
	.align	2
.L22:
	.word	715827880
	.word	357913940
	.word	hairball
	.word	collision
	.word	zombiesRemaining
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
	mov	r10, #32
	ldr	r4, .L32
	ldr	r8, .L32+4
	ldr	r9, .L32+8
	ldr	fp, .L32+12
	ldr	r7, .L32+16
	add	r6, r4, #240
.L29:
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
	ldr	r3, .L38
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
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r8, .L44
	ldr	r4, .L44+4
	ldr	r7, .L44+8
	ldr	r6, .L44+12
	add	r5, r8, #80
.L41:
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
	rsb	r3, r3, r2, asr #6
	rsb	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl #2
	sub	r0, r0, r3, lsl #3
	str	r0, [r8, #4]
	add	r8, r8, #16
	cmp	r8, r5
	bne	.L41
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	blueCar
	.word	rand
	.word	2114445439
	.word	274877907
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
	ldr	r4, .L48
	ldr	r2, .L48+4
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	mov	lr, pc
	bx	r2
	ldr	r3, .L48+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #8]
	sub	r0, r0, r3, lsl #5
	ldr	r3, .L48+12
	sub	r0, r0, r2
	stm	r4, {r0, r3}
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	door
	.word	rand
	.word	1717986919
	.word	978
	.size	initDoor, .-initDoor
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
	ldr	r3, .L54
	str	r4, [r3]
	ldr	r3, .L54+4
	str	r4, [r3]
	ldr	r3, .L54+8
	str	r4, [r3]
	ldr	r3, .L54+12
	str	r4, [r3]
	ldr	r3, .L54+16
	str	r4, [r3]
	ldr	r3, .L54+20
	str	r4, [r3]
	ldr	r3, .L54+24
	str	r4, [r3]
	ldr	r3, .L54+28
	str	r0, [r3, #12]
	ldr	r0, .L54+32
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r5, [r3, #40]
	str	lr, [r3, #8]
	str	ip, [r0]
	bl	initZombie
	mov	r2, #8
	mov	r0, #2
	ldr	r3, .L54+36
	add	r1, r3, #180
.L51:
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
	bne	.L51
	bl	initBlueCar
	bl	initDoor
	mov	r1, #5
	ldr	r2, .L54+40
	ldr	r3, .L54+44
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	.align	2
.L54:
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
	ldr	r5, .L65
	mov	r4, #0
	mov	r3, r5
.L61:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L64
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #48
	bne	.L61
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	ldr	r3, .L65+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L65+8
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	ldr	ip, .L65+12
	ldr	r2, .L65+16
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
.L66:
	.align	2
.L65:
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
	beq	.L68
	ldr	r1, [r0, #24]
	add	r1, r3, r1
	cmp	r1, #0
	ble	.L69
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #158
	ble	.L74
.L69:
	mov	r1, #0
	str	r1, [r0, #32]
.L70:
	ldr	r1, [r0, #4]
	cmp	r1, #240
	movgt	r1, #0
	strgt	r1, [r0, #32]
.L68:
	ldr	ip, .L75
	ldr	r1, .L75+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r1
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
.L74:
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	str	r1, [r0, #8]
	mov	r3, r1
	str	r2, [r0, #12]
	b	.L70
.L76:
	.align	2
.L75:
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
	ldr	r0, .L78
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #36]
	ldr	r2, .L78+4
	ldr	r0, [r0]
	lsl	r1, r1, #7
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L79:
	.align	2
.L78:
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
	beq	.L81
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #40]
	ldr	ip, .L87
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
.L81:
	mov	r2, #512
	ldr	r3, .L87
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L88:
	.align	2
.L87:
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
	beq	.L90
	mov	ip, #8
	ldr	r3, [r0, #4]
	ldr	r2, .L96
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
.L90:
	mov	r2, #512
	ldr	r3, .L96
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L97:
	.align	2
.L96:
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
	ldr	r2, .L104
	ldr	r3, [r0, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	cmp	r3, #240
	bls	.L99
	mov	r2, #512
	ldr	r3, .L104+4
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L99:
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	ip, #40
	mvn	r3, r3, lsr #17
	str	lr, [sp, #-4]!
	ldr	lr, .L104+8
	ldr	r2, [r0]
	ldr	lr, [lr]
	ldr	r0, .L104+4
	sub	r2, r2, lr
	and	r2, r2, #255
	lsl	lr, r1, #3
	add	r1, r0, r1, lsl #3
	strh	r2, [r0, lr]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L105:
	.align	2
.L104:
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
	ldr	r2, .L111
	ldr	r3, .L111+4
	ldr	r1, [r2, #4]
	ldr	r3, [r3]
	sub	r1, r1, r3
	lsl	r3, r1, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	ldr	r0, .L111+8
	ldr	r2, [r2]
	ldr	r0, [r0]
	sub	r2, r2, r0
	cmp	r1, #240
	cmpls	r2, #160
	mvn	r3, r3, lsr #17
	ldr	r1, .L111+12
	mov	r0, #168
	strh	r3, [r1, #2]	@ movhi
	movhi	r3, #512
	and	r2, r2, #255
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strhhi	r3, [r1]	@ movhi
	bx	lr
.L112:
	.align	2
.L111:
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
	ldr	r0, .L127
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r2, r0
	mov	r1, r0
	mov	r5, #512
	ldr	lr, .L127+4
	ldr	ip, .L127+8
	ldr	r3, [lr, #4]
	mov	r6, ip
	orr	r3, r3, ip
	ldr	ip, [lr, #36]
	ldr	lr, [lr]
	lsl	ip, ip, #7
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L127+12
	strh	ip, [r0, #4]	@ movhi
	ldr	r4, .L127+16
	strh	lr, [r0]	@ movhi
	add	lr, r3, #240
.L116:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	strheq	r5, [r1, #8]	@ movhi
	beq	.L115
	ldr	ip, [r3, #4]
	ldr	r0, [r3, #40]
	ldrb	r7, [r3]	@ zero_extendqisi2
	and	ip, ip, r4
	lsl	r0, r0, #7
	orr	ip, ip, r6
	add	r0, r0, #4
	strh	ip, [r1, #10]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	strh	r7, [r1, #8]	@ movhi
.L115:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L116
	mov	r6, #512
	mov	r5, #8
	ldr	r3, .L127+20
	ldr	r1, .L127
	ldr	r4, .L127+16
	add	ip, r3, #180
.L119:
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
	bne	.L119
	mov	r8, #40
	mov	r7, #512
	ldr	r1, .L127+24
	ldr	r3, .L127+28
	ldr	r0, [r1]
	ldrh	r6, [r3]
	lsl	lr, r0, #16
	ldr	r1, .L127+32
	ldr	ip, .L127+36
	ldr	r5, .L127+16
	ldr	r4, .L127+8
	lsr	lr, lr, #16
.L122:
	ldr	r3, [r1, #4]
	sub	r9, r3, r0
	cmp	r9, #240
	ldrls	r9, [r1]
	subls	r3, r3, lr
	andls	r3, r3, r5
	subls	r9, r9, r6
	orrls	r3, r3, r4
	andls	r9, r9, #255
	strhhi	r7, [r2, #88]	@ movhi
	strhls	r3, [r2, #90]	@ movhi
	strhls	r8, [r2, #92]	@ movhi
	strhls	r9, [r2, #88]	@ movhi
	add	r2, r2, #8
	cmp	ip, r2
	add	r1, r1, #16
	bne	.L122
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawDoor
.L128:
	.align	2
.L127:
	.word	shadowOAM
	.word	cat
	.word	-32768
	.word	zombie
	.word	511
	.word	hairball
	.word	totalHOff
	.word	vOff
	.word	blueCar
	.word	shadowOAM+40
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
	ldr	r1, .L132
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L132+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L130
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L130:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L133:
	.align	2
.L132:
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
	ldr	r1, .L137
	add	r3, r3, r3, lsl #16
	ldr	ip, .L137+4
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	ip, r1, ror #2
	bcc	.L135
	add	r1, r0, #40
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r0, #40]
	strge	r3, [r0, #40]
.L135:
	add	r2, r2, #1
	str	r2, [r0, #36]
	bx	lr
.L138:
	.align	2
.L137:
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
	ldr	r0, .L146
	ldr	r3, .L146+4
	push	{r4, lr}
	ldr	r1, .L146+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L146+12
	mov	r3, #0
	mov	r2, r0
.L142:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L145
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L142
	pop	{r4, lr}
	bx	lr
.L145:
	mov	r4, #1
	ldr	ip, .L146+16
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
.L147:
	.align	2
.L146:
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
	ldr	r5, .L173
	ldr	r4, .L173+4
	ldr	r6, .L173+8
	ldr	r7, .L173+12
	ldr	r8, .L173+16
	ldr	r9, .L173+20
	sub	sp, sp, #16
	add	r10, r5, #80
.L151:
	ldr	r2, [r5]
	ldr	r0, [r6]
	ldr	r3, [r5, #4]
	ldr	ip, [r7]
	sub	r2, r2, r0
	sub	r3, r3, ip
	ldr	r1, [r4]
	ldr	ip, [r5, #8]
	ldr	r0, [r4, #4]
	str	r2, [sp, #4]
	ldr	r2, [r5, #12]
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
	bne	.L170
	cmp	r10, r5
	str	r0, [r9]
	bne	.L151
.L150:
	ldr	r2, .L173+24
	ldr	ip, [r7]
	ldm	r2, {r1, r3}
	ldr	r0, [r6]
	ldr	lr, [r2, #8]
	sub	r3, r3, ip
	ldr	ip, [r2, #12]
	sub	r2, r1, r0
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
	ldrne	r3, .L173+28
	strne	r2, [r3]
	ldr	r3, .L173+32
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L153
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #16]
	sub	r3, r3, r2
	cmp	r3, #0
	strgt	r3, [r4, #8]
.L153:
	ldr	r3, .L173+32
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L154
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	cmp	r3, #143
	strle	r3, [r4, #8]
.L154:
	ldr	r3, .L173+32
	ldrh	r2, [r3, #48]
	ldr	r3, .L173+36
	tst	r2, #16
	ldr	r0, [r3]
	movne	r3, #1
	ldr	r2, [r4, #12]
	strne	r3, [r4, #36]
	bne	.L160
	ldr	r1, [r4, #28]
	ldr	ip, .L173+40
	add	r1, r2, r1
	cmp	r1, ip
	bgt	.L156
	ldr	r1, [r9]
	cmp	r1, #0
	addeq	r2, r2, #1
	streq	r2, [r4, #12]
.L156:
	ldr	r1, .L173+44
	ldr	r1, [r1]
	cmp	r1, #30
	bgt	.L157
	ldr	ip, .L173+48
	ldr	lr, .L173+52
	ldr	r1, [ip]
	cmp	r1, lr
	bgt	.L157
	ldr	lr, [r4, #4]
	cmp	lr, #80
	ble	.L157
	ldr	lr, [r7]
	add	r1, r1, #1
	add	r0, r0, #1
	add	lr, lr, #1
	str	r1, [ip]
	str	r0, [r3]
	str	lr, [r7]
.L157:
	ldr	r1, [r4, #32]
	add	r3, r1, r1, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r1, r3, lsl #3
	ldr	ip, .L173+56
	add	r3, r3, r3, lsl #15
	add	r3, r1, r3, lsl #3
	sub	r3, ip, r3
	cmp	ip, r3, ror #1
	bcs	.L171
.L158:
	add	r1, r1, #1
	str	r1, [r4, #32]
.L160:
	ldr	r3, .L173+60
	ldr	ip, [r6]
	ldrh	r1, [r3]
	ldr	r3, [r4, #8]
	sub	r2, r2, r0
	sub	r3, r3, ip
	tst	r1, #1
	str	r2, [r4, #4]
	str	r3, [r4]
	beq	.L148
	ldr	r3, .L173+64
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L172
.L148:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L171:
	ldr	r3, [r4, #40]
	ldr	ip, [r4, #36]
	sub	r3, r3, #1
	cmp	ip, r3
	movge	r3, #0
	addlt	ip, ip, #1
	strlt	ip, [r4, #36]
	strge	r3, [r4, #36]
	b	.L158
.L170:
	mov	r3, #1
	str	r3, [r9]
	b	.L150
.L172:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	fireHairball
.L174:
	.align	2
.L173:
	.word	blueCar
	.word	cat
	.word	vOff
	.word	totalHOff
	.word	collision
	.word	collided
	.word	door
	.word	winGame
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
	ldr	r6, .L186
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L176
	mov	ip, #67108864
	ldr	r0, .L186+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L176:
	ldr	r1, .L186+8
	ldr	r3, [r1]
	ldr	r0, .L186+12
	ldr	r2, .L186+16
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L186+20
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L185
.L177:
	bl	updateCat
	ldr	r4, .L186+24
	add	r5, r4, #240
.L179:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L178:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L179
	ldr	r0, .L186+28
	bl	updateHairball
	ldr	r0, .L186+32
	bl	updateHairball
	ldr	r0, .L186+36
	bl	updateHairball
	ldr	r0, .L186+40
	bl	updateHairball
	ldr	r0, .L186+44
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L186+48
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L185:
	bl	fireZombie
	b	.L177
.L187:
	.align	2
.L186:
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
	.comm	door,16,4
	.comm	blueCar,80,4
	.comm	hairball,180,4
	.comm	zombie,240,4
	.comm	cat,44,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
