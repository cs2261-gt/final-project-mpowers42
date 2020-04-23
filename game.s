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
	ldr	r3, .L41
	str	r4, [r3]
	ldr	r3, .L41+4
	str	r4, [r3]
	ldr	r3, .L41+8
	str	r4, [r3]
	ldr	r3, .L41+12
	str	r4, [r3]
	ldr	r3, .L41+16
	str	r4, [r3]
	ldr	r3, .L41+20
	str	r0, [r3, #12]
	ldr	r0, .L41+24
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
	ldr	r3, .L41+28
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
	mov	r2, #0
	mov	r1, #32
	ldr	r3, .L41+32
.L37:
	str	r2, [r3]
	str	r2, [r3, #4]
	add	r2, r2, #200
	cmp	r2, #1000
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	add	r3, r3, #16
	bne	.L37
	mov	r0, #5
	mov	r2, #0
	ldr	r1, .L41+36
	ldr	r3, .L41+40
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	vOff
	.word	hOff
	.word	totalHOff
	.word	playerHOff
	.word	loseGame
	.word	cat
	.word	screenBlock
	.word	hairball
	.word	blueCar
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
	ldr	r3, .L47
	add	r0, r3, #180
.L44:
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
	bne	.L44
	bx	lr
.L48:
	.align	2
.L47:
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
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #32
	ldr	r3, .L53
.L50:
	str	r2, [r3]
	str	r2, [r3, #4]
	add	r2, r2, #200
	cmp	r2, #1000
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	add	r3, r3, #16
	bne	.L50
	bx	lr
.L54:
	.align	2
.L53:
	.word	blueCar
	.size	initBlueCar, .-initBlueCar
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
	ldr	r5, .L64
	mov	r4, #0
	mov	r3, r5
.L60:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L63
	add	r4, r4, #1
	cmp	r4, #5
	add	r3, r3, #48
	bne	.L60
	pop	{r4, r5, r6, lr}
	bx	lr
.L63:
	ldr	r3, .L64+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L64+8
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	ldr	ip, .L64+12
	ldr	r2, .L64+16
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
.L65:
	.align	2
.L64:
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
	beq	.L67
	ldr	r1, [r0, #24]
	add	r1, r3, r1
	cmp	r1, #0
	ble	.L68
	ldr	r1, [r0, #16]
	add	r1, r3, r1
	cmp	r1, #158
	ble	.L73
.L68:
	mov	r1, #0
	str	r1, [r0, #32]
.L69:
	ldr	r1, [r0, #4]
	cmp	r1, #240
	movgt	r1, #0
	strgt	r1, [r0, #32]
.L67:
	ldr	ip, .L74
	ldr	r1, .L74+4
	ldr	ip, [ip]
	ldr	r1, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r1
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
.L73:
	ldr	r3, [r0, #20]
	add	r2, r2, r3
	str	r1, [r0, #8]
	mov	r3, r1
	str	r2, [r0, #12]
	b	.L69
.L75:
	.align	2
.L74:
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
	ldr	r0, .L88
	push	{r4, r5, r6, r7, lr}
	mov	r2, r0
	mov	r1, r0
	mov	r5, #512
	ldr	lr, .L88+4
	ldr	ip, .L88+8
	ldr	r3, [lr, #4]
	mov	r6, ip
	orr	r3, r3, ip
	ldr	ip, [lr, #36]
	ldr	lr, [lr]
	lsl	ip, ip, #7
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L88+12
	strh	ip, [r0, #4]	@ movhi
	ldr	r4, .L88+16
	strh	lr, [r0]	@ movhi
	add	lr, r3, #240
.L79:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	strheq	r5, [r1, #8]	@ movhi
	beq	.L78
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
.L78:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L79
	mov	r6, #512
	mov	r5, #8
	ldr	r3, .L88+20
	ldr	r1, .L88
	ldr	r4, .L88+16
	add	ip, r3, #180
.L82:
	ldr	r0, [r3, #32]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	ldrbne	lr, [r3]	@ zero_extendqisi2
	andne	r0, r0, r4
	add	r3, r3, #36
	strhne	r5, [r1, #44]	@ movhi
	strhne	r0, [r1, #42]	@ movhi
	strhne	lr, [r1, #40]	@ movhi
	strheq	r6, [r1, #40]	@ movhi
	cmp	ip, r3
	add	r1, r1, #8
	bne	.L82
	mov	r7, #40
	ldr	r1, .L88+24
	ldr	r3, .L88+28
	ldrh	r6, [r1]
	ldrh	r5, [r3]
	ldr	r0, .L88+32
	ldr	r4, .L88+36
	ldr	lr, .L88+16
	ldr	ip, .L88+8
.L83:
	ldm	r0, {r1, r3}
	sub	r3, r3, r5
	and	r3, r3, lr
	sub	r1, r1, r6
	orr	r3, r3, ip
	and	r1, r1, #255
	strh	r7, [r2, #84]	@ movhi
	strh	r3, [r2, #82]	@ movhi
	strh	r1, [r2, #80]	@ movhi
	add	r2, r2, #8
	cmp	r4, r2
	add	r0, r0, #16
	bne	.L83
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	shadowOAM
	.word	cat
	.word	-32768
	.word	zombie
	.word	511
	.word	hairball
	.word	vOff
	.word	totalHOff
	.word	blueCar
	.word	shadowOAM+40
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
	ldr	r0, .L91
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #36]
	ldr	r2, .L91+4
	ldr	r0, [r0]
	lsl	r1, r1, #7
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r2, .L113
	ldr	r3, [r0, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	ip, #40
	mvn	r3, r3, lsr #17
	str	lr, [sp, #-4]!
	ldr	lr, .L113+4
	ldr	r2, [r0]
	ldr	lr, [lr]
	ldr	r0, .L113+8
	sub	r2, r2, lr
	and	r2, r2, #255
	lsl	lr, r1, #3
	add	r1, r0, r1, lsl #3
	strh	r2, [r0, lr]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L114:
	.align	2
.L113:
	.word	totalHOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlueCar, .-drawBlueCar
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
	ldr	r1, .L118
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L118+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L116
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L116:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L119:
	.align	2
.L118:
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
	ldr	r1, .L123
	add	r3, r3, r3, lsl #16
	ldr	ip, .L123+4
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	ip, r1, ror #2
	bcc	.L121
	add	r1, r0, #40
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r0, #40]
	strge	r3, [r0, #40]
.L121:
	add	r2, r2, #1
	str	r2, [r0, #36]
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r0, .L132
	ldr	r3, .L132+4
	push	{r4, lr}
	ldr	r1, .L132+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L132+12
	mov	r3, #0
	mov	r2, r0
.L128:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L131
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L128
	pop	{r4, lr}
	bx	lr
.L131:
	mov	r4, #1
	ldr	ip, .L132+16
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
.L133:
	.align	2
.L132:
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
	ldr	r3, .L152
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, lr}
	ldr	r3, .L152+4
	bne	.L135
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	sub	r2, r2, r1
	cmp	r2, #0
	strgt	r2, [r3, #8]
.L135:
	ldr	r2, .L152
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L136
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	add	r2, r2, r1
	cmp	r2, #143
	strle	r2, [r3, #8]
.L136:
	ldr	r2, .L152
	ldrh	r1, [r2, #48]
	ldr	r2, .L152+8
	tst	r1, #16
	ldr	ip, [r2]
	movne	r2, #1
	ldr	r1, [r3, #12]
	strne	r2, [r3, #36]
	bne	.L142
	ldr	r0, [r3, #28]
	ldr	lr, .L152+12
	add	r0, r1, r0
	cmp	r0, lr
	ldr	r0, .L152+16
	ldr	r0, [r0]
	addle	r1, r1, #1
	strle	r1, [r3, #12]
	cmp	r0, #30
	bgt	.L139
	ldr	lr, .L152+20
	ldr	r4, .L152+24
	ldr	r0, [lr]
	cmp	r0, r4
	bgt	.L139
	ldr	r4, [r3, #4]
	cmp	r4, #80
	ble	.L139
	ldr	r5, .L152+28
	ldr	r4, [r5]
	add	r0, r0, #1
	add	ip, ip, #1
	add	r4, r4, #1
	str	r0, [lr]
	str	ip, [r2]
	str	r4, [r5]
.L139:
	ldr	r0, [r3, #32]
	add	r2, r0, r0, lsl #3
	add	r2, r2, r2, lsl #6
	add	r2, r0, r2, lsl #3
	ldr	lr, .L152+32
	add	r2, r2, r2, lsl #15
	add	r2, r0, r2, lsl #3
	sub	r2, lr, r2
	cmp	lr, r2, ror #1
	bcs	.L150
.L140:
	add	r0, r0, #1
	str	r0, [r3, #32]
.L142:
	ldr	r0, .L152+36
	ldr	r2, .L152+40
	ldr	lr, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3, #8]
	sub	r1, r1, ip
	sub	r2, r2, lr
	tst	r0, #1
	str	r1, [r3, #4]
	str	r2, [r3]
	beq	.L134
	ldr	r3, .L152+44
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L151
.L134:
	pop	{r4, r5, lr}
	bx	lr
.L150:
	ldr	r2, [r3, #40]
	ldr	lr, [r3, #36]
	sub	r2, r2, #1
	cmp	lr, r2
	movge	r2, #0
	addlt	lr, lr, #1
	strlt	lr, [r3, #36]
	strge	r2, [r3, #36]
	b	.L140
.L151:
	pop	{r4, r5, lr}
	b	fireHairball
.L153:
	.align	2
.L152:
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
	ldr	r6, .L166
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L155
	mov	ip, #67108864
	ldr	r0, .L166+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L155:
	ldr	r2, .L166+8
	ldr	r3, [r2]
	ldr	r1, .L166+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, [r1]
	ldr	r0, .L166+16
	ldr	r2, .L166+20
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L166+24
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L165
.L157:
	bl	updateCat
	ldr	r4, .L166+28
	add	r5, r4, #240
.L159:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L158:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L159
	ldr	r0, .L166+32
	bl	updateHairball
	ldr	r0, .L166+36
	bl	updateHairball
	ldr	r0, .L166+40
	bl	updateHairball
	ldr	r0, .L166+44
	bl	updateHairball
	ldr	r0, .L166+48
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L166+52
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L165:
	bl	fireZombie
	b	.L157
.L167:
	.align	2
.L166:
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
	.comm	blueCar,80,4
	.comm	hairball,180,4
	.comm	zombie,240,4
	.comm	cat,44,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
