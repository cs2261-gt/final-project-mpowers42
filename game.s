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
	sub	sp, sp, #16
	add	r6, r4, #140
.L5:
	ldr	ip, [r4, #16]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldr	r1, [r5]
	ldr	r10, [r4, #20]
	ldr	lr, [r4]
	str	ip, [sp, #12]
	ldr	ip, [r4, #4]
	str	r10, [sp, #8]
	stm	sp, {ip, lr}
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
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
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
	.type	updateHairball.part.1, %function
updateHairball.part.1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r0, #16]
	add	r2, r3, r2
	cmp	r2, #0
	ble	.L14
	ldr	r2, [r0, #8]
	add	r3, r3, r2
	cmp	r3, #158
	bgt	.L14
	ldr	r2, [r0, #4]
	ldr	r1, [r0, #12]
	add	r2, r2, r1
	cmp	r2, #239
	ble	.L16
.L14:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L16:
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
	.size	updateHairball.part.1, .-updateHairball.part.1
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
	mov	r1, #1
	mov	r2, #16
	mov	ip, #80
	mov	r0, #10
	ldr	r3, .L18
	str	ip, [r3]
	stmib	r3, {r0, r1}
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L19:
	.align	2
.L18:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, .L24
	mov	r8, #240
	mov	r4, r9
	mov	r10, #1
	ldr	r7, .L24+4
	ldr	r6, .L24+8
	sub	sp, sp, #8
	add	r5, r9, #140
.L21:
	mov	lr, pc
	bx	r7
	mov	r1, #16
	mov	ip, #0
	smull	r2, r3, r0, r6
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r10, [r4, #12]
	str	r3, [r4]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	ip, [r4, #24]
	stmib	r4, {r8, r10}
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L21
	str	r10, [r9, #24]
	add	sp, sp, #8
	@ sp needed
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
	mov	r1, #1
	mov	r2, #16
	mov	ip, #80
	mov	r0, #10
	ldr	r3, .L30
	push	{r4, lr}
	stmib	r3, {r0, r1}
	str	ip, [r3]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bl	initZombie
	mov	r1, #8
	mvn	lr, #7
	mov	r2, #0
	mov	ip, #2
	ldr	r3, .L30+4
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
	ldr	r1, .L30+8
	ldr	r3, .L30+12
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	push	{r4, r5, r6, r8, r9, lr}
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
	pop	{r4, r5, r6, r8, r9, lr}
	bx	lr
.L46:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	lsl	r4, r3, #2
	add	r6, r5, r4
	str	r2, [r6, #24]
	ldr	r3, .L47+4
	mov	lr, pc
	bx	r3
	mov	r2, #240
	ldr	r3, .L47+8
	smull	r8, r9, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r9, asr #2
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r3, [r5, r4]
	str	r2, [r6, #4]
	pop	{r4, r5, r6, r8, r9, lr}
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
	b	updateHairball.part.1
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
	ldr	r0, .L61
	mov	r4, #0
	mov	r2, r0
	mov	r1, r0
	mov	lr, #512
	mov	r5, #2
	ldr	ip, .L61+4
	ldr	r3, [ip, #4]
	orr	r3, r3, #16384
	ldr	ip, [ip]
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L61+8
	strh	r4, [r0, #4]	@ movhi
	strh	ip, [r0]	@ movhi
	add	ip, r3, #140
.L54:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	r0, [r3, #4]
	ldrne	r4, [r3]
	orrne	r0, r0, #16384
	add	r3, r3, #28
	strhne	r5, [r1, #12]	@ movhi
	strhne	r0, [r1, #10]	@ movhi
	strhne	r4, [r1, #8]	@ movhi
	strheq	lr, [r1, #8]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L54
	mov	ip, #512
	mov	r4, #4
	ldr	r3, .L61+12
	add	r0, r3, #140
.L57:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	lr, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #28
	strhne	r4, [r2, #20]	@ movhi
	strhne	lr, [r2, #16]	@ movhi
	strhne	r1, [r2, #18]	@ movhi
	strheq	ip, [r2, #16]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L57
	pop	{r4, r5, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	shadowOAM
	.word	cat
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
	mov	r1, #0
	ldr	r3, .L64
	ldm	r3, {r0, r2}
	ldr	r3, .L64+4
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
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
	bne	.L73
	mov	r2, #512
	ldr	r3, .L74
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L73:
	str	lr, [sp, #-4]!
	mov	lr, #2
	ldr	r3, [r0, #4]
	ldr	ip, .L74
	ldr	r0, [r0]
	lsl	r1, r1, #3
	add	r2, ip, r1
	orr	r3, r3, #16384
	strh	r0, [ip, r1]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L75:
	.align	2
.L74:
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
	bne	.L83
	mov	r2, #512
	ldr	r3, .L84
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L83:
	mov	ip, #4
	ldr	r2, .L84
	str	lr, [sp, #-4]!
	lsl	r1, r1, #3
	ldr	lr, [r0]
	ldr	r0, [r0, #4]
	add	r3, r2, r1
	strh	lr, [r2, r1]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r0, .L97
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L96
.L87:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #28
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L87
.L96:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #1
	rsb	r3, r3, r3, lsl #3
	ldr	r2, .L97+4
	lsl	r3, r3, #2
	add	ip, r0, r3
	ldr	r6, [r2, #16]
	ldr	r5, [r2, #20]
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
	str	r1, [r0, r3]
	str	r2, [ip, #4]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L98:
	.align	2
.L97:
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
	@ link register save eliminated.
	ldr	r3, .L110
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L100
	ldr	r2, .L110+4
	ldr	r3, [r2]
	ldr	r1, [r2, #8]
	sub	r3, r3, r1
	cmp	r3, #0
	ble	.L100
.L108:
	str	r3, [r2]
.L101:
	ldr	r3, .L110+8
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L110+12
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	fireHairball
.L100:
	ldr	r3, .L110
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L102
	ldr	r2, .L110+4
	ldr	r3, [r2]
	ldr	r1, [r2, #8]
	add	r3, r3, r1
	cmp	r3, #143
	ble	.L108
.L102:
	ldr	r3, .L110
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L103
	ldr	r2, .L110+4
	ldr	r3, [r2, #4]
	ldr	r1, [r2, #12]
	sub	r3, r3, r1
	cmp	r3, #0
	ble	.L103
.L109:
	str	r3, [r2, #4]
	b	.L101
.L103:
	ldr	r3, .L110
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L101
	ldr	r2, .L110+4
	ldr	r3, [r2, #4]
	ldr	r1, [r2, #12]
	add	r3, r3, r1
	cmp	r3, #223
	bgt	.L101
	b	.L109
.L111:
	.align	2
.L110:
	.word	67109120
	.word	cat
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
	ldr	r1, .L130
	ldr	r2, [r1]
	ldr	r3, .L130+4
	add	r2, r2, #1
	push	{r4, r5, r6, lr}
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r5, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	str	r2, [r1]
	beq	.L127
.L113:
	bl	updateCat
	ldr	r4, .L130+8
	add	r5, r4, #140
.L115:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L128
.L114:
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L115
	ldr	r4, .L130+12
	add	r5, r4, #140
.L117:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L129
.L116:
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L117
	pop	{r4, r5, r6, lr}
	bx	lr
.L129:
	mov	r0, r4
	bl	updateHairball.part.1
	b	.L116
.L128:
	mov	r0, r4
	bl	updateZombie.part.0
	b	.L114
.L127:
	bl	fireZombie
	b	.L113
.L131:
	.align	2
.L130:
	.word	zombieTimer
	.word	1374389535
	.word	zombie
	.word	hairball
	.size	updateGame, .-updateGame
	.comm	zombieTimer,4,4
	.comm	zombiesRemaining,4,4
	.comm	hairball,140,4
	.comm	zombie,140,4
	.comm	cat,24,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
