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
	ldr	ip, .L23
	add	r3, r3, r3, lsl #16
	ldr	lr, .L23+4
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
	mov	r9, #0
	add	r1, r1, #1
	ldr	r4, .L23+8
	str	r1, [r5, #36]
	ldr	r3, [r5, #24]
	ldr	r1, [r5]
	ldr	r7, .L23+12
	ldr	r8, .L23+16
	add	r6, r4, #180
.L7:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	bne	.L22
.L5:
	add	r4, r4, #36
	cmp	r4, r6
	bne	.L7
	ldr	ip, .L23+20
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
	beq	.L8
	ldr	r3, [r5, #32]
	cmp	r3, #0
	movne	r2, #1
	ldrne	r3, .L23+24
	strne	r2, [r3]
.L8:
	ldr	r2, .L23+28
	ldr	r3, .L23+32
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
.L22:
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
	b	.L5
.L24:
	.align	2
.L23:
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
	ldr	r2, .L27
	ldr	r3, .L27+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L27+8
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #1
	mov	r10, #32
	ldr	r4, .L33
	ldr	r8, .L33+4
	ldr	r9, .L33+8
	ldr	fp, .L33+12
	ldr	r7, .L33+16
	add	r6, r4, #240
.L30:
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
	bne	.L30
	ldr	r3, .L33
	str	r5, [r3, #32]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L34:
	.align	2
.L33:
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
	ldr	r3, .L39
	add	r0, r3, #180
.L36:
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
	bne	.L36
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r7, .L45
	ldr	r4, .L45+4
	ldr	r6, .L45+8
	ldr	r8, .L45+12
	add	r5, r7, #80
.L42:
	str	r9, [r7, #8]
	str	r9, [r7, #12]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	str	r0, [r7]
	mov	lr, pc
	bx	r4
	rsbs	r3, r0, #0
	and	r3, r3, r8
	and	r0, r0, r8
	rsbpl	r0, r3, #0
	str	r0, [r7, #4]
	add	r7, r7, #16
	cmp	r7, r5
	bne	.L42
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	blueCar
	.word	rand
	.word	2114445439
	.word	1023
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
	ldr	r4, .L49
	ldr	r2, .L49+4
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	mov	lr, pc
	bx	r2
	ldr	r3, .L49+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #8]
	sub	r0, r0, r3, lsl #5
	ldr	r3, .L49+12
	sub	r0, r0, r2
	stm	r4, {r0, r3}
	pop	{r4, lr}
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r3, .L55
	str	r4, [r3]
	ldr	r3, .L55+4
	str	r4, [r3]
	ldr	r3, .L55+8
	str	r4, [r3]
	ldr	r3, .L55+12
	str	r4, [r3]
	ldr	r3, .L55+16
	str	r4, [r3]
	ldr	r3, .L55+20
	str	r4, [r3]
	ldr	r3, .L55+24
	str	r0, [r3, #12]
	ldr	r0, .L55+28
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
	ldr	r3, .L55+32
	add	r1, r3, #180
.L52:
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
	bne	.L52
	bl	initBlueCar
	bl	initDoor
	mov	r1, #5
	ldr	r2, .L55+36
	ldr	r3, .L55+40
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	vOff
	.word	hOff
	.word	totalHOff
	.word	playerHOff
	.word	loseGame
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
	ldr	r5, .L66
	mov	r4, #0
	mov	r3, r5
.L62:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L65
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #48
	bne	.L62
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	ldr	r3, .L66+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L66+8
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	ldr	ip, .L66+12
	ldr	r2, .L66+16
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
.L67:
	.align	2
.L66:
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
	beq	.L69
	ldr	r1, [r0, #24]
	add	r1, r3, r1
	cmp	r1, #0
	ble	.L70
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #158
	ble	.L75
.L70:
	mov	r1, #0
	str	r1, [r0, #32]
.L71:
	ldr	r1, [r0, #4]
	cmp	r1, #240
	movgt	r1, #0
	strgt	r1, [r0, #32]
.L69:
	ldr	ip, .L76
	ldr	r1, .L76+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r1
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
.L75:
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	str	r1, [r0, #8]
	mov	r3, r1
	str	r2, [r0, #12]
	b	.L71
.L77:
	.align	2
.L76:
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
	ldr	r0, .L79
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #36]
	ldr	r2, .L79+4
	ldr	r0, [r0]
	lsl	r1, r1, #7
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L80:
	.align	2
.L79:
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
	beq	.L82
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #40]
	ldr	ip, .L88
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
.L82:
	mov	r2, #512
	ldr	r3, .L88
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L89:
	.align	2
.L88:
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
	beq	.L91
	mov	ip, #8
	ldr	r3, [r0, #4]
	ldr	r2, .L97
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
.L91:
	mov	r2, #512
	ldr	r3, .L97
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r3, .L105
	ldr	ip, [r0, #4]
	ldr	r3, [r3]
	sub	ip, ip, r3
	lsl	r3, ip, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	str	lr, [sp, #-4]!
	ldr	lr, .L105+4
	ldr	r2, [r0]
	ldr	r0, [lr]
	sub	r2, r2, r0
	cmp	ip, #240
	cmpls	r2, #160
	mvn	r3, r3, lsr #17
	ldr	r0, .L105+8
	lsl	lr, r1, #3
	and	r2, r2, #255
	add	r1, r0, r1, lsl #3
	strh	r2, [r0, lr]	@ movhi
	mov	ip, #40
	strh	r3, [r1, #2]	@ movhi
	movhi	r3, #512
	addhi	r0, r0, #800
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	strhhi	r3, [r0]	@ movhi
	bx	lr
.L106:
	.align	2
.L105:
	.word	totalHOff
	.word	vOff
	.word	shadowOAM
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
	ldr	r2, .L112
	ldr	r3, .L112+4
	ldr	r1, [r2, #4]
	ldr	r3, [r3]
	sub	r1, r1, r3
	lsl	r3, r1, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	ldr	r0, .L112+8
	ldr	r2, [r2]
	ldr	r0, [r0]
	sub	r2, r2, r0
	cmp	r1, #240
	cmpls	r2, #160
	mvn	r3, r3, lsr #17
	ldr	r1, .L112+12
	mov	r0, #168
	strh	r3, [r1, #2]	@ movhi
	movhi	r3, #512
	and	r2, r2, #255
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strhhi	r3, [r1]	@ movhi
	bx	lr
.L113:
	.align	2
.L112:
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
	ldr	r0, .L124
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, r0
	mov	r1, r0
	mov	r5, #512
	ldr	lr, .L124+4
	ldr	ip, .L124+8
	ldr	r3, [lr, #4]
	mov	r6, ip
	orr	r3, r3, ip
	ldr	ip, [lr, #36]
	ldr	lr, [lr]
	lsl	ip, ip, #7
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L124+12
	strh	ip, [r0, #4]	@ movhi
	ldr	r4, .L124+16
	strh	lr, [r0]	@ movhi
	add	lr, r3, #240
.L117:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	strheq	r5, [r1, #8]	@ movhi
	beq	.L116
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
.L116:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L117
	mov	r5, #512
	mov	r4, #8
	ldr	r3, .L124+20
	ldr	lr, .L124+16
	add	r0, r3, #180
.L120:
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
	bne	.L120
	mov	r1, #11
	ldr	r0, .L124+24
	bl	drawBlueCar
	mov	r1, #12
	ldr	r0, .L124+28
	bl	drawBlueCar
	mov	r1, #13
	ldr	r0, .L124+32
	bl	drawBlueCar
	mov	r1, #14
	ldr	r0, .L124+36
	bl	drawBlueCar
	mov	r1, #15
	ldr	r0, .L124+40
	bl	drawBlueCar
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawDoor
.L125:
	.align	2
.L124:
	.word	shadowOAM
	.word	cat
	.word	-32768
	.word	zombie
	.word	511
	.word	hairball
	.word	blueCar
	.word	blueCar+16
	.word	blueCar+32
	.word	blueCar+48
	.word	blueCar+64
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
	ldr	r1, .L129
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L129+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L127
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L127:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L130:
	.align	2
.L129:
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
	ldr	r1, .L134
	add	r3, r3, r3, lsl #16
	ldr	ip, .L134+4
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	ip, r1, ror #2
	bcc	.L132
	add	r1, r0, #40
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r0, #40]
	strge	r3, [r0, #40]
.L132:
	add	r2, r2, #1
	str	r2, [r0, #36]
	bx	lr
.L135:
	.align	2
.L134:
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
	ldr	r0, .L143
	ldr	r3, .L143+4
	push	{r4, lr}
	ldr	r1, .L143+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L143+12
	mov	r3, #0
	mov	r2, r0
.L139:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L142
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L139
	pop	{r4, lr}
	bx	lr
.L142:
	mov	r4, #1
	ldr	ip, .L143+16
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
.L144:
	.align	2
.L143:
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
	ldr	r4, .L166
	ldr	r5, .L166+4
	ldr	r6, .L166+8
	ldr	r8, .L166+12
	ldr	r9, .L166+16
	ldr	r7, .L166+20
	sub	sp, sp, #16
	add	r10, r4, #80
.L148:
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	ldr	ip, [r8]
	ldr	r0, [r4, #8]
	sub	r2, r2, r1
	ldr	r1, [r4, #12]
	sub	r3, r3, ip
	str	r2, [sp, #4]
	str	r3, [sp]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	add	r4, r4, #16
	bne	.L163
	cmp	r10, r4
	str	r0, [r7]
	bne	.L148
.L147:
	ldr	r3, .L166+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L149
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #16]
	sub	r3, r3, r2
	cmp	r3, #0
	strgt	r3, [r5, #8]
.L149:
	ldr	r3, .L166+24
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L150
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #16]
	add	r3, r3, r2
	cmp	r3, #143
	strle	r3, [r5, #8]
.L150:
	ldr	r3, .L166+24
	ldrh	r2, [r3, #48]
	ldr	r3, .L166+28
	tst	r2, #16
	ldr	r0, [r3]
	movne	r3, #1
	ldr	r2, [r5, #12]
	strne	r3, [r5, #36]
	bne	.L156
	ldr	r1, [r5, #28]
	ldr	ip, .L166+32
	add	r1, r2, r1
	cmp	r1, ip
	bgt	.L152
	ldr	r1, [r7]
	cmp	r1, #0
	addeq	r2, r2, #1
	streq	r2, [r5, #12]
.L152:
	ldr	r1, .L166+36
	ldr	r1, [r1]
	cmp	r1, #30
	bgt	.L153
	ldr	ip, .L166+40
	ldr	lr, .L166+44
	ldr	r1, [ip]
	cmp	r1, lr
	bgt	.L153
	ldr	lr, [r5, #4]
	cmp	lr, #80
	ble	.L153
	ldr	lr, [r8]
	add	r1, r1, #1
	add	r0, r0, #1
	add	lr, lr, #1
	str	r1, [ip]
	str	r0, [r3]
	str	lr, [r8]
.L153:
	ldr	r1, [r5, #32]
	add	r3, r1, r1, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r1, r3, lsl #3
	ldr	ip, .L166+48
	add	r3, r3, r3, lsl #15
	add	r3, r1, r3, lsl #3
	sub	r3, ip, r3
	cmp	ip, r3, ror #1
	bcs	.L164
.L154:
	add	r1, r1, #1
	str	r1, [r5, #32]
.L156:
	ldr	r3, .L166+52
	ldr	ip, [r6]
	ldrh	r1, [r3]
	ldr	r3, [r5, #8]
	sub	r2, r2, r0
	sub	r3, r3, ip
	tst	r1, #1
	str	r2, [r5, #4]
	str	r3, [r5]
	beq	.L145
	ldr	r3, .L166+56
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L165
.L145:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L164:
	ldr	r3, [r5, #40]
	ldr	ip, [r5, #36]
	sub	r3, r3, #1
	cmp	ip, r3
	movge	r3, #0
	addlt	ip, ip, #1
	strlt	ip, [r5, #36]
	strge	r3, [r5, #36]
	b	.L154
.L163:
	mov	r3, #1
	str	r3, [r7]
	b	.L147
.L165:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	fireHairball
.L167:
	.align	2
.L166:
	.word	blueCar
	.word	cat
	.word	vOff
	.word	totalHOff
	.word	collision
	.word	collided
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
	ldr	r6, .L180
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L169
	mov	ip, #67108864
	ldr	r0, .L180+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L169:
	ldr	r2, .L180+8
	ldr	r3, [r2]
	ldr	r1, .L180+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, [r1]
	ldr	r0, .L180+16
	ldr	r2, .L180+20
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L180+24
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L179
.L171:
	bl	updateCat
	ldr	r4, .L180+28
	add	r5, r4, #240
.L173:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L172:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L173
	ldr	r0, .L180+32
	bl	updateHairball
	ldr	r0, .L180+36
	bl	updateHairball
	ldr	r0, .L180+40
	bl	updateHairball
	ldr	r0, .L180+44
	bl	updateHairball
	ldr	r0, .L180+48
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L180+52
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L179:
	bl	fireZombie
	b	.L171
.L181:
	.align	2
.L180:
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
	.comm	door,16,4
	.comm	blueCar,80,4
	.comm	hairball,180,4
	.comm	zombie,240,4
	.comm	cat,44,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
