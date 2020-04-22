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
	ldr	ip, .L24
	add	r3, r3, r3, lsl #16
	ldr	lr, .L24+4
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
	ldr	r4, .L24+8
	str	r1, [r5, #36]
	ldr	r3, [r5, #24]
	ldr	r1, [r5]
	ldr	r7, .L24+12
	ldr	r8, .L24+16
	add	r6, r4, #180
.L7:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	bne	.L22
.L5:
	add	r4, r4, #36
	cmp	r6, r4
	bne	.L7
	ldr	ip, .L24+20
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
	bne	.L23
.L8:
	ldr	r2, .L24+24
	ldr	r3, .L24+28
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
.L23:
	ldr	r3, .L24+32
	mov	lr, pc
	bx	r3
	b	.L8
.L25:
	.align	2
.L24:
	.word	715827880
	.word	357913940
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
	ldr	r2, .L28
	ldr	r3, .L28+4
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L28+8
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
.L29:
	.align	2
.L28:
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
	ldr	r4, .L34
	ldr	r8, .L34+4
	ldr	r9, .L34+8
	ldr	fp, .L34+12
	ldr	r7, .L34+16
	add	r6, r4, #240
.L31:
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
	str	ip, [r4, #12]
	str	r2, [r4, #32]
	str	r2, [r4, #36]
	str	r2, [r4, #40]
	str	r1, [r4, #44]
	add	r4, r4, #48
	cmp	r4, r6
	bne	.L31
	ldr	r3, .L34
	str	r5, [r3, #32]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L42
	str	r4, [r3]
	ldr	r3, .L42+4
	str	r4, [r3]
	ldr	r3, .L42+8
	str	r4, [r3]
	ldr	r3, .L42+12
	str	r4, [r3]
	ldr	r3, .L42+16
	str	r0, [r3, #12]
	ldr	r0, .L42+20
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
	ldr	r3, .L42+24
	add	r0, r3, #180
.L37:
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
	bne	.L37
	mov	r1, #0
	mov	r0, #32
	mov	r2, r1
	ldr	r3, .L42+28
.L38:
	str	r2, [r3]
	add	r2, r2, #35
	cmp	r2, #175
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	add	r1, r1, #120
	add	r3, r3, #16
	bne	.L38
	mov	r0, #5
	mov	r2, #0
	ldr	r1, .L42+32
	ldr	r3, .L42+36
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	vOff
	.word	hOff
	.word	totalHOff
	.word	playerHOff
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
	ldr	r3, .L48
	add	r0, r3, #180
.L45:
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
	bne	.L45
	bx	lr
.L49:
	.align	2
.L48:
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
	mov	r1, #0
	mov	r0, #32
	mov	r2, r1
	ldr	r3, .L54
.L51:
	str	r2, [r3]
	add	r2, r2, #35
	cmp	r2, #175
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	add	r1, r1, #120
	add	r3, r3, #16
	bne	.L51
	bx	lr
.L55:
	.align	2
.L54:
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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L89
	push	{r4, r5, r6, r7, lr}
	mov	r3, r0
	mov	r1, r0
	mov	r5, #512
	ldr	lr, .L89+4
	ldr	ip, .L89+8
	ldr	r2, [lr, #4]
	mov	r6, ip
	orr	r2, r2, ip
	ldr	ip, [lr, #36]
	ldr	lr, [lr]
	lsl	ip, ip, #7
	strh	r2, [r0, #2]	@ movhi
	ldr	r2, .L89+12
	strh	ip, [r0, #4]	@ movhi
	ldr	r4, .L89+16
	strh	lr, [r0]	@ movhi
	add	lr, r2, #240
.L80:
	ldr	r0, [r2, #32]
	cmp	r0, #0
	strheq	r5, [r1, #8]	@ movhi
	beq	.L79
	ldr	ip, [r2, #4]
	ldr	r0, [r2, #40]
	ldrb	r7, [r2]	@ zero_extendqisi2
	and	ip, ip, r4
	lsl	r0, r0, #7
	orr	ip, ip, r6
	add	r0, r0, #4
	strh	ip, [r1, #10]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	strh	r7, [r1, #8]	@ movhi
.L79:
	add	r2, r2, #48
	cmp	r2, lr
	add	r1, r1, #8
	bne	.L80
	mov	r6, #512
	mov	r5, #8
	ldr	r2, .L89+20
	ldr	r1, .L89
	ldr	r4, .L89+16
	add	ip, r2, #180
.L83:
	ldr	r0, [r2, #32]
	cmp	r0, #0
	ldrne	r0, [r2, #4]
	ldrbne	lr, [r2]	@ zero_extendqisi2
	andne	r0, r0, r4
	add	r2, r2, #36
	strhne	r5, [r1, #44]	@ movhi
	strhne	r0, [r1, #42]	@ movhi
	strhne	lr, [r1, #40]	@ movhi
	strheq	r6, [r1, #40]	@ movhi
	cmp	r2, ip
	add	r1, r1, #8
	bne	.L83
	mov	r5, #40
	ldr	r1, .L89+24
	ldr	r4, .L89+28
	ldr	lr, .L89+16
	ldr	ip, .L89+8
.L84:
	ldr	r2, [r1, #4]
	ldrb	r0, [r1]	@ zero_extendqisi2
	and	r2, r2, lr
	orr	r2, r2, ip
	strh	r5, [r3, #84]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	strh	r0, [r3, #80]	@ movhi
	add	r3, r3, #8
	cmp	r4, r3
	add	r1, r1, #16
	bne	.L84
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	shadowOAM
	.word	cat
	.word	-32768
	.word	zombie
	.word	511
	.word	hairball
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
	ldr	r0, .L92
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #36]
	ldr	r2, .L92+4
	ldr	r0, [r0]
	lsl	r1, r1, #7
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L93:
	.align	2
.L92:
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
	beq	.L95
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r0, #40]
	ldr	ip, .L101
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
.L95:
	mov	r2, #512
	ldr	r3, .L101
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L102:
	.align	2
.L101:
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
	beq	.L104
	mov	ip, #8
	ldr	r3, [r0, #4]
	ldr	r2, .L110
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
.L104:
	mov	r2, #512
	ldr	r3, .L110
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L111:
	.align	2
.L110:
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
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	ip, #40
	mvn	r3, r3, lsr #17
	ldr	r2, .L114
	str	lr, [sp, #-4]!
	ldrb	lr, [r0]	@ zero_extendqisi2
	lsl	r0, r1, #3
	add	r1, r2, r1, lsl #3
	strh	lr, [r2, r0]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L115:
	.align	2
.L114:
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
	ldr	r1, .L119
	ldr	r2, [r1, #32]
	add	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L119+4
	add	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	bcc	.L117
	add	r0, r1, #36
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r3, [r1, #36]
.L117:
	add	r2, r2, #1
	str	r2, [r1, #32]
	bx	lr
.L120:
	.align	2
.L119:
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
	ldr	r1, .L124
	add	r3, r3, r3, lsl #16
	ldr	ip, .L124+4
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	ip, r1, ror #2
	bcc	.L122
	add	r1, r0, #40
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r0, #40]
	strge	r3, [r0, #40]
.L122:
	add	r2, r2, #1
	str	r2, [r0, #36]
	bx	lr
.L125:
	.align	2
.L124:
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
	ldr	r0, .L137
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L136
.L127:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L127
.L136:
	push	{r4, lr}
	mov	r4, #1
	ldr	ip, .L137+4
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
.L138:
	.align	2
.L137:
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
	ldr	r3, .L157
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, lr}
	ldr	r3, .L157+4
	bne	.L140
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	sub	r2, r2, r1
	cmp	r2, #0
	strgt	r2, [r3, #8]
.L140:
	ldr	r2, .L157
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L141
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	add	r2, r2, r1
	cmp	r2, #143
	strle	r2, [r3, #8]
.L141:
	ldr	r2, .L157
	ldrh	r1, [r2, #48]
	ldr	r2, .L157+8
	tst	r1, #16
	ldr	ip, [r2]
	movne	r2, #1
	ldr	r1, [r3, #12]
	strne	r2, [r3, #36]
	bne	.L147
	ldr	r0, [r3, #28]
	ldr	lr, .L157+12
	add	r0, r1, r0
	cmp	r0, lr
	ldr	r0, .L157+16
	ldr	r0, [r0]
	addle	r1, r1, #1
	strle	r1, [r3, #12]
	cmp	r0, #30
	bgt	.L144
	ldr	lr, .L157+20
	ldr	r4, .L157+24
	ldr	r0, [lr]
	cmp	r0, r4
	bgt	.L144
	ldr	r4, [r3, #4]
	cmp	r4, #80
	ble	.L144
	ldr	r5, .L157+28
	ldr	r4, [r5]
	add	r0, r0, #1
	add	ip, ip, #1
	add	r4, r4, #1
	str	r0, [lr]
	str	ip, [r2]
	str	r4, [r5]
.L144:
	ldr	r0, [r3, #32]
	add	r2, r0, r0, lsl #3
	add	r2, r2, r2, lsl #6
	add	r2, r0, r2, lsl #3
	ldr	lr, .L157+32
	add	r2, r2, r2, lsl #15
	add	r2, r0, r2, lsl #3
	sub	r2, lr, r2
	cmp	lr, r2, ror #1
	bcs	.L155
.L145:
	add	r0, r0, #1
	str	r0, [r3, #32]
.L147:
	ldr	r0, .L157+36
	ldr	r2, .L157+40
	ldr	lr, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3, #8]
	sub	r1, r1, ip
	sub	r2, r2, lr
	tst	r0, #1
	str	r1, [r3, #4]
	str	r2, [r3]
	beq	.L139
	ldr	r3, .L157+44
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L156
.L139:
	pop	{r4, r5, lr}
	bx	lr
.L155:
	ldr	r2, [r3, #40]
	ldr	lr, [r3, #36]
	sub	r2, r2, #1
	cmp	lr, r2
	movge	r2, #0
	addlt	lr, lr, #1
	strlt	lr, [r3, #36]
	strge	r2, [r3, #36]
	b	.L145
.L156:
	pop	{r4, r5, lr}
	b	fireHairball
.L158:
	.align	2
.L157:
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
	ldr	r6, .L171
	ldr	r3, [r6]
	cmp	r3, #256
	ble	.L160
	mov	ip, #67108864
	ldr	r0, .L171+4
	ldr	r1, [r0]
	add	r1, r1, #1
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	sub	r3, r3, #256
	lsr	r2, r2, #16
	str	r3, [r6]
	str	r1, [r0]
	strh	r2, [ip, #8]	@ movhi
.L160:
	ldr	r2, .L171+8
	ldr	r3, [r2]
	ldr	r1, .L171+12
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, [r1]
	ldr	r0, .L171+16
	ldr	r2, .L171+20
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L171+24
	cmp	r0, r2, ror #2
	str	r3, [r1]
	bcs	.L170
.L162:
	bl	updateCat
	ldr	r4, .L171+28
	add	r5, r4, #240
.L164:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	movne	r0, r4
	blne	updateZombie.part.0
.L163:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L164
	ldr	r0, .L171+32
	bl	updateHairball
	ldr	r0, .L171+36
	bl	updateHairball
	ldr	r0, .L171+40
	bl	updateHairball
	ldr	r0, .L171+44
	bl	updateHairball
	ldr	r0, .L171+48
	bl	updateHairball
	mov	r3, #67108864
	ldr	r2, .L171+52
	ldrh	r1, [r6]
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L170:
	bl	fireZombie
	b	.L162
.L172:
	.align	2
.L171:
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
