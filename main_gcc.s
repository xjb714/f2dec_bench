	.file	"main.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z24schubfach_xjb_f32_to_decfPjPi
	.type	_Z24schubfach_xjb_f32_to_decfPjPi, @function
_Z24schubfach_xjb_f32_to_decfPjPi:
.LFB10405:
	.cfi_startproc
	endbr64
	vmovd	%xmm0, %eax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%eax, %ebx
	shrl	$23, %eax
	andl	$8388607, %ebx
	andl	$255, %eax
	movq	%rsi, %r10
	movq	%rdi, %r9
	movl	%ebx, %r8d
	movl	%eax, %esi
	je	.L8
	leal	-150(%rax), %ecx
	orl	$8388608, %r8d
	imull	$1262611, %ecx, %edi
.L2:
	leal	0(,%r8,4), %r14d
	cmpl	$1, %ebx
	leal	-524031(%rdi), %edx
	movl	%r14d, %eax
	leal	2(%r14), %r12d
	adcl	$-2, %eax
	sarl	$22, %edx
	sarl	$22, %edi
	testl	%ebx, %ebx
	cmove	%edx, %edi
	imull	$-1741647, %edi, %edx
	sarl	$19, %edx
	leal	1(%rcx,%rdx), %ebp
	movl	$31, %edx
	leaq	_ZZN15schubfach_xjb32L19ComputePow10_SingleEiE1g(%rip), %rcx
	subl	%edi, %edx
	shlx	%ebp, %r14d, %r14d
	shlx	%ebp, %r12d, %r12d
	movq	(%rcx,%rdx,8), %r11
	shlx	%ebp, %eax, %ecx
	movq	%rcx, %rax
	mulq	%r11
	movq	%rdx, -16(%rsp)
	movq	%r14, %rdx
	movq	%rax, -24(%rsp)
	movq	-24(%rsp), %rax
	mulx	%r11, %r14, %r15
	movq	%r14, %rcx
	movq	%r12, %rdx
	movq	%r15, %r14
	shrq	$32, %rcx
	mulx	%r11, %r12, %r13
	cmpl	$1, %ecx
	movq	%r12, %r11
	movl	$-3, %r12d
	seta	%cl
	shrq	$32, %r11
	movzbl	%cl, %ecx
	orl	%r15d, %ecx
	cmpl	$1, %r11d
	seta	%r11b
	andl	$1, %r8d
	shrq	$32, %rax
	movzbl	%r11b, %r11d
	orl	%r13d, %r11d
	xorl	%r13d, %r13d
	cmpl	$1, %eax
	movq	-16(%rsp), %rax
	seta	%r13b
	andl	$7, %ecx
	subl	%r8d, %r12d
	shrl	$2, %r14d
	movl	%r14d, %ebp
	imulq	$1717986919, %rbp, %rbp
	orl	%eax, %r13d
	movl	$200, %eax
	sarx	%ecx, %eax, %ecx
	addl	%r8d, %r13d
	andl	$1, %ecx
	leal	(%rcx,%r14), %eax
	shrq	$34, %rbp
	leal	0(,%rbp,4), %edx
	leal	(%rdx,%rbp), %r8d
	addl	%r8d, %r8d
	testl	%ebx, %ebx
	je	.L12
.L5:
	addl	%ebp, %edx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	sall	$3, %edx
	cmpl	%r13d, %edx
	cmovnb	%r8d, %eax
	addl	%r12d, %r11d
	addl	$37, %edx
	addl	$10, %r8d
	cmpl	%edx, %r11d
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	cmovnb	%r8d, %eax
	popq	%r15
	.cfi_def_cfa_offset 8
	movl	%eax, (%r9)
	movl	%edi, (%r10)
	ret
	.p2align 4
	.p2align 3
.L8:
	.cfi_restore_state
	movl	$-188129039, %edi
	movl	$-149, %ecx
	jmp	.L2
	.p2align 4
	.p2align 3
.L12:
	cmpl	$31, %esi
	sete	%cl
	cmpl	$214, %esi
	sete	%bl
	orl	%ebx, %ecx
	cmpl	$217, %esi
	sete	%sil
	orl	%esi, %ecx
	movzbl	%cl, %ecx
	addl	%ecx, %eax
	jmp	.L5
	.cfi_endproc
.LFE10405:
	.size	_Z24schubfach_xjb_f32_to_decfPjPi, .-_Z24schubfach_xjb_f32_to_decfPjPi
	.p2align 4
	.type	_ZL16xjb64_f64_to_decdPyPi, @function
_ZL16xjb64_f64_to_decdPyPi:
.LFB10554:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	movabsq	$4503599627370495, %r8
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r9
	andq	%rax, %r8
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	shrq	$52, %rax
	andl	$2047, %eax
	movq	%r8, %rcx
	je	.L23
	subl	$1075, %eax
	btsq	$52, %rcx
	imull	$315653, %eax, %esi
.L14:
	movl	%esi, %edx
	subl	$131237, %esi
	leaq	4688+_ZZL16xjb64_f64_to_decdPyPiE1g(%rip), %r11
	sarl	$20, %edx
	sarl	$20, %esi
	testq	%r8, %r8
	cmovne	%edx, %esi
	movl	%esi, %edx
	notl	%edx
	imull	$217707, %edx, %edi
	addl	%edx, %edx
	movslq	%edx, %rdx
	leaq	(%r11,%rdx,8), %rdx
	sarl	$16, %edi
	leal	(%rdi,%rax), %r10d
	leal	7(%rax,%rdi), %eax
	movq	(%rdx), %r11
	shlx	%rax, %rcx, %rdi
	movq	%rdi, %rax
	mulq	8(%rdx)
	movq	%rdx, %rbp
	movq	%r11, %rdx
	mulx	%rdi, %rax, %rdx
	addq	%rbp, %rax
	adcq	$0, %rdx
	negl	%r10d
	movq	%rax, %rdi
	movq	%rdx, %rbp
	shrq	$6, %rbp
	leaq	0(%rbp,%rbp,4), %rbp
	leaq	(%rbp,%rbp), %r12
	shrx	%r10, %r11, %rbp
	movq	%rax, %r10
	movq	%rdx, %r11
	shldq	$2, %r10, %r11
	salq	$2, %r10
	shrdq	$6, %rdx, %rdi
	addq	%rax, %r10
	adcq	%rdx, %r11
	movabsq	$4611686018427387904, %rdx
	shldq	$1, %r10, %r11
	movq	%r11, %rax
	addq	$32, %rax
	cmpq	%rdx, %rdi
	sete	%dl
	incq	%rcx
	movzbl	%dl, %edx
	andl	$1, %ecx
	subq	%rdx, %rax
	addq	%rbp, %rcx
	shrq	$6, %rax
	testq	%r8, %r8
	je	.L17
	cmpq	%rcx, %rdi
	cmovb	%r12, %rax
.L18:
	addq	%rdi, %rcx
	jc	.L28
.L22:
	movq	%rax, (%rbx)
	movl	%esi, (%r9)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L23:
	.cfi_restore_state
	movl	$-339011322, %esi
	movl	$-1074, %eax
	jmp	.L14
	.p2align 4
	.p2align 3
.L17:
	movq	%rdi, %rdx
	movq	%rbp, %r10
	movabsq	$1152921504606846974, %r8
	shrq	$4, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%rdx, %rdx
	shrq	$4, %r10
	andq	%rdx, %r8
	leaq	(%r10,%r10,4), %r10
	shrq	$60, %rdx
	cmpq	%r8, %r10
	leaq	1(%r12,%rdx), %rdx
	cmovb	%rdx, %rax
	shrq	%rbp
	cmpq	%rbp, %rdi
	cmovb	%r12, %rax
	jmp	.L18
.L28:
	leaq	10(%r12), %rax
	jmp	.L22
	.cfi_endproc
.LFE10554:
	.size	_ZL16xjb64_f64_to_decdPyPi, .-_ZL16xjb64_f64_to_decdPyPi
	.section	.rodata
	.align 32
.LC0:
	.quad	-3480967307441105733
	.quad	-9093133594791772939
	.quad	-6754730975062328270
	.quad	-3831727700400522433
	.quad	-177973607073265138
	.quad	-7028762532061872567
	.quad	-4174267146649952805
	.quad	-606147914885053102
	.quad	-7296371474444240045
	.quad	-4508778324627912152
	.quad	-1024286887357502286
	.quad	-7557708332239520785
	.quad	-4835449396872013077
	.quad	-1432625727662628442
	.quad	-7812920107430224632
	.quad	-5154464115860392886
	.quad	-1831394126398103204
	.quad	-8062150356639896358
	.quad	-5466001927372482544
	.quad	-2220816390788215276
	.quad	-8305539271883716404
	.quad	-5770238071427257601
	.quad	-2601111570856684097
	.quad	-8543223759426509416
	.quad	-6067343680855748867
	.quad	-2972493582642298179
	.quad	-8775337516792518218
	.quad	-6357485877563259868
	.quad	-3335171328526686932
	.quad	-9002011107970261188
	.quad	-6640827866535438581
	.quad	-3689348814741910323
	.quad	-9223372036854775808
	.quad	-6917529027641081856
	.quad	-4035225266123964416
	.quad	-432345564227567616
	.quad	-7187745005283311616
	.quad	-4372995238176751616
	.quad	-854558029293551616
	.quad	-7451627795949551616
	.quad	-4702848726509551616
	.quad	-1266874889709551616
	.quad	-7709325833709551616
	.quad	-5024971273709551616
	.quad	-1669528073709551616
	.quad	-7960984073709551616
	.quad	-5339544073709551616
	.quad	-2062744073709551616
	.quad	-8206744073709551616
	.quad	-5646744073709551616
	.quad	-2446744073709551616
	.quad	-8446744073709551616
	.quad	-5946744073709551616
	.quad	-2821744073709551616
	.quad	-8681119073709551616
	.quad	-6239712823709551616
	.quad	-3187955011209551616
	.quad	-8910000909647051616
	.quad	-6525815118631426616
	.quad	-3545582879861895366
	.quad	-9133518327554766459
	.quad	-6805211891016070170
	.quad	-3894828845342699809
	.quad	-256850038250986857
	.quad	-7078060301547948642
	.quad	-4235889358507547898
	.quad	-683175679707046969
	.quad	-7344513827457986211
	.quad	-4568956265895094860
	.quad	-1099509313941480671
	.quad	-7604722348854507275
	.quad	-4894216917640746190
	.quad	-1506085128623544834
	.quad	-7858832233030797377
	.quad	-5211854272861108818
	.quad	-1903131822648998118
	.quad	-8106986416796705680
	.text
	.p2align 4
	.type	_ZL14xjb_f32_to_decfPjPi, @function
_ZL14xjb_f32_to_decfPjPi:
.LFB10561:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	vmovd	%xmm0, %r12d
	leal	(%r12,%r12), %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbp
	shrl	$23, %ecx
	subq	$624, %rsp
	.cfi_def_cfa_offset 672
	movq	%rsi, %rbx
	movl	%r12d, %r13d
	movl	%ecx, %r14d
	movq	%rsp, %rdi
	movl	$616, %edx
	leaq	.LC0(%rip), %rsi
	andl	$8388607, %r13d
	movq	%fs:40, %rax
	movq	%rax, 616(%rsp)
	xorl	%eax, %eax
	call	memcpy@PLT
	testl	%r14d, %r14d
	je	.L30
	leal	-150(%r14), %ecx
	movl	%r13d, %edx
	imull	$315653, %ecx, %eax
	orl	$8388608, %edx
.L31:
	movl	%eax, %esi
	subl	$131237, %eax
	movabsq	$68719476735, %r9
	notl	%r12d
	sarl	$20, %eax
	sarl	$20, %esi
	testl	%r13d, %r13d
	cmove	%eax, %esi
	andl	$1, %r12d
	movl	%esi, %edi
	notl	%edi
	imull	$217707, %edi, %eax
	movslq	%edi, %rdi
	movq	256(%rsp,%rdi,8), %rdi
	sarl	$16, %eax
	leal	(%rax,%rcx), %r10d
	leal	37(%rcx,%rax), %eax
	shlx	%rax, %rdx, %rdx
	movq	%rdx, %rax
	mulq	%rdi
	movq	%rdx, %rax
	andq	%r9, %rdx
	shrq	$36, %rax
	leaq	(%rax,%rax,4), %r8
	movl	$28, %eax
	subl	%r10d, %eax
	leaq	(%rdx,%rdx,4), %r10
	addq	%r8, %r8
	shrx	%rax, %rdi, %rdi
	movq	%rdx, %rax
	shrq	$32, %rax
	leaq	(%rax,%r10,4), %rax
	movabsq	$68719476729, %r10
	addq	%r10, %rax
	shrq	$37, %rax
	testl	%r13d, %r13d
	je	.L34
	addq	%rdi, %r12
	xorl	%ecx, %ecx
	cmpq	%r12, %rdx
	cmovb	%rcx, %rax
	subq	%rdx, %r9
	movl	$10, %edx
	cmpq	%r12, %r9
	cmovnb	%eax, %edx
.L36:
	addl	%r8d, %edx
	movl	%edx, 0(%rbp)
	movl	%esi, (%rbx)
	movq	616(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L43
	addq	$624, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L30:
	.cfi_restore_state
	movl	%r13d, %edx
	movl	$-47032297, %eax
	movl	$-149, %ecx
	jmp	.L31
	.p2align 4
	.p2align 3
.L34:
	movq	%rdi, %r10
	shrq	%r10
	cmpq	%r10, %rdx
	movl	$0, %r10d
	cmovb	%r10, %rax
	subq	%rdx, %r9
	movl	$10, %edx
	cmpq	%rdi, %r9
	jb	.L36
	xorl	%edx, %edx
	cmpl	$-119, %ecx
	sete	%dl
	xorl	%edi, %edi
	cmpl	$64, %ecx
	sete	%dil
	addl	%edi, %edx
	cmpl	$67, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %edx
	addl	%eax, %edx
	jmp	.L36
.L43:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10561:
	.size	_ZL14xjb_f32_to_decfPjPi, .-_ZL14xjb_f32_to_decfPjPi
	.p2align 4
	.globl	_Z18yy_fast_f64_to_decdPyPi
	.type	_Z18yy_fast_f64_to_decdPyPi, @function
_Z18yy_fast_f64_to_decdPyPi:
.LFB10552:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	vmovq	%xmm0, %rax
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r10
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 8(%rsp)
	movq	%fs:40, %rdx
	movq	%rdx, 40(%rsp)
	xorl	%edx, %edx
	movabsq	$4503599627370495, %rdx
	andq	%rax, %rdx
	shrq	$52, %rax
	andl	$2047, %eax
	je	.L64
	movabsq	$4503599627370496, %rcx
	movq	%rdx, %rbx
	subq	$1075, %rax
	imull	$315653, %eax, %esi
	orq	%rcx, %rbx
	testq	%rdx, %rdx
	je	.L46
	sarl	$20, %esi
	imull	$-217707, %esi, %edx
	movl	$5, %r11d
	sarl	$16, %edx
	leal	1(%rdx,%rax), %eax
	movl	$343, %edx
	subl	%esi, %edx
	subl	%eax, %r11d
	addl	%edx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
.L45:
	shlx	%rax, %rbx, %r14
	leaq	_ZL15pow10_sig_table(%rip), %rcx
	movq	%r14, %rax
	movabsq	$1844674407370955162, %r12
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	mulq	8(%rdx)
	movq	%rdx, %rdi
	movq	%r14, %rdx
	mulx	%rcx, %r14, %r15
	addq	%rdi, %r14
	shrx	%r11, %rcx, %rcx
	adcq	$0, %r15
	movq	%r14, %rbp
	movq	%r15, %rdx
	movq	%r15, %rax
	movq	%r15, 16(%rsp)
	mulx	%r12, %r12, %r13
	leaq	0(%r13,%r13,4), %rdi
	movq	%r15, %r12
	movq	%r14, %rdx
	addq	%rdi, %rdi
	subq	%rdi, %r12
	movq	%rdi, %r8
	shrdq	$4, %r12, %rdx
	movabsq	$-6917529027641081856, %r12
	leaq	(%rdx,%rcx), %r11
	movq	%r12, %r13
	subq	%r11, %r13
	cmpq	%rcx, %rdx
	je	.L47
	movabsq	$-9223372036854775808, %r9
	cmpq	%r9, %r14
	je	.L47
	cmpq	$1, %r13
	jbe	.L47
	cmpq	%rcx, %rdx
	leaq	10(%rdi), %r8
	movq	%r14, %rdx
	setb	%cl
	cmpq	%r11, %r12
	movzbl	%cl, %ecx
	adcl	$0, %ecx
	cmpq	%r11, %r12
	cmovnb	%rdi, %r8
	shrq	$63, %rdx
	addq	%rdx, %rax
	testl	%ecx, %ecx
	movq	%rax, 32(%rsp)
	cmovne	%r8, %rax
	movq	8(%rsp), %rbx
	movq	%rax, (%rbx)
	movl	%esi, (%r10)
.L44:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L72
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L47:
	.cfi_restore_state
	movq	%r14, %rdi
	movabsq	$-9223372036854775808, %r12
	andl	$1, %eax
	shrq	$63, %rdi
	cmpq	%r12, %rbp
	cmove	%eax, %edi
	movq	%rbx, %rax
	cmpq	%rcx, %rdx
	notq	%rax
	setb	%bpl
	movzbl	%dil, %edi
	andl	$1, %eax
	cmpq	%rcx, %rdx
	cmove	%eax, %ebp
.L53:
	movq	16(%rsp), %rcx
	movabsq	$-6917529027641081856, %rax
	cmpq	%r11, %rax
	setb	%al
	addq	%rdi, %rcx
	movq	%rcx, %rdi
	cmpq	$1, %r13
	jbe	.L73
.L54:
	testb	%bpl, %bpl
	movl	%esi, (%r10)
	cmovne	%r8, %rdi
	testb	%al, %al
	je	.L74
	movq	8(%rsp), %rax
	addq	$10, %r8
	movq	%r8, (%rax)
	jmp	.L44
	.p2align 4
	.p2align 3
.L74:
	movq	8(%rsp), %rax
	movq	%rdi, (%rax)
	jmp	.L44
	.p2align 4
	.p2align 3
.L46:
	subl	$131237, %esi
	sarl	$20, %esi
	imull	$-217707, %esi, %edx
	sarl	$16, %edx
	leal	1(%rdx,%rax), %edi
	movl	$343, %eax
	leaq	_ZL15pow10_sig_table(%rip), %rdx
	subl	%esi, %eax
	shlx	%rdi, %rcx, %rcx
	addl	%eax, %eax
	cltq
	leaq	(%rdx,%rax,8), %rdx
	movq	%rcx, %rax
	movq	(%rdx), %r8
	mulq	8(%rdx)
	movq	%rdx, %r11
	movq	%rcx, %rdx
	mulx	%r8, %rax, %rdx
	addq	%r11, %rax
	movl	$5, %r11d
	adcq	$0, %rdx
	subl	%edi, %r11d
	movq	%rax, %rcx
	movl	$1, %edi
	shrx	%r11, %r8, %r11
	movq	%r11, %rbx
	shrq	$4, %rcx
	shrq	%rbx
	cmpq	%rcx, %rbx
	jb	.L51
	movabsq	$-9223372036854775808, %rdi
	cmpq	%rax, %rdi
	setb	%dil
	movzbl	%dil, %edi
.L51:
	movabsq	$1844674407370955162, %rax
	movq	%rdx, %r15
	movq	%rdx, 16(%rsp)
	movabsq	$-6917529027641081856, %r13
	mulq	%rdx
	movq	%r15, %rax
	leaq	(%rdx,%rdx,4), %r8
	addq	%r8, %r8
	subq	%r8, %rax
	salq	$60, %rax
	orq	%rcx, %rax
	addq	%rax, %r11
	subq	%r11, %r13
	cmpq	%rax, %rbx
	movabsq	$4503599627370496, %rbx
	setnb	%bpl
	jmp	.L53
	.p2align 4
	.p2align 3
.L64:
	movq	%rdx, %rbx
	movl	$2, %r11d
	movl	$10672, %edx
	movl	$3, %eax
	movl	$-324, %esi
	jmp	.L45
	.p2align 4
	.p2align 3
.L73:
	movl	%esi, 28(%rsp)
	cmpq	%r13, 28(%rsp)
	jnb	.L55
	movq	8(%rsp), %rax
	testb	%bpl, %bpl
	movl	%esi, (%r10)
	cmovne	%r8, %rdi
	movq	%rdi, (%rax)
	jmp	.L44
	.p2align 4
	.p2align 3
.L55:
	movq	%rbx, %rax
	notq	%rax
	andl	$1, %eax
	jmp	.L54
.L72:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10552:
	.size	_Z18yy_fast_f64_to_decdPyPi, .-_Z18yy_fast_f64_to_decdPyPi
	.p2align 4
	.globl	_Z18yy_full_f64_to_decdPyPi
	.type	_Z18yy_full_f64_to_decdPyPi, @function
_Z18yy_full_f64_to_decdPyPi:
.LFB10553:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	movabsq	$4503599627370495, %rdx
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %rcx
	andq	%rax, %rdx
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	shrq	$52, %rax
	andl	$2047, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	je	.L90
	movabsq	$4503599627370496, %r9
	movq	%rdx, %rdi
	subq	$1075, %rax
	imull	$315653, %eax, %r8d
	orq	%r9, %rdi
	testq	%rdx, %rdx
	je	.L77
	sarl	$20, %r8d
	imull	$-217707, %r8d, %edx
	movl	$5, %ebx
	sarl	$16, %edx
	leal	1(%rdx,%rax), %eax
	movl	$343, %edx
	subl	%r8d, %edx
	subl	%eax, %ebx
	addl	%edx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
.L78:
	leaq	_ZL15pow10_sig_table(%rip), %r9
	addq	%r9, %rdx
	shlx	%rax, %rdi, %r9
	movq	%r9, %rax
	movq	(%rdx), %rbp
	mulq	8(%rdx)
	movq	%rdx, %r10
	movq	%r9, %rdx
	mulx	%rbp, %rax, %rdx
	addq	%r10, %rax
	movabsq	$1844674407370955162, %r10
	shrx	%rbx, %rbp, %rbp
	adcq	$0, %rdx
	movq	%rax, %r13
	movabsq	$4503599627370496, %rbx
	movq	%rax, %r12
	mulx	%r10, %r10, %r11
	leaq	(%r11,%r11,4), %r11
	movq	%rdx, %r10
	movq	%rdx, %r9
	addq	%r11, %r11
	movq	%rax, -32(%rsp)
	movq	%rdx, -24(%rsp)
	subq	%r11, %r10
	shrq	$4, %r13
	salq	$60, %r10
	orq	%r13, %r10
	leaq	(%r10,%rbp), %r14
	cmpq	%rbx, %rdi
	je	.L79
	movq	-32(%rsp), %rax
	movabsq	$-9223372036854775808, %rbx
	andl	$1, %edx
	shrq	$63, %rax
	cmpq	%rbx, %r12
	cmove	%edx, %eax
	movq	%rdi, %rdx
	cmpq	%rbp, %r10
	notq	%rdx
	setb	%bl
	movzbl	%al, %eax
	andl	$1, %edx
	cmpq	%rbp, %r10
	cmove	%edx, %ebx
.L81:
	movabsq	$-6917529027641081856, %rdx
	cmpq	%r14, %rdx
	setb	%r10b
	subq	%r14, %rdx
	addq	%rax, %r9
	cmpq	$1, %rdx
	jbe	.L96
.L83:
	testb	%bl, %bl
	movl	%r8d, (%rsi)
	cmovne	%r11, %r9
	testb	%r10b, %r10b
	je	.L97
	addq	$10, %r11
	movq	%r11, (%rcx)
.L94:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L97:
	.cfi_restore_state
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r9, (%rcx)
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L96:
	.cfi_restore_state
	movl	%r8d, -4(%rsp)
	cmpq	%rdx, -4(%rsp)
	jnb	.L84
	testb	%bl, %bl
	movl	%r8d, (%rsi)
	cmovne	%r11, %r9
	movq	%r9, (%rcx)
	jmp	.L94
	.p2align 4
	.p2align 3
.L90:
	movq	%rdx, %rdi
	movl	$2, %ebx
	movl	$10672, %edx
	movl	$3, %eax
	movl	$-324, %r8d
	jmp	.L78
	.p2align 4
	.p2align 3
.L77:
	subl	$131237, %r8d
	movl	$5, %ebx
	movq	%r9, %rdi
	sarl	$20, %r8d
	imull	$-217707, %r8d, %edx
	sarl	$16, %edx
	leal	1(%rdx,%rax), %eax
	movl	$343, %edx
	subl	%r8d, %edx
	subl	%eax, %ebx
	addl	%edx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	jmp	.L78
	.p2align 4
	.p2align 3
.L79:
	shrq	%rbp
	movl	$1, %eax
	cmpq	%r13, %rbp
	jb	.L82
	movabsq	$-9223372036854775808, %rax
	cmpq	%r12, %rax
	setb	%al
	movzbl	%al, %eax
.L82:
	cmpq	%r10, %rbp
	setnb	%bl
	jmp	.L81
	.p2align 4
	.p2align 3
.L84:
	notq	%rdi
	movl	%edi, %r10d
	andl	$1, %r10d
	jmp	.L83
	.cfi_endproc
.LFE10553:
	.size	_Z18yy_full_f64_to_decdPyPi, .-_Z18yy_full_f64_to_decdPyPi
	.p2align 4
	.type	_Z11ToDecimal64mm, @function
_Z11ToDecimal64mm:
.LFB10303:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %rax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %rcx
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	testq	%rsi, %rsi
	je	.L106
	subl	$1075, %esi
	btsq	$52, %rcx
	imull	$1262611, %esi, %edi
.L99:
	movq	%rcx, %rbp
	leal	-524031(%rdi), %r9d
	salq	$2, %rcx
	andl	$1, %ebp
	movq	%rcx, %rdx
	cmpq	$1, %rax
	leaq	2(%rcx), %r8
	adcq	$-2, %rdx
	sarl	$22, %r9d
	sarl	$22, %edi
	testq	%rax, %rax
	cmove	%r9d, %edi
	imull	$-1741647, %edi, %eax
	sarl	$19, %eax
	leal	1(%rsi,%rax), %ebx
	movl	$292, %eax
	leaq	_ZZL19ComputePow10_DoubleiE1g(%rip), %rsi
	subl	%edi, %eax
	shlx	%rbx, %rdx, %rdx
	shlx	%rbx, %rcx, %rcx
	shlx	%rbx, %r8, %r8
	salq	$4, %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movq	8(%rax), %r9
	movq	%rdx, %rax
	mulx	%rsi, %r10, %r11
	mulq	%r9
	movq	%rcx, %rax
	addq	%rdx, %r10
	movq	%rcx, %rdx
	adcq	$0, %r11
	mulx	%rsi, %r12, %r13
	mulq	%r9
	movq	%r8, %rax
	addq	%rdx, %r12
	movq	%r8, %rdx
	adcq	$0, %r13
	cmpq	$1, %r12
	mulx	%rsi, %rcx, %rbx
	seta	%r12b
	mulq	%r9
	movzbl	%r12b, %r12d
	orq	%r13, %r12
	addq	%rdx, %rcx
	adcq	$0, %rbx
	xorl	%r8d, %r8d
	cmpq	$1, %r10
	seta	%r8b
	orq	%r11, %r8
	addq	%rbp, %r8
	cmpq	$1, %rcx
	seta	%cl
	movzbl	%cl, %ecx
	orq	%rbx, %rcx
	subq	%rbp, %rcx
	cmpq	$39, %r12
	jbe	.L102
	movabsq	$-3689348814741910323, %rax
	mulq	%r12
	shrq	$5, %rdx
	leaq	(%rdx,%rdx,4), %rsi
	salq	$3, %rsi
	leaq	40(%rsi), %rax
	cmpq	%rax, %rcx
	setnb	%al
	cmpq	%r8, %rsi
	setnb	%sil
	cmpb	%al, %sil
	je	.L102
	movzbl	%al, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	addq	%rdx, %rax
	popq	%r13
	.cfi_def_cfa_offset 8
	movl	%edi, %edx
	leaq	(%rax,%rax,4), %rax
	addq	%rax, %rax
	ret
	.p2align 4
	.p2align 3
.L102:
	.cfi_restore_state
	movq	%r12, %r9
	movq	%r12, %rsi
	shrq	$2, %r9
	leaq	1(%r9), %rax
	andq	$-4, %rsi
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rcx
	setnb	%dl
	cmpq	%r8, %rsi
	setnb	%cl
	cmpb	%dl, %cl
	je	.L104
	movzbl	%dl, %edx
	leaq	(%rdx,%r9), %rax
.L103:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%edi, %edx
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L104:
	.cfi_restore_state
	addq	$2, %rsi
	cmpq	%r12, %rsi
	jb	.L103
	andq	$-2, %rax
	cmpq	%r12, %rsi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%edi, %edx
	popq	%rbp
	.cfi_def_cfa_offset 24
	cmovne	%r9, %rax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L106:
	.cfi_restore_state
	movl	$-1356044214, %edi
	movl	$-1074, %esi
	jmp	.L99
	.cfi_endproc
.LFE10303:
	.size	_Z11ToDecimal64mm, .-_Z11ToDecimal64mm
	.section	.text._ZNSt13random_deviceD2Ev,"axG",@progbits,_ZNSt13random_deviceD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13random_deviceD2Ev
	.type	_ZNSt13random_deviceD2Ev, @function
_ZNSt13random_deviceD2Ev:
.LFB2611:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2611
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt13random_device7_M_finiEv@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2611:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13random_deviceD2Ev,"aG",@progbits,_ZNSt13random_deviceD5Ev,comdat
.LLSDA2611:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2611-.LLSDACSB2611
.LLSDACSB2611:
.LLSDACSE2611:
	.section	.text._ZNSt13random_deviceD2Ev,"axG",@progbits,_ZNSt13random_deviceD5Ev,comdat
	.size	_ZNSt13random_deviceD2Ev, .-_ZNSt13random_deviceD2Ev
	.weak	_ZNSt13random_deviceD1Ev
	.set	_ZNSt13random_deviceD1Ev,_ZNSt13random_deviceD2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"uint32_t log10Pow2(int32_t)"
.LC2:
	.string	"ryu/common.h"
.LC3:
	.string	"e <= 1650"
	.text
	.p2align 4
	.type	_ZL9log10Pow2i.part.0, @function
_ZL9log10Pow2i.part.0:
.LFB11554:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC1(%rip), %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$90, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE11554:
	.size	_ZL9log10Pow2i.part.0, .-_ZL9log10Pow2i.part.0
	.section	.rodata.str1.1
.LC4:
	.string	"uint32_t log10Pow5(int32_t)"
.LC5:
	.string	"e <= 2620"
	.text
	.p2align 4
	.type	_ZL9log10Pow5i.part.0, @function
_ZL9log10Pow5i.part.0:
.LFB11555:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC4(%rip), %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$99, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE11555:
	.size	_ZL9log10Pow5i.part.0, .-_ZL9log10Pow5i.part.0
	.section	.rodata.str1.1
.LC6:
	.string	"int32_t pow5bits(int32_t)"
.LC7:
	.string	"e <= 3528"
	.text
	.p2align 4
	.type	_ZL8pow5bitsi.part.0, @function
_ZL8pow5bitsi.part.0:
.LFB11556:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC6(%rip), %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$78, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE11556:
	.size	_ZL8pow5bitsi.part.0, .-_ZL8pow5bitsi.part.0
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"uint32_t mulShift32(uint32_t, uint64_t, int32_t)"
	.section	.rodata.str1.1
.LC9:
	.string	"ryu/f2s.c"
.LC10:
	.string	"shiftedSum <= UINT32_MAX"
	.text
	.p2align 4
	.type	_ZL10mulShift32jmi.part.0, @function
_ZL10mulShift32jmi.part.0:
.LFB11558:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC8(%rip), %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$112, %edx
	leaq	.LC9(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE11558:
	.size	_ZL10mulShift32jmi.part.0, .-_ZL10mulShift32jmi.part.0
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"bool is_multiple_of_pow5(int32_t, uint64_t)"
	.section	.rodata.str1.1
.LC12:
	.string	"teju/generated/../teju.h"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"0 <= f && (uint32_t) f < sizeof(minverse) / sizeof(minverse[0])"
	.text
	.p2align 4
	.type	is_multiple_of_pow5.part.0, @function
is_multiple_of_pow5.part.0:
.LFB11559:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC11(%rip), %rcx
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$64, %edx
	leaq	.LC12(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE11559:
	.size	is_multiple_of_pow5.part.0, .-is_multiple_of_pow5.part.0
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"uint32_t decimalLength17(uint64_t)"
	.section	.rodata.str1.1
.LC15:
	.string	"ryu/d2s.c"
.LC16:
	.string	"v < 100000000000000000L"
	.text
	.p2align 4
	.type	_ZL8to_chars19floating_decimal_64bPc.isra.0, @function
_ZL8to_chars19floating_decimal_64bPc.isra.0:
.LFB11568:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	%esi, 12(%rsp)
	testb	%dl, %dl
	je	.L142
	movl	$18, %esi
	movl	$13, %r10d
	movl	$15, %r11d
	movl	$12, %r12d
	movl	$14, %r14d
	movl	$16, %r15d
	movl	$17, %ebx
	movl	$11, %r9d
	movl	$10, %r13d
	movl	$4, %eax
	movl	$2, %r8d
	movl	$2, %edx
	movb	$45, (%rcx)
	movq	$5, 56(%rsp)
	movq	$8, 40(%rsp)
	movq	$6, 48(%rsp)
	movq	$9, (%rsp)
	movq	$7, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	$1, 16(%rsp)
	movl	$1, 8(%rsp)
.L122:
	movabsq	$99999999999999999, %rbp
	cmpq	%rdi, %rbp
	jb	.L163
	movabsq	$9999999999999999, %rbp
	cmpq	%rdi, %rbp
	jb	.L143
	movabsq	$999999999999999, %rsi
	cmpq	%rdi, %rsi
	jb	.L144
	movabsq	$99999999999999, %rsi
	cmpq	%rdi, %rsi
	jb	.L145
	movabsq	$9999999999999, %rsi
	cmpq	%rdi, %rsi
	jb	.L146
	movabsq	$999999999999, %rsi
	cmpq	%rdi, %rsi
	jb	.L147
	movabsq	$99999999999, %rsi
	cmpq	%rdi, %rsi
	jb	.L148
	movabsq	$9999999999, %rsi
	cmpq	%rdi, %rsi
	jb	.L149
	cmpq	$999999999, %rdi
	ja	.L125
	cmpq	$99999999, %rdi
	ja	.L150
	cmpq	$9999999, %rdi
	ja	.L151
	cmpq	$999999, %rdi
	ja	.L152
	cmpq	$99999, %rdi
	ja	.L153
	cmpq	$9999, %rdi
	ja	.L154
	cmpq	$999, %rdi
	ja	.L155
	cmpq	$99, %rdi
	ja	.L156
	cmpq	$9, %rdi
	ja	.L164
	movq	16(%rsp), %rax
	addl	$48, %edi
	movl	$1, %r12d
	movb	%dil, (%rcx,%rax)
	jmp	.L136
	.p2align 4
	.p2align 3
.L142:
	movl	$17, %esi
	movl	$12, %r10d
	movl	$14, %r11d
	movl	$11, %r12d
	movl	$13, %r14d
	movl	$15, %r15d
	movl	$16, %ebx
	movl	$10, %r9d
	movl	$9, %r13d
	movl	$3, %eax
	movl	$1, %r8d
	movl	$1, %edx
	movq	$4, 56(%rsp)
	movq	$7, 40(%rsp)
	movq	$5, 48(%rsp)
	movq	$8, (%rsp)
	movq	$6, 32(%rsp)
	movq	$-1, 24(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	jmp	.L122
	.p2align 4
	.p2align 3
.L143:
	movl	$17, %r12d
	movq	$17, 32(%rsp)
	movl	$17, (%rsp)
.L124:
	movabsq	$-6067343680855748867, %rax
	movl	$3518437209, %r13d
	mulq	%rdi
	movl	%edi, %eax
	shrq	$26, %rdx
	imull	$100000000, %edx, %r14d
	movl	%edx, %ebp
	subl	%r14d, %eax
	movl	%eax, %r14d
	imulq	%r13, %r14
	movq	%r14, %r15
	shrq	$45, %r15
	imull	$10000, %r15d, %r15d
	shrq	$45, %r14
	subl	%r15d, %eax
	movl	%eax, %r15d
	movl	%r14d, %eax
	imulq	%r13, %rax
	shrq	$45, %rax
	imull	$10000, %eax, %r13d
	movl	%r14d, %eax
	movl	%r15d, %r14d
	imulq	$1374389535, %r14, %r14
	subl	%r13d, %eax
	shrq	$37, %r14
	imull	$100, %r14d, %r13d
	addl	%r14d, %r14d
	subl	%r13d, %r15d
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	addl	%r15d, %r15d
	movl	%r15d, %r15d
	movzwl	0(%r13,%r15), %r15d
	movw	%r15w, (%rcx,%rbx)
	movzwl	0(%r13,%r14), %ebx
	movw	%bx, (%rcx,%r11)
	movl	%eax, %r11d
	imulq	$1374389535, %r11, %r11
	shrq	$37, %r11
	imull	$100, %r11d, %ebx
	addl	%r11d, %r11d
	subl	%ebx, %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movzwl	0(%r13,%rax), %eax
	movw	%ax, (%rcx,%r10)
	movzwl	0(%r13,%r11), %eax
	movw	%ax, (%rcx,%r9)
	movabsq	$999999999999, %rax
	cmpq	%rdi, %rax
	movl	$8, %edi
	jnb	.L132
.L126:
	movl	$3518437209, %ebx
	.p2align 4
	.p2align 3
.L133:
	movl	%ebp, %eax
	movl	%ebp, %r10d
	imulq	%rbx, %rax
	movq	%rax, %rdx
	shrq	$45, %rdx
	imull	$10000, %edx, %r9d
	movl	%ebp, %edx
	shrq	$45, %rax
	subl	%r9d, %edx
	movq	%rax, %rbp
	movq	%rsi, %r9
	movl	%edi, %eax
	subq	%rax, %r9
	movl	%edx, %eax
	addl	$4, %edi
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	imull	$100, %eax, %r11d
	addl	%eax, %eax
	subl	%r11d, %edx
	addl	%edx, %edx
	movl	%edx, %edx
	movzwl	0(%r13,%rdx), %edx
	movw	%dx, -1(%rcx,%r9)
	movzwl	0(%r13,%rax), %eax
	movw	%ax, -3(%rcx,%r9)
	cmpl	$99999999, %r10d
	ja	.L133
	cmpl	$999999, %r10d
	ja	.L129
.L130:
	cmpl	$9, %ebp
	ja	.L165
	movq	16(%rsp), %rax
	addl	$48, %ebp
	movb	%bpl, (%rcx,%rax)
.L135:
	movl	8(%rsp), %eax
	movl	(%rsp), %ebx
	movb	$46, (%rcx,%r8)
	leal	1(%rax,%rbx), %r8d
	movq	%r8, %rdx
.L136:
	movl	12(%rsp), %ebx
	leal	1(%rdx), %eax
	movb	$69, (%rcx,%r8)
	leal	-1(%r12,%rbx), %esi
	leal	(%rbx,%r12), %edi
	testl	%esi, %esi
	jns	.L137
	cltq
	movl	$1, %esi
	movb	$45, (%rcx,%rax)
	subl	%edi, %esi
	leal	2(%rdx), %eax
.L137:
	movslq	%eax, %rdi
	leaq	(%rcx,%rdi), %r8
	cmpl	$99, %esi
	jg	.L166
	cmpl	$9, %esi
	jg	.L167
	addl	$48, %esi
	incl	%eax
	movb	%sil, (%r8)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L165:
	.cfi_restore_state
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
.L141:
	movl	(%rsp), %ebx
	addl	%ebp, %ebp
	movl	8(%rsp), %eax
	leal	1(%rbp), %edx
	movzbl	0(%r13,%rdx), %edx
	addl	%ebx, %eax
	movq	16(%rsp), %rbx
	subl	%edi, %eax
	movb	%dl, (%rcx,%rax)
	movzbl	0(%r13,%rbp), %eax
	movb	%al, (%rcx,%rbx)
	jmp	.L135
	.p2align 4
	.p2align 3
.L166:
	movl	%esi, %edx
	movl	$3435973837, %r9d
	leaq	_ZL11DIGIT_TABLE(%rip), %r10
	addl	$3, %eax
	imulq	%r9, %rdx
	shrq	$35, %rdx
	leal	(%rdx,%rdx), %r9d
	leal	(%rdx,%rdx,4), %edx
	movslq	%r9d, %r9
	addl	%edx, %edx
	movzwl	(%r10,%r9), %r9d
	subl	%edx, %esi
	addl	$48, %esi
	movw	%r9w, (%r8)
	movb	%sil, 2(%rcx,%rdi)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L132:
	.cfi_restore_state
	cmpl	$99, %edx
	jbe	.L141
	.p2align 4
	.p2align 3
.L129:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rbx
	movl	%edi, %edx
	addl	$2, %edi
	addq	%rbx, %rax
	subq	%rdx, %rax
.L128:
	movl	%ebp, %edx
	movl	%ebp, %esi
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r9d
	movl	%edx, %ebp
	subl	%r9d, %esi
	leal	(%rsi,%rsi), %edx
	movzwl	0(%r13,%rdx), %edx
	movw	%dx, (%rcx,%rax)
	jmp	.L130
	.p2align 4
	.p2align 3
.L167:
	addl	%esi, %esi
	leaq	_ZL11DIGIT_TABLE(%rip), %rdx
	addl	$2, %eax
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi), %edx
	movw	%dx, (%r8)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L145:
	.cfi_restore_state
	movq	%r11, %rbx
	movq	%r15, %rsi
	movq	%r10, %r11
	movl	$15, %r12d
	movq	%r9, %r10
	movq	$15, 32(%rsp)
	movq	(%rsp), %r9
	movl	$15, (%rsp)
	jmp	.L124
	.p2align 4
	.p2align 3
.L144:
	movq	%r12, %r10
	movq	%rbx, %rsi
	movq	%r13, %r9
	movq	%r14, %r11
	movq	%r15, %rbx
	movl	$16, %r12d
	movq	$16, 32(%rsp)
	movl	$16, (%rsp)
	jmp	.L124
	.p2align 4
	.p2align 3
.L146:
	movq	%r11, %rsi
	movq	40(%rsp), %r9
	movq	%r12, %r11
	movq	%r13, %r10
	movq	%r14, %rbx
	movl	$14, %r12d
	movq	$14, 32(%rsp)
	movl	$14, (%rsp)
	jmp	.L124
.L147:
	movq	%r9, %r11
	movq	%r10, %rbx
	movq	32(%rsp), %r9
	movq	(%rsp), %r10
	movq	%r14, %rsi
	movl	$13, %r12d
	movq	$13, 32(%rsp)
	movl	$13, (%rsp)
	jmp	.L124
.L148:
	movq	%r12, %rbx
	movq	%r10, %rsi
	movq	48(%rsp), %r9
	movq	40(%rsp), %r10
	movq	%r13, %r11
	movl	$12, %r12d
	movq	$12, 32(%rsp)
	movl	$12, (%rsp)
	jmp	.L124
.L149:
	movq	32(%rsp), %r10
	movq	(%rsp), %r11
	movq	%r9, %rbx
	movq	%r12, %rsi
	movq	56(%rsp), %r9
	movl	$11, %r12d
	movq	$11, 32(%rsp)
	movl	$11, (%rsp)
	jmp	.L124
.L154:
	movq	48(%rsp), %rax
	movl	$5, %r12d
	movq	$5, 32(%rsp)
	movl	$5, (%rsp)
	movq	%rax, 40(%rsp)
.L127:
	movl	%edi, %ebp
	movq	40(%rsp), %rsi
	xorl	%edi, %edi
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	jmp	.L126
.L125:
	movq	%rdi, %rbx
	shrq	$32, %rbx
	jne	.L168
	movl	%edi, %ebp
	movq	%r9, %rsi
	movl	$10, %r12d
	xorl	%edi, %edi
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	movq	$10, 32(%rsp)
	movl	$10, (%rsp)
	jmp	.L126
.L150:
	movq	%r13, %rsi
	movl	%edi, %ebp
	movl	$9, %r12d
	xorl	%edi, %edi
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	movq	$9, 32(%rsp)
	movl	$9, (%rsp)
	jmp	.L126
.L151:
	movq	(%rsp), %rsi
	movl	%edi, %ebp
	movl	$8, %r12d
	xorl	%edi, %edi
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	movq	$8, 32(%rsp)
	movl	$8, (%rsp)
	jmp	.L126
.L152:
	movl	$7, %r12d
	movq	$7, 32(%rsp)
	movl	$7, (%rsp)
	jmp	.L127
.L153:
	movq	32(%rsp), %rsi
	movl	%edi, %ebp
	movl	$6, %r12d
	xorl	%edi, %edi
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	movq	$6, 32(%rsp)
	movl	$6, (%rsp)
	jmp	.L126
.L155:
	movl	%edi, %ebp
	movl	$4, %r12d
	movl	$2, %edi
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	movl	$4, (%rsp)
	jmp	.L128
.L156:
	movl	%edi, %ebp
	movl	$3, %r12d
	xorl	%edi, %edi
	leaq	_ZL11DIGIT_TABLE(%rip), %r13
	movq	$3, 32(%rsp)
	movl	$3, (%rsp)
	jmp	.L129
.L164:
	movl	%edi, %ebp
	movl	$2, %r12d
	xorl	%edi, %edi
	movl	$2, (%rsp)
	jmp	.L130
.L168:
	movq	%r9, %rsi
	movq	48(%rsp), %r10
	movq	40(%rsp), %r11
	movq	%r13, %rbx
	movq	%rax, %r9
	movl	$10, %r12d
	movq	$10, 32(%rsp)
	movl	$10, (%rsp)
	jmp	.L124
.L163:
	leaq	.LC14(%rip), %rcx
	movl	$69, %edx
	leaq	.LC15(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE11568:
	.size	_ZL8to_chars19floating_decimal_64bPc.isra.0, .-_ZL8to_chars19floating_decimal_64bPc.isra.0
	.section	.text._ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED2Ev
	.type	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED2Ev, @function
_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED2Ev:
.LFB11543:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	8(%rdi), %rbp
	movq	(%rdi), %rbx
	cmpq	%rbx, %rbp
	je	.L170
	.p2align 4
	.p2align 3
.L174:
	movq	(%rbx), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L171
	movq	16(%rbx), %rax
	addq	$40, %rbx
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	cmpq	%rbx, %rbp
	jne	.L174
.L173:
	movq	(%r12), %rbx
.L170:
	testq	%rbx, %rbx
	je	.L176
	movq	16(%r12), %rsi
	movq	%rbx, %rdi
	subq	%rbx, %rsi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.p2align 4
	.p2align 3
.L171:
	.cfi_restore_state
	addq	$40, %rbx
	cmpq	%rbx, %rbp
	jne	.L174
	jmp	.L173
	.p2align 4
	.p2align 3
.L176:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11543:
	.size	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED2Ev, .-_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED2Ev
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED1Ev
	.set	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED1Ev,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED2Ev
	.section	.text._ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED2Ev
	.type	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED2Ev, @function
_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED2Ev:
.LFB11540:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	8(%rdi), %rbp
	movq	(%rdi), %rbx
	cmpq	%rbx, %rbp
	je	.L179
	.p2align 4
	.p2align 3
.L183:
	movq	(%rbx), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L180
	movq	16(%rbx), %rax
	addq	$40, %rbx
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	cmpq	%rbx, %rbp
	jne	.L183
.L182:
	movq	(%r12), %rbx
.L179:
	testq	%rbx, %rbx
	je	.L185
	movq	16(%r12), %rsi
	movq	%rbx, %rdi
	subq	%rbx, %rsi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.p2align 4
	.p2align 3
.L180:
	.cfi_restore_state
	addq	$40, %rbx
	cmpq	%rbx, %rbp
	jne	.L183
	jmp	.L182
	.p2align 4
	.p2align 3
.L185:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11540:
	.size	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED2Ev, .-_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED2Ev
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED1Ev
	.set	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED1Ev,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED2Ev
	.section	.rodata.str1.1
.LC17:
	.string	"e >= 0"
.LC18:
	.string	"uint32_t pow5Factor(uint64_t)"
.LC19:
	.string	"ryu/d2s_intrinsics.h"
.LC20:
	.string	"value != 0"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"bool multipleOfPowerOf2(uint64_t, uint32_t)"
	.text
	.p2align 4
	.type	_ZL3d2dmj, @function
_ZL3d2dmj:
.LFB10467:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	andl	$1, %eax
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, %r9
	movq	%rax, 8(%rsp)
	testl	%esi, %esi
	jne	.L188
	leaq	0(,%rdi,4), %r12
	movl	$1, %r13d
	movl	$57, %ecx
	movl	$5200, %r8d
	movl	$1, %edi
	movl	$-325, %ebp
	movl	$751, %ebx
.L189:
	leaq	_ZL17DOUBLE_POW5_SPLIT(%rip), %rax
	leaq	2(%r12), %rdx
	addq	%rax, %r8
	movq	%rdx, %rax
	movq	(%r8), %rsi
	movq	8(%r8), %r14
	mulx	%r14, %r10, %r11
	mulq	%rsi
	movq	%rsi, %rax
	addq	%rdx, %r10
	leaq	-1(%r12), %rdx
	adcq	$0, %r11
	shrdq	%r11, %r10
	shrx	%rcx, %r11, %r11
	testb	$64, %cl
	cmovne	%r11, %r10
	subq	%r13, %rdx
	movq	%r10, %r8
	mulx	%r14, %r10, %r11
	mulq	%rdx
	movq	%rsi, %rax
	addq	%rdx, %r10
	movq	%r14, %rdx
	adcq	$0, %r11
	mulx	%r12, %r14, %r15
	shrdq	%r11, %r10
	shrx	%rcx, %r11, %r11
	testb	$64, %cl
	cmovne	%r11, %r10
	mulq	%r12
	addq	%rdx, %r14
	adcq	$0, %r15
	shrdq	%r15, %r14
	shrx	%rcx, %r15, %r15
	testb	$64, %cl
	cmovne	%r15, %r14
	movq	%r14, %rsi
	cmpl	$1, %ebx
	jbe	.L245
	cmpl	$62, %ebx
	ja	.L192
	testq	%r12, %r12
	je	.L246
	bzhi	%rbx, %r12, %r12
	testq	%r12, %r12
	movq	%r9, %r15
	sete	%bl
	xorl	%edi, %edi
	movl	%ebx, %eax
.L200:
	testb	%al, %al
	je	.L192
.L207:
	movabsq	$-3689348814741910323, %r11
	movq	%r8, %rax
	mulq	%r11
	movq	%r10, %rax
	movq	%rdx, %r8
	mulq	%r11
	shrq	$3, %r8
	movq	%rdx, %r11
	shrq	$3, %r11
	cmpq	%r8, %r11
	jb	.L208
	movq	%r11, %rcx
	xorl	%r12d, %r12d
	movq	%r10, %r11
	xorl	%r9d, %r9d
	testb	%dil, %dil
	je	.L244
	.p2align 4
	.p2align 3
.L214:
	leal	(%rcx,%rcx,4), %eax
	movabsq	$-3689348814741910323, %r10
	addl	%eax, %eax
	cmpl	%r11d, %eax
	jne	.L244
	.p2align 4
	.p2align 3
.L216:
	movq	%rsi, %rax
	movq	%rsi, %r8
	movq	%rcx, %r11
	mulq	%r10
	movq	%rdx, %rsi
	shrq	$3, %rsi
	testb	%r12b, %r12b
	sete	%al
	incl	%r9d
	andl	%eax, %ebx
	leal	(%rsi,%rsi,4), %eax
	addl	%eax, %eax
	subl	%eax, %r8d
	movq	%rcx, %rax
	mulq	%r10
	movl	%r8d, %r12d
	movq	%rdx, %rcx
	shrq	$3, %rcx
	leal	(%rcx,%rcx,4), %eax
	addl	%eax, %eax
	cmpl	%r11d, %eax
	je	.L216
	cmpb	$5, %r8b
	sete	%al
	addl	%r9d, %ebp
	andl	%eax, %ebx
	testb	%bl, %bl
	je	.L217
.L250:
	testb	$1, %sil
	jne	.L209
	cmpq	%r11, %rsi
	jne	.L221
	movl	%r15d, %eax
	xorl	$1, %edi
	andl	$1, %eax
	orl	%eax, %edi
	movzbl	%dil, %eax
	addq	%rax, %rsi
	jmp	.L221
	.p2align 4
	.p2align 3
.L188:
	movq	%rdi, %r15
	movl	%esi, %edx
	btsq	$52, %r15
	testq	%rdi, %rdi
	setne	%dil
	cmpl	$1, %esi
	leaq	0(,%r15,4), %r12
	setbe	%al
	orl	%eax, %edi
	subl	$1077, %edx
	js	.L190
	imull	$78913, %edx, %ebx
	xorl	%eax, %eax
	shrl	$18, %ebx
	cmpl	$3, %edx
	setg	%al
	subl	%eax, %ebx
	movl	%ebx, %ebp
	cmpl	$-1, %ebx
	je	.L205
	movl	%ebx, %eax
	leaq	_ZL21DOUBLE_POW5_INV_SPLIT(%rip), %rcx
	leaq	2(%r12), %r14
	movzbl	%dil, %edi
	salq	$4, %rax
	addq	%rcx, %rax
	movl	%ebx, %ecx
	movq	8(%rax), %rsi
	movq	(%rax), %r13
	imull	$1217359, %ebx, %eax
	subl	%edx, %ecx
	movq	%r14, %rdx
	shrl	$19, %eax
	leal	61(%rax,%rcx), %ecx
	movq	%r14, %rax
	mulx	%rsi, %r8, %r9
	mulq	%r13
	leaq	-1(%r12), %rax
	addq	%rdx, %r8
	adcq	$0, %r9
	shrdq	%r9, %r8
	shrx	%rcx, %r9, %r9
	testb	$64, %cl
	cmovne	%r9, %r8
	subq	%rdi, %rax
	movq	%rax, %rdx
	movq	%rax, %r9
	mulx	%rsi, %r10, %r11
	mulq	%r13
	movq	%r13, %rax
	addq	%rdx, %r10
	movq	%rsi, %rdx
	adcq	$0, %r11
	mulx	%r12, %rsi, %rdi
	shrdq	%r11, %r10
	shrx	%rcx, %r11, %r11
	testb	$64, %cl
	cmovne	%r11, %r10
	mulq	%r12
	addq	%rdx, %rsi
	adcq	$0, %rdi
	shrdq	%rdi, %rsi
	shrx	%rcx, %rdi, %rdi
	andl	$64, %ecx
	cmovne	%rdi, %rsi
	cmpl	$21, %ebx
	ja	.L192
	movq	%r12, %rax
	movabsq	$-3689348814741910323, %rcx
	mulq	%rcx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leal	(%rdi,%rdi,4), %eax
	cmpl	%r12d, %eax
	je	.L226
	cmpq	$0, 8(%rsp)
	je	.L247
	movq	%r14, %rax
	xorl	%r9d, %r9d
	mulq	%rcx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leal	(%rdi,%rdi,4), %eax
	cmpl	%r14d, %eax
	je	.L203
	jmp	.L202
	.p2align 4
	.p2align 3
.L248:
	movq	%rdx, %rdi
.L203:
	incl	%r9d
	testq	%rdi, %rdi
	je	.L199
	movq	%rdi, %rax
	mulq	%rcx
	shrq	$2, %rdx
	leal	(%rdx,%rdx,4), %eax
	cmpl	%edi, %eax
	je	.L248
.L202:
	cmpl	%ebx, %r9d
	adcq	$-1, %r8
.L192:
	movq	%r8, %rcx
	movabsq	$2951479051793528259, %r9
	movq	%r10, %rdi
	shrq	$2, %rcx
	movq	%rcx, %rax
	mulq	%r9
	shrq	$2, %rdi
	movq	%rdi, %rax
	movq	%rdx, %rcx
	mulq	%r9
	shrq	$2, %rcx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	cmpq	%rcx, %rdi
	jnb	.L233
	movq	%rsi, %rdx
	movq	%rdi, %r10
	movq	%rcx, %r8
	movl	$2, %r11d
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%r9
	shrq	$2, %rdx
	imull	$100, %edx, %eax
	subl	%eax, %esi
	cmpl	$49, %esi
	movq	%rdx, %rsi
	seta	%r9b
.L222:
	movq	%r8, %rax
	movabsq	$-3689348814741910323, %rdi
	mulq	%rdi
	movq	%r10, %rax
	movq	%rdx, %r8
	mulq	%rdi
	shrq	$3, %r8
	movq	%rdx, %rcx
	shrq	$3, %rcx
	cmpq	%r8, %rcx
	jnb	.L223
	.p2align 4
	.p2align 3
.L224:
	movq	%rsi, %rax
	movq	%rsi, %r9
	movq	%rcx, %r10
	incl	%r11d
	mulq	%rdi
	movq	%r8, %rax
	movq	%rdx, %rsi
	mulq	%rdi
	movq	%rcx, %rax
	shrq	$3, %rsi
	movq	%rdx, %r8
	mulq	%rdi
	shrq	$3, %r8
	movq	%rdx, %rcx
	shrq	$3, %rcx
	cmpq	%r8, %rcx
	jb	.L224
	leal	(%rsi,%rsi,4), %edx
	movl	%r9d, %eax
	addl	%edx, %edx
	subl	%edx, %eax
	cmpl	$4, %eax
	seta	%r9b
.L223:
	cmpq	%r10, %rsi
	movl	$1, %eax
	cmove	%eax, %r9d
	addl	%r11d, %ebp
	movzbl	%r9b, %r9d
	addq	%r9, %rsi
.L221:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %edx
	movq	%rsi, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L233:
	.cfi_restore_state
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	jmp	.L222
	.p2align 4
	.p2align 3
.L245:
	cmpq	$0, 8(%rsp)
	je	.L229
	movabsq	$-3689348814741910323, %rcx
	movq	%r10, %rax
	decq	%r8
	movq	%r9, %r15
	mulq	%rcx
	movq	%r8, %rax
	xorl	%edi, %edi
	movl	$1, %ebx
	shrq	$3, %rdx
	movq	%rdx, %r11
	mulq	%rcx
	movq	%rdx, %r8
	shrq	$3, %r8
	cmpq	%r8, %r11
	jnb	.L249
	.p2align 4
	.p2align 3
.L208:
	xorl	%r12d, %r12d
	xorl	%r9d, %r9d
	movabsq	$-3689348814741910323, %r13
	jmp	.L213
	.p2align 4
	.p2align 3
.L232:
	movq	%rcx, %r11
.L213:
	movq	%rsi, %rax
	movq	%rsi, %rcx
	mulq	%r13
	leal	(%r11,%r11,4), %eax
	addl	%eax, %eax
	movq	%rdx, %rsi
	shrq	$3, %rsi
	cmpl	%r10d, %eax
	movq	%r11, %r10
	sete	%al
	andl	%eax, %edi
	testb	%r12b, %r12b
	movl	%ecx, %r12d
	sete	%al
	incl	%r9d
	andl	%eax, %ebx
	leal	(%rsi,%rsi,4), %eax
	addl	%eax, %eax
	subl	%eax, %r12d
	movq	%r8, %rax
	mulq	%r13
	movq	%r11, %rax
	movq	%rdx, %r8
	mulq	%r13
	shrq	$3, %r8
	movq	%rdx, %rcx
	shrq	$3, %rcx
	cmpq	%r8, %rcx
	jb	.L232
	testb	%dil, %dil
	jne	.L214
.L244:
	cmpb	$5, %r12b
	sete	%al
	addl	%r9d, %ebp
	andl	%eax, %ebx
	testb	%bl, %bl
	jne	.L250
.L217:
	cmpq	%r11, %rsi
	je	.L251
.L210:
	xorl	%eax, %eax
	cmpb	$4, %r12b
	seta	%al
	addq	%rax, %rsi
	jmp	.L221
	.p2align 4
	.p2align 3
.L247:
	movq	%r9, %rax
	mulq	%rcx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leal	(%rdi,%rdi,4), %eax
	cmpl	%r9d, %eax
	movl	$0, %r9d
	je	.L196
	jmp	.L195
	.p2align 4
	.p2align 3
.L252:
	movq	%rdx, %rdi
.L196:
	incl	%r9d
	testq	%rdi, %rdi
	je	.L199
	movq	%rdi, %rax
	mulq	%rcx
	shrq	$2, %rdx
	leal	(%rdx,%rdx,4), %eax
	cmpl	%edi, %eax
	je	.L252
.L195:
	cmpl	%ebx, %r9d
	setnb	%dil
	xorl	%ebx, %ebx
	movl	%edi, %eax
	jmp	.L200
	.p2align 4
	.p2align 3
.L251:
	testb	%dil, %dil
	je	.L209
	andl	$1, %r15d
	je	.L210
	.p2align 4
	.p2align 3
.L209:
	incq	%rsi
	jmp	.L221
	.p2align 4
	.p2align 3
.L229:
	movq	%r9, %r15
	movl	$1, %ebx
	jmp	.L207
	.p2align 4
	.p2align 3
.L190:
	imull	$-732923, %edx, %eax
	xorl	%ecx, %ecx
	shrl	$20, %eax
	cmpl	$-1, %edx
	setl	%cl
	subl	%ecx, %eax
	movl	%eax, %ebx
	movl	$1077, %eax
	subl	%esi, %eax
	subl	%ebx, %eax
	jns	.L253
.L205:
	leaq	.LC6(%rip), %rcx
	movl	$77, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	__assert_fail@PLT
	.p2align 4
	.p2align 3
.L226:
	xorl	%r9d, %r9d
	jmp	.L193
	.p2align 4
	.p2align 3
.L254:
	movq	%rdx, %rdi
.L193:
	incl	%r9d
	testq	%rdi, %rdi
	je	.L199
	movq	%rdi, %rax
	mulq	%rcx
	shrq	$2, %rdx
	leal	(%rdx,%rdx,4), %eax
	cmpl	%edi, %eax
	je	.L254
	cmpl	%ebx, %r9d
	setnb	%bl
	xorl	%edi, %edi
	movl	%ebx, %eax
	jmp	.L200
.L249:
	xorl	%r12d, %r12d
	cmpq	%r14, %r10
	jne	.L210
	jmp	.L209
.L199:
	leaq	.LC18(%rip), %rcx
	movl	$193, %edx
	leaq	.LC19(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	call	__assert_fail@PLT
.L246:
	leaq	.LC21(%rip), %rcx
	movl	$213, %edx
	leaq	.LC19(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	call	__assert_fail@PLT
.L253:
	movslq	%eax, %r8
	imull	$1217359, %eax, %eax
	leal	(%rbx,%rdx), %ebp
	movl	%ebx, %edx
	salq	$4, %r8
	shrl	$19, %eax
	subl	%eax, %edx
	movzbl	%dil, %r13d
	movq	%r15, %r9
	leal	60(%rdx), %ecx
	jmp	.L189
	.cfi_endproc
.LFE10467:
	.size	_ZL3d2dmj, .-_ZL3d2dmj
	.p2align 4
	.globl	_Z14ryu_f64_to_decdPyPi
	.type	_Z14ryu_f64_to_decdPyPi, @function
_Z14ryu_f64_to_decdPyPi:
.LFB10484:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	vmovq	%xmm0, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	movabsq	$4503599627370495, %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	shrq	$52, %rsi
	andq	%rax, %rdi
	andl	$2047, %esi
	call	_ZL3d2dmj
	movq	%rax, 0(%rbp)
	movl	%edx, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10484:
	.size	_Z14ryu_f64_to_decdPyPi, .-_Z14ryu_f64_to_decdPyPi
	.p2align 4
	.globl	_Z24schubfach_xjb_f64_to_decdPyPi
	.type	_Z24schubfach_xjb_f64_to_decdPyPi, @function
_Z24schubfach_xjb_f64_to_decdPyPi:
.LFB10404:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vmovq	%xmm0, %rcx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	movq	%rdi, %r14
	movabsq	$4503599627370495, %rdi
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	%rcx, %rdi
	andq	$-32, %rsp
	shrq	$52, %rcx
	andl	$2047, %ecx
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movq	%rsi, -24(%rsp)
	je	.L264
	subl	$1075, %ecx
	btsq	$52, %rbx
	imull	$1262611, %ecx, %esi
.L258:
	leaq	0(,%rbx,4), %r15
	cmpq	$1, %rdi
	leal	-524031(%rsi), %edx
	movl	$292, %r10d
	movq	%r15, %rax
	leaq	2(%r15), %r9
	adcq	$-2, %rax
	sarl	$22, %edx
	sarl	$22, %esi
	testq	%rdi, %rdi
	cmove	%edx, %esi
	imull	$-1741647, %esi, %edx
	subl	%esi, %r10d
	movslq	%r10d, %r10
	salq	$4, %r10
	sarl	$19, %edx
	leal	1(%rcx,%rdx), %r13d
	leaq	_ZZN3xjbL19ComputePow10_DoubleEiE1g(%rip), %rdx
	addq	%rdx, %r10
	shlx	%r13, %rax, %rax
	movq	%rax, %rdx
	shlx	%r13, %r15, %r15
	movq	8(%r10), %r12
	movq	(%r10), %r8
	mulx	%r8, %r10, %r11
	mulq	%r12
	movq	%r12, %rax
	addq	%rdx, %r10
	movq	%r8, %rdx
	adcq	$0, %r11
	movq	%r10, -16(%rsp)
	movq	%r11, -8(%rsp)
	mulx	%r15, %r10, %r11
	mulq	%r15
	movq	%r10, %rax
	movq	%rdx, %r15
	movq	%r11, %rdx
	addq	%r15, %rax
	adcq	$0, %rdx
	xorl	%r11d, %r11d
	cmpq	$1, %rax
	movq	%r12, %rax
	seta	%r11b
	movq	%rdx, %r10
	movq	-16(%rsp), %r12
	orq	%rdx, %r11
	shlx	%r13, %r9, %rdx
	mulx	%r8, %r8, %r9
	movq	$-3, %r13
	mulq	%rdx
	movq	-8(%rsp), %rax
	addq	%rdx, %r8
	adcq	$0, %r9
	cmpq	$1, %r8
	seta	%r8b
	andl	$1, %ebx
	movzbl	%r8b, %r8d
	orq	%r9, %r8
	cmpq	$1, %r12
	seta	%r12b
	andl	$7, %r11d
	subq	%rbx, %r13
	shrq	$2, %r10
	movzbl	%r12b, %r12d
	orq	%rax, %r12
	movabsq	$1844674407370955162, %rax
	mulq	%r10
	movl	$200, %eax
	addq	%rbx, %r12
	sarx	%r11d, %eax, %eax
	andl	$1, %eax
	addq	%r10, %rax
	leaq	0(,%rdx,4), %r9
	leaq	(%r9,%rdx), %rbx
	addq	%rbx, %rbx
	testq	%rdi, %rdi
	je	.L267
.L261:
	addq	%rdx, %r9
	salq	$3, %r9
	cmpq	%r12, %r9
	cmovnb	%rbx, %rax
	addq	%r13, %r8
	addq	$37, %r9
	addq	$10, %rbx
	cmpq	%r9, %r8
	cmovnb	%rbx, %rax
	movq	%rax, (%r14)
	movq	-24(%rsp), %rax
	movl	%esi, (%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4
	.p2align 3
.L267:
	.cfi_restore_state
	movl	$1, %edi
	vpbroadcastw	%ecx, %ymm1
	vpbroadcastw	%edi, %ymm0
	vpcmpeqw	.LC22(%rip), %ymm1, %ymm1
	vpand	%ymm0, %ymm1, %ymm1
	vpmovzxwd	%xmm1, %ymm0
	vextracti128	$0x1, %ymm1, %xmm1
	vpmovzxwd	%xmm1, %ymm1
	vextracti128	$0x1, %ymm0, %xmm2
	vpmovzxdq	%xmm0, %ymm0
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm0, %ymm2, %ymm2
	vpmovzxdq	%xmm1, %ymm0
	vextracti128	$0x1, %ymm1, %xmm1
	vpmovzxdq	%xmm1, %ymm1
	vpaddq	%ymm2, %ymm0, %ymm0
	vpbroadcastw	%ecx, %xmm2
	vpaddq	%ymm0, %ymm1, %ymm1
	vpcmpeqw	.LC24(%rip), %xmm2, %xmm2
	vpbroadcastw	%edi, %xmm0
	vpand	%xmm0, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm0
	vpmovzxdq	%xmm3, %xmm3
	vpmovzxdq	%xmm0, %xmm0
	vpaddq	%xmm3, %xmm0, %xmm0
	vpmovzxdq	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxdq	%xmm2, %xmm2
	vpaddq	%xmm3, %xmm0, %xmm0
	vpaddq	%xmm2, %xmm0, %xmm0
	vpaddq	%xmm1, %xmm0, %xmm0
	vextracti64x2	$0x1, %ymm1, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rdi
	addq	%rax, %rdi
	xorl	%eax, %eax
	cmpw	$811, %cx
	sete	%al
	cmpw	$924, %cx
	sete	%cl
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	addq	%rdi, %rax
	vzeroupper
	jmp	.L261
	.p2align 4
	.p2align 3
.L264:
	movl	$-1356044214, %esi
	movl	$-1074, %ecx
	jmp	.L258
	.cfi_endproc
.LFE10404:
	.size	_Z24schubfach_xjb_f64_to_decdPyPi, .-_Z24schubfach_xjb_f64_to_decdPyPi
	.p2align 4
	.globl	_Z20schubfach_f32_to_decfPjPi
	.type	_Z20schubfach_f32_to_decfPjPi, @function
_Z20schubfach_f32_to_decfPjPi:
.LFB10343:
	.cfi_startproc
	endbr64
	movq	%rsi, %r11
	vmovd	%xmm0, %esi
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r10
	movq	%rsi, %rcx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	shrq	$23, %rsi
	movl	%ecx, %edx
	testb	$-2, %sil
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	setne	%r8b
	andl	$8388607, %edx
	sete	%al
	andl	$1, %ecx
	andl	%eax, %r8d
	andl	$255, %esi
	movzbl	%r8b, %eax
	je	.L269
	orl	$8388608, %edx
	leal	-150(%rsi), %edi
	leal	0(,%rdx,4), %r9d
	imull	$1262611, %edi, %ebp
	leal	-2(%r9,%rax), %esi
	testb	%r8b, %r8b
	je	.L270
	subl	$524031, %ebp
	leaq	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g(%rip), %rdx
	xorl	%r15d, %r15d
	movl	$33554434, %r12d
	sarl	$22, %ebp
	imull	$-1741647, %ebp, %eax
	movl	$33554432, %r9d
	sarl	$19, %eax
	leal	1(%rdi,%rax), %ebx
	movl	$31, %eax
	subl	%ebp, %eax
	movq	(%rdx,%rax,8), %r14
.L271:
	movq	%r15, %rax
	shlx	%ebx, %esi, %esi
	movq	%rsi, %rdx
	movq	%r15, %r13
	imulq	%rsi, %rax
	mulx	%r14, %rsi, %rdi
	movq	%rsi, -24(%rsp)
	movq	%rdi, -16(%rsp)
	movq	-24(%rsp), %rsi
	addq	%rax, %rdi
	shlx	%ebx, %r9d, %eax
	imulq	%rax, %r13
	movq	%rax, %rdx
	mulx	%r14, %r8, %r9
	movq	%r8, %rax
	shrq	$32, %rax
	leaq	(%r9,%r13), %rdx
	xorl	%r13d, %r13d
	cmpl	$1, %eax
	movq	%r15, %r9
	seta	%r13b
	shlx	%ebx, %r12d, %eax
	imulq	%rax, %r9
	shrq	$32, %rsi
	orl	%edx, %r13d
	movq	%rax, %rdx
	mulx	%r14, %r14, %r15
	xorl	%edx, %edx
	movq	%r14, %rax
	cmpl	$1, %esi
	seta	%dl
	leaq	(%r9,%r15), %r8
	shrq	$32, %rax
	orl	%edi, %edx
	addl	%ecx, %edx
	cmpl	$1, %eax
	seta	%al
	movzbl	%al, %eax
	orl	%r8d, %eax
	subl	%ecx, %eax
	cmpl	$39, %r13d
	jbe	.L272
	movl	$3435973837, %esi
	movl	%r13d, %ecx
	imulq	%rsi, %rcx
	shrq	$37, %rcx
	leal	(%rcx,%rcx,4), %edi
	sall	$3, %edi
	leal	40(%rdi), %esi
	cmpl	%esi, %eax
	setnb	%sil
	cmpl	%edx, %edi
	setnb	%dil
	cmpb	%sil, %dil
	je	.L272
	movzbl	%sil, %esi
	addl	%ecx, %esi
	leal	(%rsi,%rsi,4), %ecx
	addl	%ecx, %ecx
	jmp	.L273
	.p2align 4
	.p2align 3
.L272:
	movl	%r13d, %edi
	movl	%r13d, %esi
	shrl	$2, %edi
	leal	1(%rdi), %ecx
	andl	$-4, %esi
	leal	0(,%rcx,4), %r8d
	cmpl	%r8d, %eax
	setnb	%al
	cmpl	%edx, %esi
	setnb	%dl
	cmpb	%al, %dl
	je	.L274
	movzbl	%al, %eax
	leal	(%rax,%rdi), %ecx
.L273:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	%ecx, (%r10)
	movl	%ebp, (%r11)
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L274:
	.cfi_restore_state
	addl	$2, %esi
	cmpl	%r13d, %esi
	jb	.L273
	andl	$-2, %ecx
	cmpl	%esi, %r13d
	cmovne	%edi, %ecx
	jmp	.L273
	.p2align 4
	.p2align 3
.L269:
	leal	0(,%rdx,4), %r9d
	movabsq	$-5522047002568494196, %r14
	xorl	%r15d, %r15d
	movl	$1, %ebx
	leal	-2(%r9,%rax), %esi
	leal	2(%r9), %r12d
	movl	$-45, %ebp
	jmp	.L271
.L270:
	sarl	$22, %ebp
	imull	$-1741647, %ebp, %eax
	leal	2(%r9), %r12d
	xorl	%r15d, %r15d
	sarl	$19, %eax
	leal	1(%rdi,%rax), %ebx
	movl	$31, %eax
	leaq	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g(%rip), %rdi
	subl	%ebp, %eax
	movq	(%rdi,%rax,8), %r14
	jmp	.L271
	.cfi_endproc
.LFE10343:
	.size	_Z20schubfach_f32_to_decfPjPi, .-_Z20schubfach_f32_to_decfPjPi
	.section	.rodata.str1.1
.LC26:
	.string	"shift > 32"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"uint32_t pow5factor_32(uint32_t)"
	.text
	.p2align 4
	.type	_ZL3f2djj, @function
_ZL3f2djj:
.LFB10479:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r10d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	testl	%edi, %edi
	setne	%bl
	cmpl	$1, %esi
	setbe	%dl
	andl	$1, %edi
	orl	%edx, %ebx
	movl	%edi, 16(%rsp)
	movzbl	%bl, %edx
	testl	%esi, %esi
	jne	.L358
	leal	0(,%r10,4), %ebp
	movl	$-46, %r11d
	movl	$105, %r12d
	movabsq	$2019483917365790221, %rdi
	leal	2(%rbp), %eax
	movl	$46, 20(%rsp)
	movl	$105, 28(%rsp)
	movl	$55998514, 24(%rsp)
	movl	%eax, 12(%rsp)
	leal	-1(%rbp), %eax
	subl	%edx, %eax
	movl	$59, %edx
	movl	%eax, 8(%rsp)
.L322:
	movq	%rdi, %rsi
	movl	%ebp, %r13d
	movl	%edi, %edi
	subl	$32, %edx
	shrq	$32, %rsi
	movq	%r13, %rcx
	movq	%rsi, %rax
	movl	$4294967295, %r9d
	imulq	%rdi, %rcx
	imulq	%r13, %rax
	shrq	$32, %rcx
	addq	%rcx, %rax
	shrx	%rdx, %rax, %rax
	cmpq	%rax, %r9
	jb	.L285
	movl	12(%rsp), %r8d
	movq	%r8, %rcx
	imulq	%rsi, %r8
	imulq	%rdi, %rcx
	shrq	$32, %rcx
	addq	%rcx, %r8
	shrx	%rdx, %r8, %r8
	cmpq	%r8, %r9
	jb	.L285
	movl	8(%rsp), %r14d
	movl	%r8d, %ecx
	imulq	%r14, %rdi
	imulq	%r14, %rsi
	shrq	$32, %rdi
	addq	%rdi, %rsi
	shrx	%rdx, %rsi, %rdx
	cmpq	%rdx, %r9
	jb	.L285
	movl	%edx, %esi
	movl	$3435973837, %r15d
	movl	%edx, %edx
	imulq	%r15, %rdx
	shrq	$35, %rdx
	testl	%r12d, %r12d
	je	.L327
	leal	-1(%r8), %r14d
	xorl	%edi, %edi
	imulq	%r15, %r14
	shrq	$35, %r14
	cmpl	%r14d, %edx
	jnb	.L359
.L305:
	cmpl	$1, %r12d
	je	.L304
	cmpl	$30, %r12d
	ja	.L321
	decl	%r12d
	bzhi	%r12d, %ebp, %r12d
	testl	%r12d, %r12d
	sete	%bpl
	xorl	%ebx, %ebx
	movl	%ebp, %r8d
	jmp	.L295
	.p2align 4
	.p2align 3
.L358:
	orl	$8388608, %r10d
	leal	0(,%r10,4), %ebp
	leal	-1(%rbp), %ecx
	leal	2(%rbp), %edi
	subl	%edx, %ecx
	movl	%esi, %edx
	movl	%edi, 12(%rsp)
	subl	$152, %edx
	movl	%ecx, 8(%rsp)
	js	.L282
	imull	$78913, %edx, %ebx
	shrl	$18, %ebx
	imull	$1217359, %ebx, %eax
	movl	%ebx, %r15d
	movl	%ebx, %r11d
	subl	%edx, %r15d
	shrl	$19, %eax
	leal	61(%r15,%rax), %esi
	leaq	_ZL21DOUBLE_POW5_INV_SPLIT(%rip), %rax
	vmovq	%rax, %xmm3
	movl	%ebx, %eax
	salq	$4, %rax
	vmovq	%xmm3, %rdi
	movq	8(%rdi,%rax), %rdx
	incq	%rdx
	cmpl	$32, %esi
	jle	.L288
	movq	%rdx, %r9
	movl	%ebp, %r8d
	movl	%edx, %edx
	subl	$32, %esi
	shrq	$32, %r9
	movq	%r8, %rax
	movq	%r9, %rcx
	movl	$4294967295, %r13d
	imulq	%rdx, %rax
	imulq	%r8, %rcx
	shrq	$32, %rax
	addq	%rcx, %rax
	shrx	%rsi, %rax, %rax
	cmpq	%rax, %r13
	jb	.L285
	vmovd	12(%rsp), %xmm1
	vmovq	%xmm1, %rcx
	vmovq	%xmm1, %r12
	imulq	%rdx, %rcx
	imulq	%r9, %r12
	shrq	$32, %rcx
	addq	%rcx, %r12
	shrx	%rsi, %r12, %r12
	cmpq	%r12, %r13
	jb	.L285
	vmovd	8(%rsp), %xmm2
	movl	%r12d, %ecx
	vmovq	%xmm2, %rdi
	imulq	%rdi, %rdx
	imulq	%rdi, %r9
	shrq	$32, %rdx
	addq	%rdx, %r9
	shrx	%rsi, %r9, %r9
	cmpq	%r9, %r13
	jb	.L285
	movl	%r9d, %esi
	testl	%ebx, %ebx
	jne	.L360
	xorl	%edi, %edi
.L286:
	movl	$3435973837, %r15d
	imulq	%r15, %r8
	movq	%r8, %r13
	shrq	$34, %r13
	leal	0(%r13,%r13,4), %edx
	movl	%r13d, %r14d
	subl	%edx, %ebp
	movl	%ebp, %r13d
	movl	%r14d, %ebp
	je	.L291
	movl	16(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.L296
	vmovq	%xmm2, %rbp
	movl	8(%rsp), %r12d
	imulq	%r15, %rbp
	shrq	$34, %rbp
	leal	0(%rbp,%rbp,4), %edx
	subl	%edx, %r12d
	je	.L298
	jmp	.L361
	.p2align 4
	.p2align 3
.L362:
	movl	%edx, %ebp
.L298:
	incl	%r12d
	testl	%ebp, %ebp
	je	.L294
	movl	%ebp, %edx
	imulq	%r15, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %r8d
	cmpl	%r8d, %ebp
	je	.L362
.L297:
	cmpl	%ebx, %r12d
	movl	$3435973837, %r8d
	movl	%r9d, %edx
	setnb	%bl
	imulq	%r8, %rdx
	xorl	%ebp, %ebp
	movl	%ebx, %r8d
	shrq	$35, %rdx
.L295:
	testb	%r8b, %r8b
	jne	.L308
.L321:
	movl	$3435973837, %r8d
	xorl	%r9d, %r9d
	imulq	%r8, %rcx
	shrq	$35, %rcx
	cmpl	%ecx, %edx
	jnb	.L310
	.p2align 4
	.p2align 3
.L309:
	movl	%edx, %edx
	movl	%ecx, %ecx
	movl	%eax, %eax
	incl	%r9d
	imulq	%r8, %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	imulq	%r8, %rdx
	imulq	%r8, %rax
	shrq	$35, %rcx
	shrq	$35, %rdx
	shrq	$35, %rax
	cmpl	%ecx, %edx
	jb	.L309
	leal	(%rax,%rax,4), %edx
	addl	%r9d, %r11d
	addl	%edx, %edx
	subl	%edx, %edi
.L310:
	cmpl	%eax, %esi
	sete	%dl
	cmpb	$4, %dil
	seta	%cl
	orl	%ecx, %edx
	movzbl	%dl, %edx
	addl	%edx, %eax
.L320:
	salq	$32, %r11
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	orq	%r11, %rax
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L363:
	.cfi_restore_state
	movl	%edx, %ebp
.L291:
	incl	%r13d
	testl	%ebp, %ebp
	je	.L294
	movl	%ebp, %edx
	imulq	%r15, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %r8d
	cmpl	%r8d, %ebp
	je	.L363
	cmpl	%ebx, %r13d
	movl	%r9d, %edx
	setnb	%bpl
	imulq	%r15, %rdx
	xorl	%ebx, %ebx
	movl	%ebp, %r8d
	shrq	$35, %rdx
	jmp	.L295
	.p2align 4
	.p2align 3
.L360:
	movl	$3435973837, %edi
	movl	%r9d, %edx
	leal	-1(%r12), %r14d
	imulq	%rdi, %rdx
	imulq	%rdi, %r14
	xorl	%edi, %edi
	shrq	$35, %rdx
	shrq	$35, %r14
	cmpl	%r14d, %edx
	jnb	.L364
.L287:
	cmpl	$9, %ebx
	ja	.L321
	jmp	.L286
	.p2align 4
	.p2align 3
.L327:
	xorl	%edi, %edi
.L304:
	movl	16(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L365
.L307:
	movl	$1, %ebp
.L308:
	movl	$3435973837, %r12d
	imulq	%r12, %rcx
	shrq	$35, %rcx
	cmpl	%ecx, %edx
	jnb	.L330
	xorl	%r9d, %r9d
	jmp	.L312
	.p2align 4
	.p2align 3
.L331:
	movl	%r8d, %edx
.L312:
	imull	$-858993459, %esi, %esi
	movl	%ecx, %ecx
	rorx	$1, %esi, %esi
	cmpl	$429496729, %esi
	setbe	%sil
	andl	%esi, %ebx
	testb	%dil, %dil
	movl	%eax, %edi
	sete	%sil
	imulq	%r12, %rcx
	incl	%r9d
	andl	%esi, %ebp
	movl	%eax, %esi
	imulq	%r12, %rsi
	shrq	$35, %rcx
	shrq	$35, %rsi
	leal	(%rsi,%rsi,4), %r8d
	movl	%esi, %eax
	movl	%edx, %esi
	addl	%r8d, %r8d
	subl	%r8d, %edi
	movl	%edx, %r8d
	imulq	%r12, %r8
	shrq	$35, %r8
	cmpl	%ecx, %r8d
	jb	.L331
.L311:
	testb	%bl, %bl
	je	.L313
	imull	$-858993459, %edx, %ecx
	rorx	$1, %ecx, %ecx
	cmpl	$429496729, %ecx
	ja	.L313
	movl	$3435973837, %r8d
	.p2align 4
	.p2align 3
.L314:
	testb	%dil, %dil
	movl	%edx, %edx
	movl	%eax, %edi
	sete	%cl
	imulq	%r8, %rdx
	incl	%r9d
	andl	%ecx, %ebp
	movl	%eax, %ecx
	imulq	%r8, %rcx
	shrq	$35, %rdx
	shrq	$35, %rcx
	leal	(%rcx,%rcx,4), %esi
	movl	%ecx, %eax
	imull	$-858993459, %edx, %ecx
	addl	%esi, %esi
	subl	%esi, %edi
	rorx	$1, %ecx, %ecx
	cmpl	$429496729, %ecx
	jbe	.L314
.L313:
	cmpb	$5, %dil
	jne	.L315
	testb	%bpl, %bpl
	je	.L315
	testb	$1, %al
	jne	.L332
	cmpl	%edx, %eax
	jne	.L317
	xorl	$1, %ebx
	andl	$1, %r10d
	orl	%r10d, %ebx
	movzbl	%bl, %edx
	addl	%edx, %eax
	jmp	.L317
	.p2align 4
	.p2align 3
.L315:
	cmpl	%edx, %eax
	je	.L366
.L318:
	xorl	%edx, %edx
	cmpb	$4, %dil
	seta	%dl
	addl	%edx, %eax
.L317:
	addl	%r9d, %r11d
	jmp	.L320
	.p2align 4
	.p2align 3
.L296:
	vmovq	%xmm1, %r10
	movl	12(%rsp), %r8d
	imulq	%r15, %r10
	shrq	$34, %r10
	leal	(%r10,%r10,4), %edx
	subl	%edx, %r8d
	je	.L301
	jmp	.L367
	.p2align 4
	.p2align 3
.L368:
	movl	%edx, %r10d
.L301:
	incl	%r8d
	testl	%r10d, %r10d
	je	.L294
	movl	%r10d, %edx
	imulq	%r15, %rdx
	shrq	$34, %rdx
	leal	(%rdx,%rdx,4), %ecx
	cmpl	%ecx, %r10d
	je	.L368
.L300:
	cmpl	%ebx, %r8d
	movl	$3435973837, %edx
	movl	%r12d, %ecx
	movl	%r9d, %r9d
	adcl	$-1, %ecx
	imulq	%rdx, %r9
	shrq	$35, %r9
	movq	%r9, %rdx
	jmp	.L321
	.p2align 4
	.p2align 3
.L365:
	leal	-1(%r8), %ecx
	xorl	%ebx, %ebx
	jmp	.L307
	.p2align 4
	.p2align 3
.L366:
	testb	%bl, %bl
	je	.L332
	andl	$1, %r10d
	je	.L318
	.p2align 4
	.p2align 3
.L332:
	incl	%eax
	jmp	.L317
	.p2align 4
	.p2align 3
.L364:
	leal	-1(%rbx), %edi
	imull	$1217359, %edi, %r14d
	salq	$4, %rdi
	shrl	$19, %r14d
	leal	60(%r15,%r14), %r15d
	vmovq	%xmm3, %r14
	movq	8(%r14,%rdi), %rdi
	incq	%rdi
	cmpl	$32, %r15d
	jle	.L288
	movl	%edi, %r14d
	imulq	%r8, %r14
	shrq	$32, %rdi
	imulq	%r8, %rdi
	shrq	$32, %r14
	addq	%rdi, %r14
	leal	-32(%r15), %edi
	shrx	%rdi, %r14, %rdi
	cmpq	%rdi, %r13
	jb	.L285
	movl	%edi, %r14d
	movl	$3435973837, %r13d
	imulq	%r13, %r14
	shrq	$35, %r14
	leal	(%r14,%r14,4), %r14d
	leal	(%r14,%r14), %r13d
	subl	%r13d, %edi
	jmp	.L287
	.p2align 4
	.p2align 3
.L359:
	movl	24(%rsp), %edi
	addl	$1217359, %edi
	shrl	$19, %edi
	movl	%edi, %r14d
	movl	28(%rsp), %edi
	subl	%r14d, %edi
	movl	20(%rsp), %r14d
	addl	$59, %edi
	movl	%edi, 8(%rsp)
	leal	1(%r14), %edi
	leaq	_ZL17DOUBLE_POW5_SPLIT(%rip), %r14
	salq	$4, %rdi
	cmpl	$32, 8(%rsp)
	movq	8(%r14,%rdi), %r14
	jle	.L288
	movl	%r14d, %edi
	shrq	$32, %r14
	imulq	%r13, %rdi
	imulq	%r13, %r14
	movl	8(%rsp), %r13d
	shrq	$32, %rdi
	addq	%rdi, %r14
	subl	$32, %r13d
	shrx	%r13, %r14, %r13
	cmpq	%r13, %r9
	jb	.L285
	movl	%r13d, %edi
	imulq	%r15, %rdi
	shrq	$35, %rdi
	leal	(%rdi,%rdi,4), %r9d
	movl	%r13d, %edi
	addl	%r9d, %r9d
	subl	%r9d, %edi
	jmp	.L305
	.p2align 4
	.p2align 3
.L330:
	movl	%esi, %edx
	xorl	%r9d, %r9d
	jmp	.L311
.L361:
	xorl	%r12d, %r12d
	jmp	.L297
.L367:
	xorl	%r8d, %r8d
	jmp	.L300
.L294:
	leaq	.LC27(%rip), %rcx
	movl	$61, %edx
	leaq	.LC9(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	call	__assert_fail@PLT
.L285:
	call	_ZL10mulShift32jmi.part.0
.L288:
	leaq	.LC8(%rip), %rcx
	movl	$90, %edx
	leaq	.LC9(%rip), %rsi
	leaq	.LC26(%rip), %rdi
	call	__assert_fail@PLT
.L282:
	imull	$-732923, %edx, %r12d
	shrl	$20, %r12d
	leal	(%rdx,%r12), %r11d
	movl	$152, %edx
	movl	%r12d, 28(%rsp)
	subl	%esi, %edx
	subl	%r12d, %edx
	movl	%edx, 20(%rsp)
	js	.L369
	imull	$1217359, 20(%rsp), %eax
	movl	%r12d, %edx
	movl	%eax, 24(%rsp)
	shrl	$19, %eax
	subl	$60, %eax
	subl	%eax, %edx
	cmpl	$32, %edx
	jle	.L288
	movl	20(%rsp), %eax
	leaq	_ZL17DOUBLE_POW5_SPLIT(%rip), %rcx
	salq	$4, %rax
	movq	8(%rcx,%rax), %rdi
	jmp	.L322
.L369:
	leaq	.LC6(%rip), %rcx
	movl	$77, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE10479:
	.size	_ZL3f2djj, .-_ZL3f2djj
	.p2align 4
	.globl	_Z14ryu_f32_to_decfPjPi
	.type	_Z14ryu_f32_to_decfPjPi, @function
_Z14ryu_f32_to_decfPjPi:
.LFB10485:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	vmovd	%xmm0, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	movl	%edi, %esi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	andl	$8388607, %edi
	shrl	$23, %esi
	andl	$255, %esi
	call	_ZL3f2djj
	movl	%eax, 0(%rbp)
	sarq	$32, %rax
	movl	%eax, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10485:
	.size	_Z14ryu_f32_to_decfPjPi, .-_Z14ryu_f32_to_decfPjPi
	.p2align 4
	.globl	_Z20dragonbox_f64_to_decdPyPi
	.type	_Z20dragonbox_f64_to_decdPyPi, @function
_Z20dragonbox_f64_to_decdPyPi:
.LFB10443:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	movq	%rsi, %r8
	movabsq	$4503599627370495, %rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rax, %rdx
	andq	%rax, %rsi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r9
	shrq	$52, %rdx
	andl	$2047, %edx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	je	.L391
	leal	-1075(%rdx), %ebp
	movabsq	$9214364837600034816, %rdi
	imull	$1262611, %ebp, %ecx
	testq	%rdi, %rax
	je	.L393
	testq	%rsi, %rsi
	jne	.L393
	subl	$524031, %ecx
	movl	$292, %eax
	leaq	_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10(%rip), %rsi
	movl	$11, %r11d
	sarl	$22, %ecx
	subl	%ecx, %eax
	imull	$-1741647, %ecx, %r10d
	salq	$4, %rax
	movq	(%rsi,%rax), %rdi
	sarl	$19, %r10d
	addl	%ebp, %r10d
	movq	%rdi, %rax
	movq	%rdi, %rsi
	subl	%r10d, %r11d
	shrq	$54, %rax
	subq	%rax, %rsi
	leal	-1077(%rdx), %eax
	movq	%rdi, %rdx
	cmpl	$1, %eax
	shrx	%r11, %rsi, %rsi
	seta	%al
	shrq	$53, %rdx
	movzbl	%al, %eax
	addq	%rdi, %rdx
	addq	%rax, %rsi
	movabsq	$-3689348814741910323, %rax
	shrx	%r11, %rdx, %rdx
	mulq	%rdx
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	%rdx, -56(%rsp)
	addq	%rax, %rax
	cmpq	%rsi, %rax
	jnb	.L386
	movl	$10, %eax
	subl	%r10d, %eax
	shrx	%rax, %rdi, %rax
	incq	%rax
	shrq	%rax
	cmpl	$-77, %ebp
	je	.L404
	cmpq	%rsi, %rax
	adcq	$0, %rax
	movq	%rax, -56(%rsp)
	jmp	.L380
	.p2align 4
	.p2align 3
.L393:
	sarl	$22, %ecx
	leal	-2(%rcx), %eax
	movl	$2, %edi
	leaq	_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10(%rip), %rdx
	movl	$63, %ebx
	movl	%eax, -12(%rsp)
	movl	$294, %eax
	subl	%ecx, %edi
	btsq	$52, %rsi
	subl	%ecx, %eax
	imull	$1741647, %edi, %edi
	xorl	%r11d, %r11d
	salq	$4, %rax
	addq	%rdx, %rax
	xorl	%edx, %edx
	movq	(%rax), %r12
	movq	8(%rax), %rax
	movq	%rdx, -32(%rsp)
	sarl	$19, %edi
	addl	%ebp, %edi
	subl	%edi, %ebx
	movq	%r12, %r10
	movq	%rax, -40(%rsp)
	shrx	%rbx, %r12, %rbx
.L373:
	leaq	(%rsi,%rsi), %r13
	movq	%r11, %rdx
	leaq	1(%r13), %r15
	shlx	%rdi, %r15, %rax
	imulq	%rax, %rdx
	movq	%rdx, %r14
	movq	%rax, %rdx
	mulx	%r10, %r10, %r11
	movq	%r11, -48(%rsp)
	leaq	(%r11,%r14), %r11
	movq	-32(%rsp), %r14
	movq	%r10, -56(%rsp)
	imulq	%rax, %r14
	mulq	-40(%rsp)
	movabsq	$2361183241434822607, %rax
	addq	%rdx, %r14
	addq	-56(%rsp), %r14
	adcq	$0, %r11
	movq	%r11, %rdx
	shrq	$3, %rdx
	mulq	%rdx
	shrq	$4, %rdx
	imull	$1000, %edx, %eax
	movq	%rdx, -56(%rsp)
	subl	%eax, %r11d
	cmpl	%ebx, %r11d
	jnb	.L381
	notq	%rsi
	andl	$1, %esi
	cmpl	$-2, %ebp
	setl	%al
	orb	%sil, %al
	jne	.L386
	testl	%r11d, %r11d
	jne	.L386
	cmpl	$9, %ebp
	jle	.L383
	cmpl	$86, %ebp
	jle	.L405
	.p2align 4
	.p2align 3
.L386:
	incl	%ecx
.L380:
	movq	-56(%rsp), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	movq	%rax, (%r9)
	movl	%ecx, (%r8)
	ret
	.p2align 4
	.p2align 3
.L381:
	.cfi_restore_state
	je	.L406
.L384:
	movq	-56(%rsp), %rax
	shrl	%ebx
	subl	%ebx, %r11d
	leaq	(%rax,%rax,4), %r10
	leal	50(%r11), %eax
	movq	%rax, %rsi
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	movl	%eax, %edx
	imull	$100, %eax, %eax
	leaq	(%rdx,%r10,2), %rbx
	movq	%rbx, -56(%rsp)
	cmpl	%eax, %esi
	jne	.L380
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rbx
	imulq	%r13, %r12
	imulq	%r13, %rax
	movq	%rbx, %rdx
	mulx	%r13, %r10, %r11
	addq	%r11, %rax
	addq	%rax, %r12
	movl	$64, %eax
	subl	%edi, %eax
	btq	%rax, %r12
	jc	.L390
	testb	$1, -56(%rsp)
	je	.L380
	cmpl	$-4, %ebp
	jge	.L389
	movl	-12(%rsp), %eax
	subl	%ebp, %eax
	incl	%eax
	cmpl	$63, %eax
	jg	.L380
	bzhi	%rax, %r13, %rax
	testq	%rax, %rax
	jne	.L380
	.p2align 4
	.p2align 3
.L390:
	decq	-56(%rsp)
	jmp	.L380
	.p2align 4
	.p2align 3
.L406:
	leaq	-1(%r13), %rax
	cmpl	$-2, %ebp
	jl	.L385
	andl	$1, %esi
	je	.L407
.L385:
	movq	-40(%rsp), %r14
	movq	-32(%rsp), %rsi
	movq	%r14, %rdx
	imulq	%rax, %rsi
	mulx	%rax, %r10, %r11
	imulq	%r12, %rax
	addq	%r11, %rsi
	addq	%rsi, %rax
	movl	$64, %esi
	subl	%edi, %esi
	btq	%rsi, %rax
	jc	.L386
	movl	%ebx, %r11d
	jmp	.L384
	.p2align 4
	.p2align 3
.L404:
	andq	$-2, %rax
	movq	%rax, -56(%rsp)
	jmp	.L380
	.p2align 4
	.p2align 3
.L391:
	movabsq	$-5130745324059681113, %rax
	xorl	%edx, %edx
	movabsq	$-646153205651940552, %r10
	xorl	%r11d, %r11d
	movl	$494, %ebx
	movabsq	$-646153205651940552, %r12
	movl	$8, %edi
	movl	$-324, %ecx
	movl	$-1074, %ebp
	movq	%rax, -40(%rsp)
	movq	%rdx, -32(%rsp)
	movl	$-326, -12(%rsp)
	jmp	.L373
	.p2align 4
	.p2align 3
.L405:
	movl	-12(%rsp), %eax
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %rsi
	salq	$4, %rax
	imulq	(%rsi,%rax), %r15
	cmpq	8(%rsi,%rax), %r15
	ja	.L386
.L383:
	movl	$1000, %r11d
	decq	-56(%rsp)
	jmp	.L384
	.p2align 4
	.p2align 3
.L407:
	cmpl	$9, %ebp
	jle	.L386
	cmpl	$86, %ebp
	jg	.L385
	movl	-12(%rsp), %esi
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %r10
	salq	$4, %rsi
	movq	(%r10,%rsi), %r11
	imulq	%rax, %r11
	cmpq	8(%r10,%rsi), %r11
	jbe	.L386
	jmp	.L385
	.p2align 4
	.p2align 3
.L389:
	cmpl	$9, %ebp
	jle	.L390
	cmpl	$86, %ebp
	jg	.L380
	movl	-12(%rsp), %eax
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %rsi
	salq	$4, %rax
	imulq	(%rsi,%rax), %r13
	cmpq	8(%rsi,%rax), %r13
	jbe	.L390
	jmp	.L380
	.cfi_endproc
.LFE10443:
	.size	_Z20dragonbox_f64_to_decdPyPi, .-_Z20dragonbox_f64_to_decdPyPi
	.p2align 4
	.globl	_Z20schubfach_f64_to_decdPyPi
	.type	_Z20schubfach_f64_to_decdPyPi, @function
_Z20schubfach_f64_to_decdPyPi:
.LFB10342:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	movabsq	$4503599627370495, %rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	andq	%rax, %rcx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r14
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	shrq	$52, %rax
	andl	$2047, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	je	.L416
	subl	$1075, %eax
	btsq	$52, %r12
	imull	$1262611, %eax, %esi
.L409:
	movq	%r12, %rbp
	leal	-524031(%rsi), %edi
	salq	$2, %r12
	andl	$1, %ebp
	movq	%r12, %rdx
	cmpq	$1, %rcx
	leaq	2(%r12), %r10
	adcq	$-2, %rdx
	sarl	$22, %edi
	sarl	$22, %esi
	testq	%rcx, %rcx
	cmove	%edi, %esi
	imull	$-1741647, %esi, %ecx
	sarl	$19, %ecx
	leal	1(%rax,%rcx), %r11d
	movl	$292, %ecx
	leaq	_ZZL19ComputePow10_DoubleiE1g(%rip), %rax
	subl	%esi, %ecx
	shlx	%r11, %rdx, %rdx
	shlx	%r11, %r10, %r10
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rdi
	movq	%rdx, %rax
	mulx	%rcx, %r8, %r9
	mulq	%rdi
	movq	%rdi, %rax
	addq	%rdx, %r8
	shlx	%r11, %r12, %rdx
	mulx	%rcx, %r12, %r13
	adcq	$0, %r9
	mulq	%rdx
	movq	%rdi, %rax
	addq	%rdx, %r12
	movq	%rcx, %rdx
	adcq	$0, %r13
	xorl	%r15d, %r15d
	cmpq	$1, %r12
	seta	%r15b
	orq	%r13, %r15
	mulx	%r10, %r12, %r13
	mulq	%r10
	addq	%rdx, %r12
	adcq	$0, %r13
	xorl	%ecx, %ecx
	cmpq	$1, %r8
	seta	%cl
	xorl	%edi, %edi
	orq	%r9, %rcx
	addq	%rbp, %rcx
	cmpq	$1, %r12
	seta	%dil
	orq	%r13, %rdi
	subq	%rbp, %rdi
	cmpq	$39, %r15
	jbe	.L412
	movabsq	$-3689348814741910323, %rax
	mulq	%r15
	shrq	$5, %rdx
	leaq	(%rdx,%rdx,4), %r8
	salq	$3, %r8
	leaq	40(%r8), %rax
	cmpq	%rax, %rdi
	setnb	%al
	cmpq	%rcx, %r8
	setnb	%r8b
	cmpb	%al, %r8b
	je	.L412
	movzbl	%al, %eax
	addq	%rdx, %rax
	leaq	(%rax,%rax,4), %rax
	addq	%rax, %rax
	jmp	.L413
	.p2align 4
	.p2align 3
.L412:
	movq	%r15, %r9
	movq	%r15, %r8
	shrq	$2, %r9
	leaq	1(%r9), %rax
	andq	$-4, %r8
	leaq	0(,%rax,4), %rdx
	cmpq	%rdx, %rdi
	setnb	%dl
	cmpq	%rcx, %r8
	setnb	%cl
	cmpb	%dl, %cl
	je	.L414
	movzbl	%dl, %edx
	leaq	(%rdx,%r9), %rax
.L413:
	movq	%rax, (%rbx)
	movl	%esi, (%r14)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L414:
	.cfi_restore_state
	addq	$2, %r8
	cmpq	%r15, %r8
	jb	.L413
	andq	$-2, %rax
	cmpq	%r8, %r15
	cmovne	%r9, %rax
	jmp	.L413
	.p2align 4
	.p2align 3
.L416:
	movl	$-1356044214, %esi
	movl	$-1074, %eax
	jmp	.L409
	.cfi_endproc
.LFE10342:
	.size	_Z20schubfach_f64_to_decdPyPi, .-_Z20schubfach_f64_to_decdPyPi
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"char* FormatDigits(char*, uint64_t, int32_t, bool)"
	.section	.rodata.str1.1
.LC29:
	.string	"schubfach/schubfach_64.cc"
.LC30:
	.string	"digits >= 1"
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"digits <= 99999999999999999ull"
	.section	.rodata.str1.1
.LC32:
	.string	"decimal_exponent >= -999"
.LC33:
	.string	"decimal_exponent <= 999"
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"int32_t PrintDecimalDigitsBackwards(char*, uint64_t)"
	.section	.rodata.str1.1
.LC35:
	.string	"tz >= 0"
.LC36:
	.string	"tz <= 7"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"void Utoa_2Digits(char*, uint32_t)"
	.section	.rodata.str1.1
.LC38:
	.string	"digits <= 99"
	.text
	.p2align 4
	.globl	_ZN9schubfach4DtoaEPcd
	.type	_ZN9schubfach4DtoaEPcd, @function
_ZN9schubfach4DtoaEPcd:
.LFB10311:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rax, %rdx
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	shrq	$52, %rdx
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	movabsq	$4503599627370495, %rdi
	notq	%rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	andq	%rax, %rdi
	andl	$2047, %esi
	testl	$2047, %edx
	je	.L420
	shrq	$63, %rax
	movb	$45, (%rbx)
	addq	%rax, %rbx
	movq	%rdi, %rax
	orq	%rsi, %rax
	je	.L421
	call	_Z11ToDecimal64mm
	movq	%rax, %rcx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	testq	%rcx, %rcx
	je	.L497
	movabsq	$99999999999999999, %rax
	cmpq	%rcx, %rax
	jb	.L498
	cmpl	$-999, %edi
	jl	.L499
	cmpl	$999, %edi
	jg	.L500
	movq	%rcx, %rax
	shrq	$32, %rax
	je	.L426
	movabsq	$9999999999999999, %rax
	cmpq	%rcx, %rax
	jb	.L475
	movabsq	$999999999999999, %rax
	cmpq	%rcx, %rax
	jb	.L476
	movabsq	$99999999999999, %rax
	cmpq	%rcx, %rax
	jb	.L477
	movabsq	$9999999999999, %rax
	cmpq	%rcx, %rax
	jb	.L478
	movabsq	$999999999999, %rax
	cmpq	%rcx, %rax
	jb	.L479
	movabsq	$99999999999, %rax
	cmpq	%rcx, %rax
	jb	.L480
	movabsq	$9999999999, %rax
	cmpq	%rcx, %rax
	sbbq	%rsi, %rsi
	notq	%rsi
	addq	$11, %rsi
	cmpq	%rcx, %rax
	sbbq	%rdx, %rdx
	notq	%rdx
	addq	$12, %rdx
	cmpq	%rcx, %rax
	sbbl	%r9d, %r9d
	notl	%r9d
	addl	$11, %r9d
	.p2align 4
	.p2align 3
.L427:
	movl	$48, %eax
	leal	(%r9,%rdi), %r8d
	leal	6(%r9,%rdi), %edi
	vpbroadcastb	%eax, %xmm0
	vmovdqu8	%xmm0, (%rbx)
	vmovdqu8	%xmm0, 16(%rbx)
	cmpl	$23, %edi
	ja	.L501
	testl	%r8d, %r8d
	jg	.L502
	movl	$2, %eax
	subl	%r8d, %eax
	cltq
	addq	%rsi, %rax
	leaq	(%rbx,%rax), %rsi
.L430:
	movabsq	$-6067343680855748867, %rax
	leaq	-8(%rsi), %r10
	mulq	%rcx
	shrq	$26, %rdx
	imulq	$100000000, %rdx, %rax
	subq	%rax, %rcx
	jne	.L432
	movl	%edx, %eax
	movl	$12, %r12d
	movl	$8, %r11d
	movl	$8, %ecx
.L433:
	cmpq	$9999, %rdx
	jbe	.L442
	movl	%eax, %edx
	movl	$3518437209, %ebp
	leaq	-4(%r10), %r13
	imulq	%rbp, %rdx
	shrq	$45, %rdx
	imull	$10000, %edx, %ebp
	subl	%ebp, %eax
	jne	.L503
	cmpl	%r11d, %ecx
	jne	.L448
	addl	$4, %ecx
.L447:
	movl	%edx, %eax
	movl	%r12d, %r11d
	movq	%r13, %r10
.L442:
	cmpl	$99, %eax
	ja	.L504
.L449:
	cmpl	$9, %eax
	ja	.L505
.L452:
	addl	$48, %eax
	movb	%al, -1(%r10)
.L453:
	movslq	%ecx, %rax
	subl	%ecx, %r9d
	subq	%rax, %rsi
	cmpl	$23, %edi
	ja	.L454
	testl	%r8d, %r8d
	jle	.L506
	movslq	%r8d, %rax
	leaq	(%rbx,%rax), %rdx
	cmpl	%r8d, %r9d
	jg	.L507
	movw	$12334, (%rdx)
	addq	$2, %rdx
.L456:
	movb	$0, (%rdx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	1(%rdx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L421:
	.cfi_restore_state
	movl	$540028464, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	3(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L420:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L466
	shrq	$63, %rax
	movb	$45, (%rbx)
	addq	%rax, %rbx
	movl	$543583849, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	3(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L426:
	.cfi_restore_state
	movl	%ecx, %eax
	cmpl	$999999999, %ecx
	ja	.L482
	cmpl	$99999999, %ecx
	ja	.L483
	cmpl	$9999999, %ecx
	ja	.L484
	cmpl	$999999, %ecx
	ja	.L485
	cmpl	$99999, %ecx
	ja	.L486
	cmpl	$9999, %ecx
	ja	.L487
	cmpl	$999, %ecx
	ja	.L488
	cmpl	$99, %ecx
	ja	.L489
	cmpl	$10, %ecx
	sbbq	%rsi, %rsi
	addq	$2, %rsi
	cmpl	$10, %ecx
	sbbq	%r11, %r11
	addq	$3, %r11
	cmpl	$10, %ecx
	sbbl	%r9d, %r9d
	addl	$2, %r9d
.L429:
	movl	$48, %r10d
	leal	(%r9,%rdi), %r8d
	leal	6(%r9,%rdi), %edi
	vpbroadcastb	%r10d, %xmm0
	vmovdqu8	%xmm0, (%rbx)
	vmovdqu8	%xmm0, 16(%rbx)
	cmpl	$23, %edi
	ja	.L508
	leaq	(%rbx,%rsi), %r10
	testl	%r8d, %r8d
	jle	.L509
.L431:
	movl	%ecx, %eax
	movq	%r10, %rsi
	movl	$4, %r12d
	xorl	%r11d, %r11d
	xorl	%ecx, %ecx
	jmp	.L433
	.p2align 4
	.p2align 3
.L466:
	movl	$544104814, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	3(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L475:
	.cfi_restore_state
	movl	$17, %esi
	movl	$18, %edx
	movl	$17, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L482:
	movl	$10, %esi
	movl	$11, %edx
	movl	$10, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L480:
	movl	$12, %esi
	movl	$13, %edx
	movl	$12, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L487:
	movl	$5, %esi
	movl	$6, %r11d
	movl	$5, %r9d
	jmp	.L429
	.p2align 4
	.p2align 3
.L454:
	movzbl	1(%rbx), %eax
	movb	%al, (%rbx)
	cmpl	$1, %r9d
	je	.L510
	movb	$46, 1(%rbx)
.L459:
	movl	%r8d, %eax
	decl	%eax
	js	.L460
	movw	$11109, (%rsi)
.L461:
	cmpl	$99, %eax
	jg	.L463
	ja	.L511
	addl	%eax, %eax
	leaq	_ZZL12Utoa_2DigitsPcjE9Digits100(%rip), %rdx
	movl	%eax, %eax
	movzwl	(%rdx,%rax), %eax
	leaq	4(%rsi), %rdx
	movw	%ax, 2(%rsi)
	jmp	.L456
	.p2align 4
	.p2align 3
.L501:
	leaq	(%rbx,%rdx), %rsi
	jmp	.L430
	.p2align 4
	.p2align 3
.L505:
	leal	(%rax,%rax), %edx
	leaq	_ZZL12Utoa_2DigitsPcjE9Digits100(%rip), %rbp
	movzwl	0(%rbp,%rdx), %edx
	movw	%dx, -2(%r10)
	cmpl	%r11d, %ecx
	jne	.L453
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %rdx
	movsbl	(%rdx,%rax), %eax
	addl	%eax, %ecx
	jmp	.L453
	.p2align 4
	.p2align 3
.L504:
	movl	%eax, %r12d
	movl	%eax, %ebp
	imulq	$1374389535, %r12, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r13d
	subl	%r13d, %ebp
	leaq	_ZZL12Utoa_2DigitsPcjE9Digits100(%rip), %r13
	leal	(%rbp,%rbp), %r14d
	movzwl	0(%r13,%r14), %r15d
	movw	%r15w, -2(%r10)
	cmpl	%r11d, %ecx
	jne	.L450
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %r14
	movsbl	(%r14,%rbp), %ebp
	addl	%ebp, %ecx
.L450:
	addl	$2, %r11d
	cmpl	$9999, %eax
	ja	.L451
	subq	$2, %r10
	movl	%edx, %eax
	jmp	.L449
	.p2align 4
	.p2align 3
.L506:
	movq	%rsi, %rdx
	movb	$46, 1(%rbx)
	jmp	.L456
	.p2align 4
	.p2align 3
.L460:
	movl	$1, %eax
	movw	$11621, (%rsi)
	subl	%r8d, %eax
	cmpl	$9, %eax
	jg	.L461
	addl	$48, %eax
	leaq	3(%rsi), %rdx
	movb	%al, 2(%rsi)
	jmp	.L456
	.p2align 4
	.p2align 3
.L510:
	leaq	1(%rbx), %rsi
	jmp	.L459
	.p2align 4
	.p2align 3
.L432:
	movl	%ecx, %eax
	movl	$3518437209, %r11d
	leaq	_ZZL12Utoa_2DigitsPcjE9Digits100(%rip), %r12
	imulq	%r11, %rax
	shrq	$45, %rax
	movl	%eax, %r11d
	imull	$10000, %eax, %r13d
	imulq	$1374389535, %r11, %r11
	shrq	$37, %r11
	movq	%r11, %rbp
	imull	$100, %r11d, %r11d
	subl	%r11d, %eax
	leal	(%rbp,%rbp), %r11d
	subl	%r13d, %ecx
	movzwl	(%r12,%r11), %r11d
	movw	%r11w, -8(%rsi)
	leal	(%rax,%rax), %r11d
	movzwl	(%r12,%r11), %r11d
	movw	%r11w, -6(%rsi)
	jne	.L434
	testl	%eax, %eax
	je	.L435
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %rcx
	movsbl	(%rcx,%rax), %eax
	movl	$4, %ecx
.L436:
	addl	%eax, %ecx
.L437:
	testl	%ecx, %ecx
	js	.L512
	cmpl	$7, %ecx
	jg	.L441
	movl	%edx, %eax
	movl	$12, %r12d
	movl	$8, %r11d
	jmp	.L433
	.p2align 4
	.p2align 3
.L503:
	movl	%eax, %ebp
	leaq	_ZZL12Utoa_2DigitsPcjE9Digits100(%rip), %r15
	imulq	$1374389535, %rbp, %rbp
	shrq	$37, %rbp
	movq	%rbp, %r14
	imull	$100, %ebp, %ebp
	subl	%ebp, %eax
	leal	(%r14,%r14), %ebp
	movzwl	(%r15,%rbp), %ebp
	movw	%bp, -4(%r10)
	leal	(%rax,%rax), %ebp
	movzwl	(%r15,%rbp), %ebp
	movw	%bp, -2(%r10)
	cmpl	%r11d, %ecx
	jne	.L447
	testl	%eax, %eax
	je	.L445
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %r10
	movsbl	(%r10,%rax), %eax
	addl	%eax, %ecx
	jmp	.L447
	.p2align 4
	.p2align 3
.L448:
	movl	$808464432, 0(%r13)
	jmp	.L447
	.p2align 4
	.p2align 3
.L502:
	addq	%rbx, %rsi
	jmp	.L430
	.p2align 4
	.p2align 3
.L508:
	leaq	(%rbx,%r11), %r10
	movl	$4, %r12d
	xorl	%r11d, %r11d
	xorl	%ecx, %ecx
	movq	%r10, %rsi
	jmp	.L433
	.p2align 4
	.p2align 3
.L463:
	movl	%eax, %edx
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	leal	48(%rdx), %ecx
	imull	$100, %edx, %edx
	movb	%cl, 2(%rsi)
	subl	%edx, %eax
	leaq	_ZZL12Utoa_2DigitsPcjE9Digits100(%rip), %rdx
	addl	%eax, %eax
	movl	%eax, %eax
	movzwl	(%rdx,%rax), %eax
	leaq	5(%rsi), %rdx
	movw	%ax, 3(%rsi)
	jmp	.L456
	.p2align 4
	.p2align 3
.L451:
	movl	$3518437209, %eax
	movl	%edx, %ebp
	subq	$4, %r10
	imulq	%rax, %r12
	imulq	$1374389535, %rbp, %rbp
	shrq	$45, %r12
	shrq	$37, %rbp
	movq	%r12, %rax
	imull	$100, %ebp, %r12d
	subl	%r12d, %edx
	movl	%edx, %ebp
	leal	(%rbp,%rbp), %edx
	movzwl	0(%r13,%rdx), %edx
	movw	%dx, (%r10)
	cmpl	%ecx, %r11d
	jne	.L452
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %rdx
	movsbl	(%rdx,%rbp), %edx
	addl	%edx, %ecx
	jmp	.L452
	.p2align 4
	.p2align 3
.L507:
	vmovdqu	(%rdx), %xmm1
	vmovdqu	%xmm1, 1(%rbx,%rax)
	movb	$46, (%rdx)
	leaq	1(%rsi), %rdx
	jmp	.L456
	.p2align 4
	.p2align 3
.L476:
	movl	$16, %esi
	movl	$17, %edx
	movl	$16, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L483:
	movl	$9, %esi
	movl	$10, %edx
	movl	$9, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L484:
	movl	$8, %esi
	movl	$9, %r11d
	movl	$8, %r9d
	jmp	.L429
	.p2align 4
	.p2align 3
.L477:
	movl	$15, %esi
	movl	$16, %edx
	movl	$15, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L435:
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %rcx
	movl	%ebp, %ebp
	movsbl	(%rcx,%rbp), %eax
	movl	$6, %ecx
	jmp	.L436
	.p2align 4
	.p2align 3
.L434:
	movl	%ecx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	imull	$100, %eax, %r11d
	subl	%r11d, %ecx
	leal	(%rax,%rax), %r11d
	movzwl	(%r12,%r11), %r11d
	movw	%r11w, -4(%rsi)
	leal	(%rcx,%rcx), %r11d
	movzwl	(%r12,%r11), %r11d
	movw	%r11w, -2(%rsi)
	jne	.L438
	movl	%eax, %eax
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %rcx
	movsbl	(%rcx,%rax), %ecx
	addl	$2, %ecx
	jmp	.L437
	.p2align 4
	.p2align 3
.L485:
	movl	$7, %esi
	movl	$8, %r11d
	movl	$7, %r9d
	jmp	.L429
	.p2align 4
	.p2align 3
.L478:
	movl	$14, %esi
	movl	$15, %edx
	movl	$14, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L486:
	movl	$6, %esi
	movl	$7, %r11d
	movl	$6, %r9d
	jmp	.L429
	.p2align 4
	.p2align 3
.L479:
	movl	$13, %esi
	movl	$14, %edx
	movl	$13, %r9d
	jmp	.L427
	.p2align 4
	.p2align 3
.L445:
	movl	%r14d, %r14d
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %rax
	movsbl	(%rax,%r14), %eax
	addl	$2, %eax
	addl	%eax, %ecx
	jmp	.L447
	.p2align 4
	.p2align 3
.L438:
	leaq	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100(%rip), %rax
	movsbl	(%rax,%rcx), %ecx
	jmp	.L437
	.p2align 4
	.p2align 3
.L488:
	movl	$4, %esi
	movl	$5, %r11d
	movl	$4, %r9d
	jmp	.L429
.L489:
	movl	$3, %esi
	movl	$4, %r11d
	movl	$3, %r9d
	jmp	.L429
.L509:
	movl	$2, %eax
	subl	%r8d, %eax
	cltq
	addq	%rsi, %rax
	leaq	(%rbx,%rax), %r10
	jmp	.L431
.L497:
	leaq	.LC28(%rip), %rcx
	movl	$1179, %edx
	leaq	.LC29(%rip), %rsi
	leaq	.LC30(%rip), %rdi
	call	__assert_fail@PLT
.L498:
	leaq	.LC28(%rip), %rcx
	movl	$1180, %edx
	leaq	.LC29(%rip), %rsi
	leaq	.LC31(%rip), %rdi
	call	__assert_fail@PLT
.L499:
	leaq	.LC28(%rip), %rcx
	movl	$1181, %edx
	leaq	.LC29(%rip), %rsi
	leaq	.LC32(%rip), %rdi
	call	__assert_fail@PLT
.L500:
	leaq	.LC28(%rip), %rcx
	movl	$1182, %edx
	leaq	.LC29(%rip), %rsi
	leaq	.LC33(%rip), %rdi
	call	__assert_fail@PLT
.L511:
	leaq	.LC37(%rip), %rcx
	movl	$977, %edx
	leaq	.LC29(%rip), %rsi
	leaq	.LC38(%rip), %rdi
	call	__assert_fail@PLT
.L441:
	leaq	.LC34(%rip), %rcx
	movl	$1045, %edx
	leaq	.LC29(%rip), %rsi
	leaq	.LC36(%rip), %rdi
	call	__assert_fail@PLT
.L512:
	leaq	.LC34(%rip), %rcx
	movl	$1044, %edx
	leaq	.LC29(%rip), %rsi
	leaq	.LC35(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE10311:
	.size	_ZN9schubfach4DtoaEPcd, .-_ZN9schubfach4DtoaEPcd
	.section	.rodata.str1.8
	.align 8
.LC40:
	.string	"char* schubfach_32::FormatDigits(char*, uint32_t, int32_t, bool)"
	.section	.rodata.str1.1
.LC41:
	.string	"schubfach/schubfach_32.cpp"
.LC42:
	.string	"digits <= 999999999u"
	.text
	.p2align 4
	.globl	_ZN12schubfach_324FtoaEPcf
	.type	_ZN12schubfach_324FtoaEPcf, @function
_ZN12schubfach_324FtoaEPcf:
.LFB10341:
	.cfi_startproc
	endbr64
	vmovd	%xmm0, %eax
	movl	%eax, %edx
	movl	%eax, %esi
	shrl	$23, %edx
	movzbl	%dl, %edx
	andl	$8388607, %esi
	cmpl	$255, %edx
	je	.L514
	movslq	%eax, %rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	shrq	$63, %rcx
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	addq	%rdi, %rcx
	orl	%edx, %ebx
	movb	$45, (%rdi)
	je	.L515
	testl	$2130706432, %eax
	setne	%dil
	testl	%esi, %esi
	sete	%r8b
	andl	$1, %eax
	andl	%r8d, %edi
	movzbl	%dil, %r8d
	testl	%edx, %edx
	je	.L516
	orl	$8388608, %esi
	subl	$150, %edx
	sall	$2, %esi
	imull	$1262611, %edx, %ebx
	leal	-2(%rsi,%r8), %r8d
	testb	%dil, %dil
	je	.L517
	subl	$524031, %ebx
	leaq	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g(%rip), %rdi
	xorl	%r15d, %r15d
	movl	$33554434, %r12d
	sarl	$22, %ebx
	imull	$-1741647, %ebx, %esi
	sarl	$19, %esi
	leal	1(%rdx,%rsi), %r11d
	movl	$31, %esi
	subl	%ebx, %esi
	movq	(%rdi,%rsi,8), %r14
	movl	$33554432, %esi
.L518:
	shlx	%r11d, %r8d, %r8d
	movq	%r8, %rdx
	shlx	%r11d, %esi, %esi
	movq	%r15, %rbp
	mulx	%r14, %r9, %r10
	movq	%rsi, %rdx
	movq	%r9, (%rsp)
	imulq	%r8, %rbp
	movq	%r15, %r9
	movq	(%rsp), %r8
	movq	%r10, 8(%rsp)
	imulq	%rsi, %r9
	mulx	%r14, %rsi, %rdi
	movq	%rsi, 16(%rsp)
	movq	16(%rsp), %rsi
	addq	%r10, %rbp
	movq	%rdi, 24(%rsp)
	addq	%r9, %rdi
	xorl	%r9d, %r9d
	shrq	$32, %rsi
	cmpl	$1, %esi
	shlx	%r11d, %r12d, %esi
	movq	%r15, %r11
	movq	%rsi, %rdx
	seta	%r9b
	mulx	%r14, %r14, %r15
	imulq	%rsi, %r11
	xorl	%edx, %edx
	shrq	$32, %r8
	orl	%edi, %r9d
	movq	%r14, %rsi
	cmpl	$1, %r8d
	leaq	(%r15,%r11), %rdi
	seta	%dl
	shrq	$32, %rsi
	orl	%ebp, %edx
	leal	(%rdx,%rax), %r8d
	xorl	%edx, %edx
	cmpl	$1, %esi
	seta	%dl
	orl	%edi, %edx
	subl	%eax, %edx
	cmpl	$39, %r9d
	jbe	.L519
	movl	$3435973837, %esi
	movl	%r9d, %eax
	imulq	%rsi, %rax
	shrq	$37, %rax
	leal	(%rax,%rax,4), %edi
	sall	$3, %edi
	leal	40(%rdi), %esi
	cmpl	%esi, %edx
	setnb	%sil
	cmpl	%r8d, %edi
	setnb	%dil
	cmpb	%sil, %dil
	je	.L519
	movzbl	%sil, %esi
	addl	%eax, %esi
	leal	(%rsi,%rsi,4), %eax
	addl	%eax, %eax
	jmp	.L520
	.p2align 4
	.p2align 3
.L515:
	leaq	1(%rcx), %rax
	movl	$540028464, (%rcx)
.L513:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L519:
	.cfi_restore_state
	movl	%r9d, %edi
	movl	%r9d, %esi
	shrl	$2, %edi
	leal	1(%rdi), %eax
	andl	$-4, %esi
	leal	0(,%rax,4), %r10d
	cmpl	%r10d, %edx
	setnb	%dl
	cmpl	%r8d, %esi
	setnb	%r8b
	cmpb	%dl, %r8b
	je	.L521
	movzbl	%dl, %edx
	leal	(%rdx,%rdi), %eax
.L522:
	testl	%eax, %eax
	je	.L576
.L520:
	cmpl	$999999999, %eax
	ja	.L577
	cmpl	$99999999, %eax
	ja	.L555
	cmpl	$9999999, %eax
	ja	.L556
	cmpl	$999999, %eax
	ja	.L557
	cmpl	$99999, %eax
	ja	.L558
	cmpl	$9999, %eax
	ja	.L526
	cmpl	$999, %eax
	ja	.L559
	cmpl	$99, %eax
	ja	.L560
	cmpl	$10, %eax
	sbbq	%rdx, %rdx
	addq	$3, %rdx
	cmpl	$10, %eax
	sbbq	%r8, %r8
	addq	$2, %r8
	cmpl	$10, %eax
	sbbl	%edi, %edi
	addl	$2, %edi
	.p2align 4
	.p2align 3
.L525:
	movl	$48, %esi
	leal	(%rdi,%rbx), %r9d
	leal	4(%rdi,%rbx), %ebx
	vpbroadcastb	%esi, %xmm0
	vmovdqu8	%xmm0, (%rcx)
	vmovdqu8	%xmm0, 16(%rcx)
	cmpl	$13, %ebx
	ja	.L527
	movq	%r8, %rdx
	testl	%r9d, %r9d
	jg	.L527
	movl	$2, %esi
	subl	%r9d, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdx
.L527:
	addq	%rcx, %rdx
	cmpl	$9999, %eax
	ja	.L549
	movq	%rdx, %rsi
	movl	$2, %r13d
	xorl	%r11d, %r11d
.L528:
	cmpl	$99, %eax
	ja	.L578
	cmpl	$9, %eax
	ja	.L579
.L533:
	addl	$48, %eax
	movb	%al, -1(%rdx)
.L534:
	movslq	%r11d, %rax
	subl	%r11d, %edi
	subq	%rax, %rsi
	movq	%rsi, %rdx
	cmpl	$13, %ebx
	ja	.L535
	testl	%r9d, %r9d
	jle	.L580
	movslq	%r9d, %rsi
	leaq	(%rcx,%rsi), %rax
	cmpl	%r9d, %edi
	jle	.L513
	movq	(%rax), %rdi
	movq	%rdi, 1(%rcx,%rsi)
	movb	$46, (%rax)
	leaq	1(%rdx), %rax
	jmp	.L513
	.p2align 4
	.p2align 3
.L514:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	testl	%esi, %esi
	jne	.L545
	cltq
	movb	$45, (%rdi)
	shrq	$63, %rax
	addq	%rax, %rdi
	leaq	3(%rdi), %rax
	movl	$543583849, (%rdi)
	ret
	.p2align 4
	.p2align 3
.L516:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	sall	$2, %esi
	movabsq	$-5522047002568494196, %r14
	leal	-2(%rsi,%r8), %r8d
	leal	2(%rsi), %r12d
	xorl	%r15d, %r15d
	movl	$1, %r11d
	movl	$-45, %ebx
	jmp	.L518
	.p2align 4
	.p2align 3
.L545:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	leaq	3(%rdi), %rax
	movl	$544104814, (%rdi)
	ret
	.p2align 4
	.p2align 3
.L521:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	addl	$2, %esi
	cmpl	%r9d, %esi
	jb	.L520
	andl	$-2, %eax
	cmpl	%esi, %r9d
	cmovne	%rdi, %rax
	jmp	.L522
	.p2align 4
	.p2align 3
.L571:
	leaq	6(%rcx), %rdx
	movl	$5, %edi
	.p2align 4
	.p2align 3
.L549:
	movl	$3518437209, %esi
	movl	%eax, %r8d
	movl	%eax, %r10d
	leaq	-4(%rdx), %r12
	imulq	%rsi, %r8
	shrq	$45, %r8
	imull	$10000, %r8d, %esi
	subl	%esi, %r10d
	jne	.L581
	movq	%rdx, %rsi
	movl	%r8d, %eax
	movq	%r12, %rdx
	movl	$6, %r13d
	movl	$4, %r11d
	jmp	.L528
	.p2align 4
	.p2align 3
.L535:
	movzbl	1(%rcx), %eax
	movb	%al, (%rcx)
	cmpl	$1, %edi
	je	.L582
	movb	$46, 1(%rcx)
.L539:
	movl	%r9d, %eax
	decl	%eax
	js	.L583
	movl	$57, %ecx
	movw	$11109, (%rdx)
	cmpl	$9, %eax
	jne	.L543
.L542:
	movb	%cl, 2(%rdx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	3(%rdx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L555:
	.cfi_restore_state
	movl	$10, %edx
	movl	$9, %r8d
	movl	$9, %edi
	jmp	.L525
	.p2align 4
	.p2align 3
.L580:
	movq	%rsi, %rax
	movb	$46, 1(%rcx)
	jmp	.L513
	.p2align 4
	.p2align 3
.L583:
	movl	$1, %eax
	movw	$11621, (%rdx)
	subl	%r9d, %eax
	leal	48(%rax), %ecx
	cmpl	$9, %eax
	jle	.L542
.L543:
	addl	%eax, %eax
	leaq	_ZZN12schubfach_32L12Utoa_2DigitsEPcjE9Digits100(%rip), %rcx
	movl	%eax, %eax
	movzwl	(%rcx,%rax), %eax
	movw	%ax, 2(%rdx)
	leaq	4(%rdx), %rax
	jmp	.L513
	.p2align 4
	.p2align 3
.L556:
	movl	$9, %edx
	movl	$8, %r8d
	movl	$8, %edi
	jmp	.L525
	.p2align 4
	.p2align 3
.L582:
	leaq	1(%rcx), %rdx
	jmp	.L539
	.p2align 4
	.p2align 3
.L581:
	movl	%r10d, %esi
	leaq	_ZZN12schubfach_32L12Utoa_2DigitsEPcjE9Digits100(%rip), %rbp
	leaq	_ZZN12schubfach_32L21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r15
	imulq	$1374389535, %rsi, %rsi
	shrq	$37, %rsi
	imull	$100, %esi, %r11d
	subl	%r11d, %r10d
	leal	(%rsi,%rsi), %r11d
	movzwl	0(%rbp,%r11), %r11d
	movw	%r11w, -4(%rdx)
	leal	(%r10,%r10), %r11d
	movzwl	0(%rbp,%r11), %r11d
	movw	%r11w, -2(%rdx)
	je	.L584
	movsbl	(%r15,%r10), %r11d
.L530:
	cmpl	$999999, %eax
	jbe	.L565
	movl	%r8d, %r10d
	movl	%r8d, %r14d
	imulq	$1374389535, %r10, %r10
	shrq	$37, %r10
	imull	$100, %r10d, %eax
	subl	%eax, %r14d
	leaq	-6(%rdx), %rax
	movq	%rax, (%rsp)
	leal	(%r14,%r14), %eax
	movzwl	0(%rbp,%rax), %eax
	movw	%ax, -6(%rdx)
	cmpl	$4, %r11d
	je	.L585
	movq	%rdx, %rsi
	movl	$6, %r13d
.L532:
	cmpl	$9999, %r8d
	ja	.L586
.L531:
	cmpl	$9, %r10d
	jbe	.L567
	leal	(%r10,%r10), %eax
	movq	(%rsp), %rdx
	movzwl	0(%rbp,%rax), %eax
	movw	%ax, -2(%rdx)
	cmpl	%r13d, %r11d
	jne	.L534
	movl	%r10d, %eax
	.p2align 4
	.p2align 3
.L552:
	movsbl	(%r15,%rax), %eax
	addl	%eax, %r11d
	jmp	.L534
	.p2align 4
	.p2align 3
.L557:
	movl	$8, %edx
	movl	$7, %r8d
	movl	$7, %edi
	jmp	.L525
	.p2align 4
	.p2align 3
.L584:
	movl	%esi, %esi
	movsbl	(%r15,%rsi), %r11d
	addl	$2, %r11d
	jmp	.L530
	.p2align 4
	.p2align 3
.L578:
	movl	%eax, %r10d
	movl	%eax, %r14d
	leaq	_ZZN12schubfach_32L12Utoa_2DigitsEPcjE9Digits100(%rip), %rbp
	leaq	-2(%rdx), %r15
	imulq	$1374389535, %r10, %r10
	movq	%r15, (%rsp)
	leaq	_ZZN12schubfach_32L21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r15
	shrq	$37, %r10
	imull	$100, %r10d, %r8d
	subl	%r8d, %r14d
	leal	(%r14,%r14), %r8d
	movzwl	0(%rbp,%r8), %r8d
	movw	%r8w, -2(%rdx)
.L546:
	movsbl	(%r15,%r14), %r8d
	movq	%rdx, %r12
	addl	%r8d, %r11d
	movl	%eax, %r8d
	jmp	.L532
	.p2align 4
	.p2align 3
.L579:
	leal	(%rax,%rax), %r8d
	leaq	_ZZN12schubfach_32L12Utoa_2DigitsEPcjE9Digits100(%rip), %r10
	leaq	_ZZN12schubfach_32L21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r15
	movzwl	(%r10,%r8), %r8d
	movw	%r8w, -2(%rdx)
	jmp	.L552
	.p2align 4
	.p2align 3
.L586:
	movl	$3518437209, %eax
	movl	%r8d, %r8d
	imulq	%rax, %r8
	shrq	$45, %r8
	movq	%r8, %rax
	movl	%r10d, %r8d
	imulq	$1374389535, %r8, %r8
	shrq	$37, %r8
	imull	$100, %r8d, %edx
	subl	%edx, %r10d
	leaq	-4(%r12), %rdx
	movl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movzwl	0(%rbp,%r10), %r10d
	movw	%r10w, -4(%r12)
	cmpl	%r13d, %r11d
	jne	.L533
	movsbl	(%r15,%r8), %r8d
	addl	%r8d, %r11d
	jmp	.L533
	.p2align 4
	.p2align 3
.L558:
	movl	$7, %edx
	movl	$6, %r8d
	movl	$6, %edi
	jmp	.L525
	.p2align 4
	.p2align 3
.L526:
	movl	$48, %edx
	leal	5(%rbx), %r9d
	addl	$9, %ebx
	vpbroadcastb	%edx, %xmm0
	vmovdqu8	%xmm0, (%rcx)
	vmovdqu8	%xmm0, 16(%rcx)
	cmpl	$13, %ebx
	ja	.L571
	leaq	5(%rcx), %rdx
	movl	$5, %edi
	testl	%r9d, %r9d
	jg	.L549
	movl	$7, %edx
	subl	%r9d, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	jmp	.L549
	.p2align 4
	.p2align 3
.L559:
	movl	$5, %edx
	movl	$4, %r8d
	movl	$4, %edi
	jmp	.L525
	.p2align 4
	.p2align 3
.L560:
	movl	$4, %edx
	movl	$3, %r8d
	movl	$3, %edi
	jmp	.L525
.L577:
	leaq	.LC40(%rip), %rcx
	movl	$2898, %edx
	leaq	.LC41(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	__assert_fail@PLT
.L576:
	leaq	.LC40(%rip), %rcx
	movl	$2897, %edx
	leaq	.LC41(%rip), %rsi
	leaq	.LC30(%rip), %rdi
	call	__assert_fail@PLT
.L567:
	movq	(%rsp), %rdx
	movl	%r10d, %eax
	jmp	.L533
.L517:
	sarl	$22, %ebx
	imull	$-1741647, %ebx, %edi
	leaq	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g(%rip), %r9
	leal	2(%rsi), %r12d
	xorl	%r15d, %r15d
	sarl	$19, %edi
	leal	1(%rdx,%rdi), %r11d
	movl	$31, %edi
	subl	%ebx, %edi
	movq	(%r9,%rdi,8), %r14
	jmp	.L518
.L585:
	movq	%rdx, %rsi
	movl	%r8d, %eax
	movq	%r12, %rdx
	movl	$6, %r13d
	jmp	.L546
.L565:
	movq	%rdx, %rsi
	movl	%r8d, %r10d
	movl	$4, %r13d
	movq	%r12, (%rsp)
	jmp	.L531
	.cfi_endproc
.LFE10341:
	.size	_ZN12schubfach_324FtoaEPcf, .-_ZN12schubfach_324FtoaEPcf
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"schubfach_xjb32::{anonymous}::FloatingDecimal32 schubfach_xjb32::ToDecimal32(uint32_t, uint32_t)"
	.align 8
.LC44:
	.string	"schubfach_xjb/schubfach_32.cpp"
	.section	.rodata.str1.1
.LC45:
	.string	"h >= 1"
.LC46:
	.string	"h <= 4"
	.section	.rodata.str1.8
	.align 8
.LC47:
	.string	"char* schubfach_xjb32::FormatDigits(char*, uint32_t, int32_t, bool)"
	.text
	.p2align 4
	.globl	_ZN15schubfach_xjb324FtoaEPcf
	.type	_ZN15schubfach_xjb324FtoaEPcf, @function
_ZN15schubfach_xjb324FtoaEPcf:
.LFB10403:
	.cfi_startproc
	endbr64
	vmovd	%xmm0, %eax
	movl	%eax, %edx
	movl	%eax, %esi
	shrl	$23, %edx
	movzbl	%dl, %edx
	andl	$8388607, %esi
	cmpl	$255, %edx
	je	.L588
	movslq	%eax, %rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	shrq	$63, %rcx
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	addq	%rdi, %rcx
	orl	%edx, %ebx
	movb	$45, (%rdi)
	je	.L589
	testl	$2130706432, %eax
	setne	%dil
	testl	%esi, %esi
	sete	%r8b
	andl	$1, %eax
	andl	%r8d, %edi
	movzbl	%dil, %r8d
	testl	%edx, %edx
	je	.L590
	orl	$8388608, %esi
	subl	$150, %edx
	sall	$2, %esi
	imull	$1262611, %edx, %r10d
	leal	-2(%rsi,%r8), %r8d
	leal	2(%rsi), %ebx
	testb	%dil, %dil
	je	.L591
	subl	$524031, %r10d
	sarl	$22, %r10d
	imull	$-1741647, %r10d, %edi
	sarl	$19, %edi
	leal	1(%rdx,%rdi), %r11d
.L592:
	testl	%r11d, %r11d
	jle	.L651
	cmpl	$4, %r11d
	jg	.L652
.L594:
	movl	$31, %edx
	leaq	_ZZN15schubfach_xjb32L19ComputePow10_SingleEiE1g(%rip), %rdi
	shlx	%r11d, %r8d, %r8d
	shlx	%r11d, %esi, %esi
	subl	%r10d, %edx
	movq	(%rdi,%rdx,8), %rbp
	movq	%r8, %rdx
	mulx	%rbp, %r12, %r13
	movq	%rsi, %rdx
	movq	%r12, %r8
	mulx	%rbp, %rsi, %rdi
	movq	%rsi, %rdx
	shlx	%r11d, %ebx, %esi
	shrq	$32, %rdx
	cmpl	$1, %edx
	seta	%dl
	movzbl	%dl, %edx
	shrq	$32, %r8
	orl	%edi, %edx
	cmpl	$1, %r8d
	movl	%edx, %r15d
	movq	%rsi, %rdx
	seta	%r8b
	mulx	%rbp, %rdi, %rbp
	movq	%rdi, %rsi
	movzbl	%r8b, %r8d
	shrq	$32, %rsi
	orl	%r13d, %r8d
	addl	%eax, %r8d
	cmpl	$1, %esi
	seta	%sil
	movzbl	%sil, %esi
	orl	%ebp, %esi
	subl	%eax, %esi
	cmpl	$39, %r15d
	jbe	.L595
	movl	$3435973837, %edi
	movl	%r15d, %eax
	imulq	%rdi, %rax
	shrq	$37, %rax
	leal	(%rax,%rax,4), %r9d
	sall	$3, %r9d
	leal	40(%r9), %edi
	cmpl	%edi, %esi
	setnb	%dil
	cmpl	%r8d, %r9d
	setnb	%r9b
	cmpb	%dil, %r9b
	je	.L595
	movzbl	%dil, %edi
	addl	%eax, %edi
	leal	(%rdi,%rdi,4), %eax
	addl	%eax, %eax
	jmp	.L596
	.p2align 4
	.p2align 3
.L589:
	leaq	1(%rcx), %rax
	movl	$540028464, (%rcx)
.L587:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L595:
	.cfi_restore_state
	movl	%r15d, %edx
	movl	%r15d, %edi
	shrl	$2, %edx
	movl	%edx, %r9d
	andl	$-4, %edi
	leal	1(%r9), %eax
	leal	0(,%rax,4), %r11d
	cmpl	%r11d, %esi
	setnb	%sil
	cmpl	%r8d, %edi
	setnb	%r8b
	cmpb	%sil, %r8b
	je	.L597
	movzbl	%sil, %esi
	leal	(%rsi,%r9), %eax
.L598:
	testl	%eax, %eax
	je	.L653
.L596:
	cmpl	$99999999, %eax
	ja	.L630
	cmpl	$9999999, %eax
	ja	.L631
	cmpl	$999999, %eax
	ja	.L632
	cmpl	$99999, %eax
	ja	.L633
	cmpl	$9999, %eax
	ja	.L601
	cmpl	$999, %eax
	ja	.L634
	cmpl	$99, %eax
	ja	.L635
	cmpl	$10, %eax
	sbbq	%rdx, %rdx
	addq	$3, %rdx
	cmpl	$10, %eax
	sbbq	%r8, %r8
	addq	$2, %r8
	cmpl	$10, %eax
	sbbl	%edi, %edi
	addl	$2, %edi
	.p2align 4
	.p2align 3
.L600:
	movl	$48, %esi
	leal	(%rdi,%r10), %r9d
	leal	4(%rdi,%r10), %r10d
	vpbroadcastb	%esi, %xmm0
	vmovdqu8	%xmm0, (%rcx)
	vmovdqu8	%xmm0, 16(%rcx)
	cmpl	$13, %r10d
	ja	.L602
	movq	%r8, %rdx
	testl	%r9d, %r9d
	jg	.L602
	movl	$2, %esi
	subl	%r9d, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdx
.L602:
	addq	%rcx, %rdx
	cmpl	$9999, %eax
	ja	.L624
	movq	%rdx, %rsi
	movl	$2, %r13d
	xorl	%ebx, %ebx
.L603:
	cmpl	$99, %eax
	ja	.L654
	cmpl	$9, %eax
	ja	.L655
.L608:
	addl	$48, %eax
	movb	%al, -1(%rdx)
.L609:
	movslq	%ebx, %rax
	subl	%ebx, %edi
	subq	%rax, %rsi
	movq	%rsi, %rdx
	cmpl	$13, %r10d
	ja	.L610
	testl	%r9d, %r9d
	jle	.L656
	movslq	%r9d, %rsi
	leaq	(%rcx,%rsi), %rax
	cmpl	%r9d, %edi
	jle	.L587
	movq	(%rax), %rdi
	movq	%rdi, 1(%rcx,%rsi)
	movb	$46, (%rax)
	leaq	1(%rdx), %rax
	jmp	.L587
	.p2align 4
	.p2align 3
.L588:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	testl	%esi, %esi
	jne	.L620
	cltq
	movb	$45, (%rdi)
	shrq	$63, %rax
	addq	%rax, %rdi
	leaq	3(%rdi), %rax
	movl	$543583849, (%rdi)
	ret
	.p2align 4
	.p2align 3
.L590:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	sall	$2, %esi
	movl	$1, %r11d
	leal	-2(%rsi,%r8), %r8d
	leal	2(%rsi), %ebx
	movl	$-45, %r10d
	jmp	.L594
	.p2align 4
	.p2align 3
.L620:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	leaq	3(%rdi), %rax
	movl	$544104814, (%rdi)
	ret
	.p2align 4
	.p2align 3
.L597:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	addl	$2, %edi
	cmpl	%r15d, %edi
	jb	.L596
	andl	$-2, %eax
	cmpl	%edi, %r15d
	cmovne	%r9, %rax
	jmp	.L598
	.p2align 4
	.p2align 3
.L663:
	leaq	6(%rcx), %rdx
	movl	$5, %edi
	.p2align 4
	.p2align 3
.L624:
	movl	$3518437209, %esi
	movl	%eax, %r8d
	movl	%eax, %r11d
	leaq	-4(%rdx), %r12
	imulq	%rsi, %r8
	shrq	$45, %r8
	imull	$10000, %r8d, %esi
	subl	%esi, %r11d
	jne	.L657
	movq	%rdx, %rsi
	movl	%r8d, %eax
	movq	%r12, %rdx
	movl	$6, %r13d
	movl	$4, %ebx
	jmp	.L603
	.p2align 4
	.p2align 3
.L610:
	movzbl	1(%rcx), %eax
	movb	%al, (%rcx)
	cmpl	$1, %edi
	je	.L658
	movb	$46, 1(%rcx)
.L614:
	movl	%r9d, %eax
	decl	%eax
	js	.L659
	movl	$57, %ecx
	movw	$11109, (%rdx)
	cmpl	$9, %eax
	jne	.L618
.L617:
	movb	%cl, 2(%rdx)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	3(%rdx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L630:
	.cfi_restore_state
	movl	$10, %edx
	movl	$9, %r8d
	movl	$9, %edi
	jmp	.L600
	.p2align 4
	.p2align 3
.L656:
	movq	%rsi, %rax
	movb	$46, 1(%rcx)
	jmp	.L587
	.p2align 4
	.p2align 3
.L659:
	movl	$1, %eax
	movw	$11621, (%rdx)
	subl	%r9d, %eax
	leal	48(%rax), %ecx
	cmpl	$9, %eax
	jle	.L617
.L618:
	addl	%eax, %eax
	leaq	_ZZN15schubfach_xjb32L12Utoa_2DigitsEPcjE9Digits100(%rip), %rcx
	movl	%eax, %eax
	movzwl	(%rcx,%rax), %eax
	movw	%ax, 2(%rdx)
	leaq	4(%rdx), %rax
	jmp	.L587
	.p2align 4
	.p2align 3
.L631:
	movl	$9, %edx
	movl	$8, %r8d
	movl	$8, %edi
	jmp	.L600
	.p2align 4
	.p2align 3
.L658:
	leaq	1(%rcx), %rdx
	jmp	.L614
	.p2align 4
	.p2align 3
.L657:
	movl	%r11d, %esi
	leaq	_ZZN15schubfach_xjb32L12Utoa_2DigitsEPcjE9Digits100(%rip), %rbp
	leaq	_ZZN15schubfach_xjb32L21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r15
	imulq	$1374389535, %rsi, %rsi
	shrq	$37, %rsi
	imull	$100, %esi, %ebx
	subl	%ebx, %r11d
	leal	(%rsi,%rsi), %ebx
	movzwl	0(%rbp,%rbx), %ebx
	movw	%bx, -4(%rdx)
	leal	(%r11,%r11), %ebx
	movzwl	0(%rbp,%rbx), %ebx
	movw	%bx, -2(%rdx)
	je	.L660
	movsbl	(%r15,%r11), %ebx
.L605:
	cmpl	$999999, %eax
	jbe	.L640
	movl	%r8d, %r11d
	movl	%r8d, %r14d
	imulq	$1374389535, %r11, %r11
	shrq	$37, %r11
	imull	$100, %r11d, %eax
	subl	%eax, %r14d
	leaq	-6(%rdx), %rax
	movq	%rax, 8(%rsp)
	leal	(%r14,%r14), %eax
	movzwl	0(%rbp,%rax), %eax
	movw	%ax, -6(%rdx)
	cmpl	$4, %ebx
	je	.L661
	movq	%rdx, %rsi
	movl	$6, %r13d
.L607:
	cmpl	$9999, %r8d
	ja	.L662
.L606:
	cmpl	$9, %r11d
	jbe	.L642
	leal	(%r11,%r11), %eax
	movq	8(%rsp), %rdx
	movzwl	0(%rbp,%rax), %eax
	movw	%ax, -2(%rdx)
	cmpl	%r13d, %ebx
	jne	.L609
	movl	%r11d, %eax
	.p2align 4
	.p2align 3
.L627:
	movsbl	(%r15,%rax), %eax
	addl	%eax, %ebx
	jmp	.L609
	.p2align 4
	.p2align 3
.L632:
	movl	$8, %edx
	movl	$7, %r8d
	movl	$7, %edi
	jmp	.L600
	.p2align 4
	.p2align 3
.L660:
	movl	%esi, %esi
	movsbl	(%r15,%rsi), %ebx
	addl	$2, %ebx
	jmp	.L605
	.p2align 4
	.p2align 3
.L655:
	leal	(%rax,%rax), %r8d
	leaq	_ZZN15schubfach_xjb32L12Utoa_2DigitsEPcjE9Digits100(%rip), %r11
	leaq	_ZZN15schubfach_xjb32L21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r15
	movzwl	(%r11,%r8), %r8d
	movw	%r8w, -2(%rdx)
	jmp	.L627
	.p2align 4
	.p2align 3
.L654:
	movl	%eax, %r11d
	movl	%eax, %r14d
	leaq	_ZZN15schubfach_xjb32L12Utoa_2DigitsEPcjE9Digits100(%rip), %rbp
	leaq	-2(%rdx), %r15
	imulq	$1374389535, %r11, %r11
	movq	%r15, 8(%rsp)
	leaq	_ZZN15schubfach_xjb32L21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r15
	shrq	$37, %r11
	imull	$100, %r11d, %r8d
	subl	%r8d, %r14d
	leal	(%r14,%r14), %r8d
	movzwl	0(%rbp,%r8), %r8d
	movw	%r8w, -2(%rdx)
.L621:
	movsbl	(%r15,%r14), %r8d
	movq	%rdx, %r12
	addl	%r8d, %ebx
	movl	%eax, %r8d
	jmp	.L607
	.p2align 4
	.p2align 3
.L662:
	movl	$3518437209, %eax
	movl	%r8d, %r8d
	imulq	%rax, %r8
	shrq	$45, %r8
	movq	%r8, %rax
	movl	%r11d, %r8d
	imulq	$1374389535, %r8, %r8
	shrq	$37, %r8
	imull	$100, %r8d, %edx
	subl	%edx, %r11d
	leaq	-4(%r12), %rdx
	movl	%r11d, %r8d
	leal	(%r8,%r8), %r11d
	movzwl	0(%rbp,%r11), %r11d
	movw	%r11w, -4(%r12)
	cmpl	%r13d, %ebx
	jne	.L608
	movsbl	(%r15,%r8), %r8d
	addl	%r8d, %ebx
	jmp	.L608
	.p2align 4
	.p2align 3
.L633:
	movl	$7, %edx
	movl	$6, %r8d
	movl	$6, %edi
	jmp	.L600
	.p2align 4
	.p2align 3
.L601:
	movl	$48, %edx
	leal	5(%r10), %r9d
	addl	$9, %r10d
	vpbroadcastb	%edx, %xmm0
	vmovdqu8	%xmm0, (%rcx)
	vmovdqu8	%xmm0, 16(%rcx)
	cmpl	$13, %r10d
	ja	.L663
	leaq	5(%rcx), %rdx
	movl	$5, %edi
	testl	%r9d, %r9d
	jg	.L624
	movl	$7, %edx
	subl	%r9d, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	jmp	.L624
	.p2align 4
	.p2align 3
.L634:
	movl	$5, %edx
	movl	$4, %r8d
	movl	$4, %edi
	jmp	.L600
	.p2align 4
	.p2align 3
.L635:
	movl	$4, %edx
	movl	$3, %r8d
	movl	$3, %edi
	jmp	.L600
.L653:
	leaq	.LC47(%rip), %rcx
	movl	$2897, %edx
	leaq	.LC44(%rip), %rsi
	leaq	.LC30(%rip), %rdi
	call	__assert_fail@PLT
.L651:
	leaq	.LC43(%rip), %rcx
	movl	$455, %edx
	leaq	.LC44(%rip), %rsi
	leaq	.LC45(%rip), %rdi
	call	__assert_fail@PLT
.L652:
	leaq	.LC43(%rip), %rcx
	movl	$456, %edx
	leaq	.LC44(%rip), %rsi
	leaq	.LC46(%rip), %rdi
	call	__assert_fail@PLT
.L642:
	movq	8(%rsp), %rdx
	movl	%r11d, %eax
	jmp	.L608
.L591:
	sarl	$22, %r10d
	imull	$-1741647, %r10d, %edi
	sarl	$19, %edi
	leal	1(%rdx,%rdi), %r11d
	jmp	.L592
.L661:
	movq	%rdx, %rsi
	movl	%r8d, %eax
	movq	%r12, %rdx
	movl	$6, %r13d
	jmp	.L621
.L640:
	movq	%rdx, %rsi
	movl	%r8d, %r11d
	movl	$4, %r13d
	movq	%r12, 8(%rsp)
	jmp	.L606
	.cfi_endproc
.LFE10403:
	.size	_ZN15schubfach_xjb324FtoaEPcf, .-_ZN15schubfach_xjb324FtoaEPcf
	.p2align 4
	.globl	_ZN9dragonbox4DtoaEPcd
	.type	_ZN9dragonbox4DtoaEPcd, @function
_ZN9dragonbox4DtoaEPcd:
.LFB10442:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	movabsq	$4503599627370495, %rcx
	movq	%rax, %rdx
	andq	%rax, %rcx
	shrq	$52, %rdx
	movq	%rdx, %r8
	notq	%rdx
	andl	$2047, %r8d
	testl	$2047, %edx
	je	.L665
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movb	$45, (%rdi)
	shrq	$63, %rdx
	addq	%rdx, %rdi
	orq	%r8, %rsi
	je	.L666
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	testq	%r8, %r8
	je	.L726
	leal	-1075(%r8), %ebx
	movabsq	$9214364837600034816, %rdx
	imull	$1262611, %ebx, %esi
	testq	%rdx, %rax
	je	.L746
	testq	%rcx, %rcx
	jne	.L746
	subl	$524031, %esi
	movl	$292, %eax
	leaq	_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10(%rip), %rdx
	sarl	$22, %esi
	subl	%esi, %eax
	imull	$-1741647, %esi, %r11d
	salq	$4, %rax
	movq	(%rdx,%rax), %r9
	movl	$11, %eax
	sarl	$19, %r11d
	addl	%ebx, %r11d
	movq	%r9, %rdx
	movq	%r9, %rcx
	subl	%r11d, %eax
	shrq	$54, %rdx
	subq	%rdx, %rcx
	shrx	%rax, %rcx, %rdx
	leal	-1077(%r8), %ecx
	cmpl	$1, %ecx
	seta	%cl
	movzbl	%cl, %ecx
	addq	%rdx, %rcx
	movq	%r9, %rdx
	shrq	$53, %rdx
	addq	%r9, %rdx
	shrx	%rax, %rdx, %rdx
	movabsq	$-3689348814741910323, %rax
	mulq	%rdx
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	%rdx, %r10
	addq	%rax, %rax
	cmpq	%rcx, %rax
	jnb	.L680
	movl	$10, %eax
	subl	%r11d, %eax
	shrx	%rax, %r9, %rax
	incq	%rax
	shrq	%rax
	cmpl	$-77, %ebx
	je	.L763
	cmpq	%rcx, %rax
	adcq	$0, %rax
	movq	%rax, %r10
.L674:
	movq	%r10, %rax
	shrq	$32, %rax
	je	.L685
.L771:
	movabsq	$9999999999999999, %rax
	cmpq	%r10, %rax
	jb	.L728
	movabsq	$999999999999999, %rax
	cmpq	%r10, %rax
	jb	.L729
	movabsq	$99999999999999, %rax
	cmpq	%r10, %rax
	jb	.L730
	movabsq	$9999999999999, %rax
	cmpq	%r10, %rax
	jb	.L731
	movabsq	$999999999999, %rax
	cmpq	%r10, %rax
	jb	.L732
	movabsq	$99999999999, %rax
	cmpq	%r10, %rax
	jb	.L733
	movabsq	$9999999999, %rax
	cmpq	%r10, %rax
	sbbq	%r9, %r9
	notq	%r9
	addq	$12, %r9
	cmpq	%r10, %rax
	sbbq	%rdx, %rdx
	notq	%rdx
	addq	$11, %rdx
	cmpq	%r10, %rax
	sbbl	%r8d, %r8d
	notl	%r8d
	addl	$11, %r8d
	.p2align 4
	.p2align 3
.L686:
	movl	$48, %eax
	leal	(%rsi,%r8), %ecx
	leal	6(%rsi,%r8), %esi
	vpbroadcastb	%eax, %xmm0
	vmovdqu8	%xmm0, (%rdi)
	vmovdqu8	%xmm0, 16(%rdi)
	cmpl	$23, %esi
	jbe	.L723
	addq	%rdi, %r9
.L722:
	movabsq	$-6067343680855748867, %rax
	leaq	-8(%r9), %r11
	mulq	%r10
	shrq	$26, %rdx
	imulq	$100000000, %rdx, %rax
	subq	%rax, %r10
	jne	.L764
	movq	%rdx, %r10
	movl	$12, %r12d
	movl	$8, %edx
	movl	$8, %ebx
.L690:
	movl	%r10d, %eax
	cmpl	$9999, %r10d
	jbe	.L696
	movl	%r10d, %eax
	movl	$3518437209, %ebp
	leaq	-4(%r11), %r13
	imulq	%rbp, %rax
	shrq	$45, %rax
	imull	$10000, %eax, %ebp
	subl	%ebp, %r10d
	jne	.L765
	cmpl	%edx, %ebx
	jne	.L702
	addl	$4, %ebx
.L701:
	movl	%r12d, %edx
	movq	%r13, %r11
.L696:
	cmpl	$99, %eax
	ja	.L766
.L703:
	cmpl	$9, %eax
	ja	.L767
	addl	$48, %eax
	movb	%al, -1(%r11)
.L709:
	movslq	%ebx, %rax
	subl	%ebx, %r8d
	subq	%rax, %r9
	cmpl	$23, %esi
	ja	.L710
	testl	%ecx, %ecx
	jle	.L768
	movslq	%ecx, %rdx
	leaq	(%rdi,%rdx), %rax
	cmpl	%ecx, %r8d
	jg	.L769
	movw	$12334, (%rax)
	addq	$2, %rax
.L664:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L666:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	leaq	3(%rdi), %rax
	movl	$540028464, (%rdi)
	ret
	.p2align 4
	.p2align 3
.L665:
	testq	%rcx, %rcx
	jne	.L721
	shrq	$63, %rax
	movb	$45, (%rdi)
	addq	%rax, %rdi
	leaq	3(%rdi), %rax
	movl	$543583849, (%rdi)
	ret
	.p2align 4
	.p2align 3
.L721:
	leaq	3(%rdi), %rax
	movl	$544104814, (%rdi)
	ret
	.p2align 4
	.p2align 3
.L746:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	sarl	$22, %esi
	movl	$294, %eax
	movl	$2, %r8d
	leaq	_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10(%rip), %rdx
	movl	$63, %r9d
	subl	%esi, %eax
	subl	%esi, %r8d
	btsq	$52, %rcx
	leal	-2(%rsi), %r15d
	salq	$4, %rax
	imull	$1741647, %r8d, %r8d
	addq	%rdx, %rax
	xorl	%r11d, %r11d
	xorl	%edx, %edx
	movq	(%rax), %rbp
	movq	8(%rax), %rax
	movq	%rdx, -32(%rsp)
	sarl	$19, %r8d
	addl	%ebx, %r8d
	subl	%r8d, %r9d
	movq	%rbp, %r10
	movq	%rax, -40(%rsp)
	shrx	%r9, %rbp, %r9
.L667:
	leaq	(%rcx,%rcx), %r12
	movq	%r11, %rdx
	leaq	1(%r12), %r13
	shlx	%r8, %r13, %rax
	imulq	%rax, %rdx
	movq	%rdx, %r14
	movq	%rax, %rdx
	mulx	%r10, %r10, %r11
	movq	%r11, -16(%rsp)
	leaq	(%r11,%r14), %r11
	movq	-32(%rsp), %r14
	movq	%r10, -24(%rsp)
	imulq	%rax, %r14
	mulq	-40(%rsp)
	movabsq	$2361183241434822607, %rax
	addq	%rdx, %r14
	addq	-24(%rsp), %r14
	adcq	$0, %r11
	movq	%r11, %r10
	shrq	$3, %r10
	mulq	%r10
	movq	%rdx, %r10
	shrq	$4, %r10
	imull	$1000, %r10d, %eax
	subl	%eax, %r11d
	cmpl	%r9d, %r11d
	jnb	.L675
	notq	%rcx
	andl	$1, %ecx
	cmpl	$-2, %ebx
	setl	%al
	orb	%al, %cl
	jne	.L680
	testl	%r11d, %r11d
	je	.L770
	.p2align 4
	.p2align 3
.L680:
	movq	%r10, %rax
	incl	%esi
	shrq	$32, %rax
	jne	.L771
.L685:
	cmpl	$999999999, %r10d
	ja	.L735
	cmpl	$99999999, %r10d
	ja	.L736
	cmpl	$9999999, %r10d
	ja	.L737
	cmpl	$999999, %r10d
	ja	.L738
	cmpl	$99999, %r10d
	ja	.L739
	cmpl	$9999, %r10d
	ja	.L740
	cmpl	$999, %r10d
	ja	.L741
	cmpl	$99, %r10d
	ja	.L742
	cmpl	$10, %r10d
	sbbq	%rax, %rax
	addq	$3, %rax
	cmpl	$10, %r10d
	sbbq	%rdx, %rdx
	addq	$2, %rdx
	cmpl	$10, %r10d
	sbbl	%r8d, %r8d
	addl	$2, %r8d
.L688:
	movl	$48, %r9d
	leal	(%rsi,%r8), %ecx
	leal	6(%rsi,%r8), %esi
	vpbroadcastb	%r9d, %xmm0
	vmovdqu8	%xmm0, (%rdi)
	vmovdqu8	%xmm0, 16(%rdi)
	cmpl	$23, %esi
	jbe	.L723
	leaq	(%rdi,%rax), %r11
	movq	%r11, %r9
	jmp	.L762
	.p2align 4
	.p2align 3
.L723:
	testl	%ecx, %ecx
	jg	.L689
	movl	$2, %eax
	subl	%ecx, %eax
	cltq
	addq	%rax, %rdx
.L689:
	leaq	(%rdi,%rdx), %r11
	movq	%r11, %r9
	cmpq	$99999999, %r10
	ja	.L722
.L762:
	movl	$4, %r12d
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	jmp	.L690
	.p2align 4
	.p2align 3
.L710:
	movzbl	1(%rdi), %eax
	movb	%al, (%rdi)
	cmpl	$1, %r8d
	je	.L772
	movb	$46, 1(%rdi)
.L715:
	movl	%ecx, %edx
	decl	%edx
	js	.L716
	movw	$11109, (%r9)
.L717:
	cmpl	$99, %edx
	jg	.L719
	leal	(%rdx,%rdx), %eax
	leaq	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100(%rip), %rdx
	movzwl	(%rdx,%rax), %eax
	movw	%ax, 2(%r9)
	leaq	4(%r9), %rax
	jmp	.L664
	.p2align 4
	.p2align 3
.L767:
	leal	(%rax,%rax), %r10d
	leaq	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100(%rip), %rbp
	movzwl	0(%rbp,%r10), %r10d
	movw	%r10w, -2(%r11)
	cmpl	%edx, %ebx
	jne	.L709
	movl	%eax, %eax
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %rdx
	movsbl	(%rdx,%rax), %eax
	addl	%eax, %ebx
	jmp	.L709
	.p2align 4
	.p2align 3
.L766:
	movl	%eax, %r12d
	movl	%eax, %ebp
	imulq	$1374389535, %r12, %r10
	shrq	$37, %r10
	imull	$100, %r10d, %r13d
	subl	%r13d, %ebp
	leaq	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100(%rip), %r13
	leal	(%rbp,%rbp), %r14d
	movzwl	0(%r13,%r14), %r14d
	movw	%r14w, -2(%r11)
	cmpl	%edx, %ebx
	jne	.L704
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r14
	movsbl	(%r14,%rbp), %ebp
	addl	%ebp, %ebx
.L704:
	leal	2(%rdx), %r14d
	cmpl	$9999, %eax
	ja	.L705
	subq	$2, %r11
	movl	%r10d, %eax
	movl	%r14d, %edx
	jmp	.L703
	.p2align 4
	.p2align 3
.L675:
	je	.L773
.L678:
	shrl	%r9d
	subl	%r9d, %r11d
	leaq	(%r10,%r10,4), %r10
	leal	50(%r11), %eax
	movq	%rax, %rdx
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	movl	%eax, %ecx
	imull	$100, %eax, %eax
	leaq	(%rcx,%r10,2), %r10
	cmpl	%eax, %edx
	jne	.L674
	movq	-32(%rsp), %rcx
	movq	-40(%rsp), %rax
	imulq	%r12, %rbp
	imulq	%r12, %rcx
	movq	%rax, %rdx
	mulx	%r12, %rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	%rax, %rbp
	movl	$64, %eax
	subl	%r8d, %eax
	btq	%rax, %rbp
	jc	.L684
	testb	$1, %r10b
	je	.L674
	cmpl	$-4, %ebx
	jge	.L683
	movl	%r15d, %eax
	subl	%ebx, %eax
	incl	%eax
	cmpl	$63, %eax
	jg	.L674
	bzhi	%rax, %r12, %rax
	testq	%rax, %rax
	jne	.L674
	.p2align 4
	.p2align 3
.L684:
	decq	%r10
	jmp	.L674
	.p2align 4
	.p2align 3
.L768:
	movq	%r9, %rax
	movb	$46, 1(%rdi)
	jmp	.L664
	.p2align 4
	.p2align 3
.L716:
	movl	$1, %edx
	movw	$11621, (%r9)
	subl	%ecx, %edx
	cmpl	$9, %edx
	jg	.L717
	addl	$48, %edx
	leaq	3(%r9), %rax
	movb	%dl, 2(%r9)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L772:
	.cfi_restore_state
	leaq	1(%rdi), %r9
	jmp	.L715
	.p2align 4
	.p2align 3
.L764:
	movl	%r10d, %eax
	movl	$3518437209, %ebx
	leaq	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100(%rip), %r12
	imulq	%rbx, %rax
	shrq	$45, %rax
	movl	%eax, %ebx
	imull	$10000, %eax, %r13d
	imulq	$1374389535, %rbx, %rbx
	shrq	$37, %rbx
	movq	%rbx, %rbp
	imull	$100, %ebx, %ebx
	subl	%ebx, %eax
	leal	(%rbp,%rbp), %ebx
	subl	%r13d, %r10d
	movzwl	(%r12,%rbx), %ebx
	movw	%bx, -8(%r9)
	leal	(%rax,%rax), %ebx
	movzwl	(%r12,%rbx), %ebx
	movw	%bx, -6(%r9)
	jne	.L691
	testl	%eax, %eax
	je	.L692
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r10
	movl	$4, %ebx
	movsbl	(%r10,%rax), %eax
.L693:
	movq	%rdx, %r10
	addl	%eax, %ebx
	movl	$12, %r12d
	movl	$8, %edx
	jmp	.L690
	.p2align 4
	.p2align 3
.L765:
	movl	%r10d, %ebp
	leaq	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100(%rip), %r15
	imulq	$1374389535, %rbp, %rbp
	shrq	$37, %rbp
	movq	%rbp, %r14
	imull	$100, %ebp, %ebp
	subl	%ebp, %r10d
	leal	(%r14,%r14), %ebp
	movzwl	(%r15,%rbp), %ebp
	movw	%bp, -4(%r11)
	leal	(%r10,%r10), %ebp
	movzwl	(%r15,%rbp), %ebp
	movw	%bp, -2(%r11)
	cmpl	%edx, %ebx
	jne	.L701
	testl	%r10d, %r10d
	je	.L699
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %rdx
	movsbl	(%rdx,%r10), %edx
	addl	%edx, %ebx
	jmp	.L701
	.p2align 4
	.p2align 3
.L702:
	movl	$808464432, 0(%r13)
	jmp	.L701
	.p2align 4
	.p2align 3
.L719:
	movl	%edx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	leal	48(%rax), %ecx
	imull	$100, %eax, %eax
	movb	%cl, 2(%r9)
	subl	%eax, %edx
	leal	(%rdx,%rdx), %eax
	leaq	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100(%rip), %rdx
	movzwl	(%rdx,%rax), %eax
	movw	%ax, 3(%r9)
	leaq	5(%r9), %rax
	jmp	.L664
	.p2align 4
	.p2align 3
.L770:
	cmpl	$9, %ebx
	jle	.L677
	cmpl	$86, %ebx
	jg	.L680
	movl	%r15d, %eax
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %rdx
	salq	$4, %rax
	imulq	(%rdx,%rax), %r13
	cmpq	8(%rdx,%rax), %r13
	ja	.L680
.L677:
	decq	%r10
	movl	$1000, %r11d
	jmp	.L678
	.p2align 4
	.p2align 3
.L691:
	movl	%r10d, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	imull	$100, %eax, %ebx
	subl	%ebx, %r10d
	leal	(%rax,%rax), %ebx
	movzwl	(%r12,%rbx), %ebx
	movw	%bx, -4(%r9)
	leal	(%r10,%r10), %ebx
	movzwl	(%r12,%rbx), %ebx
	movw	%bx, -2(%r9)
	je	.L694
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %rax
	movsbl	(%rax,%r10), %ebx
.L695:
	movq	%rdx, %r10
	movl	$12, %r12d
	movl	$8, %edx
	jmp	.L690
	.p2align 4
	.p2align 3
.L741:
	movl	$5, %eax
	movl	$4, %edx
	movl	$4, %r8d
	jmp	.L688
	.p2align 4
	.p2align 3
.L705:
	movl	$3518437209, %eax
	movl	%r10d, %ebp
	imulq	%rax, %r12
	imulq	$1374389535, %rbp, %rbp
	shrq	$45, %r12
	shrq	$37, %rbp
	movq	%r12, %rax
	imull	$100, %ebp, %r12d
	subl	%r12d, %r10d
	movl	%r10d, %ebp
	leaq	-4(%r11), %r10
	leal	(%rbp,%rbp), %r12d
	movzwl	0(%r13,%r12), %r12d
	movw	%r12w, -4(%r11)
	cmpl	%ebx, %r14d
	jne	.L706
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r11
	movsbl	(%r11,%rbp), %r11d
	addl	%r11d, %ebx
.L706:
	addl	$4, %edx
	movq	%r10, %r11
	jmp	.L703
	.p2align 4
	.p2align 3
.L735:
	movl	$11, %r9d
	movl	$10, %edx
	movl	$10, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L728:
	movl	$18, %r9d
	movl	$17, %edx
	movl	$17, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L726:
	movabsq	$-5130745324059681113, %rax
	xorl	%edx, %edx
	movabsq	$-646153205651940552, %r10
	xorl	%r11d, %r11d
	movl	$494, %r9d
	movabsq	$-646153205651940552, %rbp
	movl	$8, %r8d
	movl	$-326, %r15d
	movl	$-324, %esi
	movl	$-1074, %ebx
	movq	%rax, -40(%rsp)
	movq	%rdx, -32(%rsp)
	jmp	.L667
	.p2align 4
	.p2align 3
.L769:
	vmovdqu	(%rax), %xmm1
	vmovdqu	%xmm1, 1(%rdi,%rdx)
	movb	$46, (%rax)
	leaq	1(%r9), %rax
	jmp	.L664
	.p2align 4
	.p2align 3
.L773:
	leaq	-1(%r12), %rax
	cmpl	$-2, %ebx
	jl	.L679
	andl	$1, %ecx
	jne	.L679
	cmpl	$9, %ebx
	jle	.L680
	cmpl	$86, %ebx
	jg	.L679
	movl	%r15d, %edx
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %rcx
	salq	$4, %rdx
	movq	(%rcx,%rdx), %r11
	imulq	%rax, %r11
	cmpq	8(%rcx,%rdx), %r11
	jbe	.L680
	.p2align 4
	.p2align 3
.L679:
	movq	-32(%rsp), %r11
	movq	-40(%rsp), %rdx
	imulq	%rax, %r11
	mulx	%rax, %rdx, %rcx
	imulq	%rbp, %rax
	leaq	(%r11,%rcx), %rdx
	addq	%rdx, %rax
	movl	$64, %edx
	subl	%r8d, %edx
	btq	%rdx, %rax
	jc	.L680
	movl	%r9d, %r11d
	jmp	.L678
	.p2align 4
	.p2align 3
.L736:
	movl	$10, %r9d
	movl	$9, %edx
	movl	$9, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L729:
	movl	$17, %r9d
	movl	$16, %edx
	movl	$16, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L763:
	andq	$-2, %rax
	movq	%rax, %r10
	jmp	.L674
	.p2align 4
	.p2align 3
.L737:
	movl	$9, %eax
	movl	$8, %edx
	movl	$8, %r8d
	jmp	.L688
	.p2align 4
	.p2align 3
.L730:
	movl	$16, %r9d
	movl	$15, %edx
	movl	$15, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L692:
	movl	%ebp, %ebp
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r10
	movl	$6, %ebx
	movsbl	(%r10,%rbp), %eax
	jmp	.L693
	.p2align 4
	.p2align 3
.L731:
	movl	$15, %r9d
	movl	$14, %edx
	movl	$14, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L738:
	movl	$8, %eax
	movl	$7, %edx
	movl	$7, %r8d
	jmp	.L688
	.p2align 4
	.p2align 3
.L732:
	movl	$14, %r9d
	movl	$13, %edx
	movl	$13, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L739:
	movl	$7, %eax
	movl	$6, %edx
	movl	$6, %r8d
	jmp	.L688
	.p2align 4
	.p2align 3
.L740:
	movl	$6, %eax
	movl	$5, %edx
	movl	$5, %r8d
	jmp	.L688
	.p2align 4
	.p2align 3
.L733:
	movl	$13, %r9d
	movl	$12, %edx
	movl	$12, %r8d
	jmp	.L686
	.p2align 4
	.p2align 3
.L699:
	movl	%r14d, %r14d
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %rdx
	movsbl	(%rdx,%r14), %edx
	addl	$2, %edx
	addl	%edx, %ebx
	jmp	.L701
	.p2align 4
	.p2align 3
.L694:
	movl	%eax, %eax
	leaq	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100(%rip), %r10
	movsbl	(%r10,%rax), %ebx
	addl	$2, %ebx
	jmp	.L695
.L742:
	movl	$4, %eax
	movl	$3, %edx
	movl	$3, %r8d
	jmp	.L688
.L683:
	cmpl	$9, %ebx
	jle	.L684
	cmpl	$86, %ebx
	jg	.L674
	movl	%r15d, %eax
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %rdx
	salq	$4, %rax
	imulq	(%rdx,%rax), %r12
	cmpq	8(%rdx,%rax), %r12
	jbe	.L684
	jmp	.L674
	.cfi_endproc
.LFE10442:
	.size	_ZN9dragonbox4DtoaEPcd, .-_ZN9dragonbox4DtoaEPcd
	.p2align 4
	.globl	d2s_buffered_n
	.type	d2s_buffered_n, @function
d2s_buffered_n:
.LFB10470:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rax, %rdx
	movq	%rax, %rbp
	movabsq	$4503599627370495, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	shrq	$52, %rdx
	movl	%edx, %esi
	notl	%edx
	andq	%rax, %rdi
	shrq	$63, %rbp
	andl	$2047, %esi
	andl	$2047, %edx
	je	.L775
	testl	%esi, %esi
	jne	.L776
	testq	%rdi, %rdi
	jne	.L776
	testq	%rax, %rax
	js	.L777
.L778:
	addq	%rbp, %rbx
	leal	3(%rbp), %eax
	movw	$17712, (%rbx)
	movb	$48, 2(%rbx)
.L781:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L776:
	.cfi_restore_state
	leal	-1023(%rsi), %eax
	cmpl	$52, %eax
	jbe	.L794
.L782:
	call	_ZL3d2dmj
	movq	%rax, %rdi
	movl	%edx, %esi
.L783:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movzbl	%bpl, %edx
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZL8to_chars19floating_decimal_64bPc.isra.0
	.p2align 4
	.p2align 3
.L775:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L779
	testq	%rax, %rax
	jns	.L780
	movb	$45, (%rbx)
.L780:
	movabsq	$8751735898823355977, %rax
	movq	%rax, (%rbx,%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leal	8(%rbp), %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L777:
	.cfi_restore_state
	movb	$45, (%rbx)
	jmp	.L778
	.p2align 4
	.p2align 3
.L779:
	movl	$3, %eax
	movw	$24910, (%rbx)
	movb	$78, 2(%rbx)
	jmp	.L781
	.p2align 4
	.p2align 3
.L794:
	movq	%rdi, %rdx
	movl	$1075, %eax
	btsq	$52, %rdx
	subl	%esi, %eax
	bzhi	%rax, %rdx, %rcx
	testq	%rcx, %rcx
	jne	.L782
	shrx	%rax, %rdx, %rdi
	movabsq	$-3689348814741910323, %r8
	movq	%rdi, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	cmpl	%edi, %eax
	jne	.L785
	movl	$1, %ecx
	.p2align 4
	.p2align 3
.L784:
	movq	%rdx, %rax
	movq	%rdx, %rdi
	movl	%ecx, %esi
	incl	%ecx
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	cmpl	%edi, %eax
	je	.L784
	jmp	.L783
	.p2align 4
	.p2align 3
.L785:
	xorl	%esi, %esi
	jmp	.L783
	.cfi_endproc
.LFE10470:
	.size	d2s_buffered_n, .-d2s_buffered_n
	.p2align 4
	.globl	d2s_buffered
	.type	d2s_buffered, @function
d2s_buffered:
.LFB10471:
	.cfi_startproc
	endbr64
	vmovq	%xmm0, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rax, %rdx
	movq	%rax, %rbp
	movabsq	$4503599627370495, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	shrq	$52, %rdx
	movl	%edx, %esi
	notl	%edx
	andq	%rax, %rdi
	shrq	$63, %rbp
	andl	$2047, %esi
	andl	$2047, %edx
	je	.L796
	testl	%esi, %esi
	jne	.L797
	testq	%rdi, %rdi
	jne	.L797
	testq	%rax, %rax
	jns	.L799
	movb	$45, (%rbx)
.L799:
	leaq	(%rbx,%rbp), %rax
	movw	$17712, (%rax)
	movb	$48, 2(%rax)
	leaq	3(%rbp), %rax
	movb	$0, (%rbx,%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L797:
	.cfi_restore_state
	leal	-1023(%rsi), %eax
	cmpl	$52, %eax
	jbe	.L815
.L803:
	call	_ZL3d2dmj
	movq	%rax, %rdi
	movl	%edx, %esi
.L804:
	movzbl	%bpl, %edx
	movq	%rbx, %rcx
	call	_ZL8to_chars19floating_decimal_64bPc.isra.0
	cltq
.L802:
	movb	$0, (%rbx,%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L796:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L800
	testq	%rax, %rax
	jns	.L801
	movb	$45, (%rbx)
.L801:
	movabsq	$8751735898823355977, %rax
	movq	%rax, (%rbx,%rbp)
	leaq	8(%rbp), %rax
	movb	$0, (%rbx,%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L800:
	.cfi_restore_state
	movl	$3, %eax
	movw	$24910, (%rbx)
	movb	$78, 2(%rbx)
	jmp	.L802
	.p2align 4
	.p2align 3
.L815:
	movq	%rdi, %rdx
	movl	$1075, %eax
	btsq	$52, %rdx
	subl	%esi, %eax
	bzhi	%rax, %rdx, %rcx
	testq	%rcx, %rcx
	jne	.L803
	shrx	%rax, %rdx, %rdi
	movabsq	$-3689348814741910323, %r8
	movq	%rdi, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	cmpl	%edi, %eax
	jne	.L806
	movl	$1, %ecx
	.p2align 4
	.p2align 3
.L805:
	movq	%rdx, %rax
	movq	%rdx, %rdi
	movl	%ecx, %esi
	incl	%ecx
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	cmpl	%edi, %eax
	je	.L805
	jmp	.L804
	.p2align 4
	.p2align 3
.L806:
	xorl	%esi, %esi
	jmp	.L804
	.cfi_endproc
.LFE10471:
	.size	d2s_buffered, .-d2s_buffered
	.p2align 4
	.globl	d2s
	.type	d2s, @function
d2s:
.LFB10472:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$25, %edi
	vmovq	%xmm0, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	malloc@PLT
	movabsq	$4503599627370495, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rax
	movq	%rax, %rdx
	andq	%rax, %rdi
	shrq	$52, %rdx
	movl	%edx, %esi
	notl	%edx
	shrq	$63, %rbx
	andl	$2047, %esi
	andl	$2047, %edx
	je	.L817
	testl	%esi, %esi
	jne	.L818
	testq	%rdi, %rdi
	jne	.L818
	testq	%rax, %rax
	jns	.L820
	movb	$45, 0(%rbp)
.L820:
	leaq	0(%rbp,%rbx), %rax
	movw	$17712, (%rax)
	movb	$48, 2(%rax)
	leaq	3(%rbx), %rax
	movb	$0, 0(%rbp,%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L818:
	.cfi_restore_state
	leal	-1023(%rsi), %eax
	cmpl	$52, %eax
	jbe	.L836
.L824:
	call	_ZL3d2dmj
	movq	%rax, %rdi
	movl	%edx, %esi
.L825:
	movzbl	%bl, %edx
	movq	%rbp, %rcx
	call	_ZL8to_chars19floating_decimal_64bPc.isra.0
	cltq
.L823:
	movb	$0, 0(%rbp,%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L817:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L821
	testq	%rax, %rax
	jns	.L822
	movb	$45, 0(%rbp)
.L822:
	movabsq	$8751735898823355977, %rax
	movq	%rax, 0(%rbp,%rbx)
	leaq	8(%rbx), %rax
	movb	$0, 0(%rbp,%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L821:
	.cfi_restore_state
	movl	$3, %eax
	movw	$24910, 0(%rbp)
	movb	$78, 2(%rbp)
	jmp	.L823
	.p2align 4
	.p2align 3
.L836:
	movq	%rdi, %rdx
	movl	$1075, %eax
	btsq	$52, %rdx
	subl	%esi, %eax
	bzhi	%rax, %rdx, %rcx
	testq	%rcx, %rcx
	jne	.L824
	shrx	%rax, %rdx, %rdi
	movabsq	$-3689348814741910323, %r8
	movq	%rdi, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	cmpl	%edi, %eax
	jne	.L827
	movl	$1, %ecx
	.p2align 4
	.p2align 3
.L826:
	movq	%rdx, %rax
	movq	%rdx, %rdi
	movl	%ecx, %esi
	incl	%ecx
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	cmpl	%edi, %eax
	je	.L826
	jmp	.L825
	.p2align 4
	.p2align 3
.L827:
	xorl	%esi, %esi
	jmp	.L825
	.cfi_endproc
.LFE10472:
	.size	d2s, .-d2s
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"uint32_t decimalLength9(uint32_t)"
	.section	.rodata.str1.1
.LC49:
	.string	"v < 1000000000"
	.text
	.p2align 4
	.globl	f2s_buffered_n
	.type	f2s_buffered_n, @function
f2s_buffered_n:
.LFB10481:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	vmovd	%xmm0, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ebp, %esi
	movq	%rdi, %rbx
	movl	%ebp, %eax
	movl	%ebp, %edi
	shrl	$23, %esi
	movzbl	%sil, %esi
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	andl	$8388607, %edi
	shrl	$31, %eax
	cmpl	$255, %esi
	je	.L838
	movl	%edi, %edx
	orl	%esi, %edx
	jne	.L839
	testl	%ebp, %ebp
	js	.L840
.L841:
	movzbl	%al, %edx
	addl	$3, %eax
	addq	%rbx, %rdx
	movw	$17712, (%rdx)
	movb	$48, 2(%rdx)
.L837:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L840:
	.cfi_restore_state
	movb	$45, (%rbx)
	jmp	.L841
	.p2align 4
	.p2align 3
.L839:
	call	_ZL3f2djj
	movq	%rax, %r9
	testl	%ebp, %ebp
	js	.L870
	movl	$8, %edi
	movl	$9, %r10d
	movl	$5, %r14d
	movl	$7, %r8d
	movl	$6, %ebp
	movl	$3, %edx
	movl	$2, %eax
	movl	$1, %r11d
	movl	$1, %esi
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	movq	$-1, 24(%rsp)
.L845:
	movl	%r9d, %ecx
	cmpl	$999999999, %r9d
	ja	.L871
	cmpl	$99999999, %r9d
	ja	.L859
	cmpl	$9999999, %r9d
	ja	.L860
	cmpl	$999999, %r9d
	ja	.L861
	cmpl	$99999, %r9d
	ja	.L862
	cmpl	$9999, %r9d
	ja	.L863
	cmpl	$999, %r9d
	ja	.L864
	cmpl	$99, %r9d
	ja	.L865
	cmpl	$9, %r9d
	ja	.L872
	leal	48(%r9), %eax
	movl	$1, %ebp
	movb	%al, (%rbx,%r13)
	jmp	.L855
	.p2align 4
	.p2align 3
.L838:
	testl	%edi, %edi
	jne	.L842
	testl	%ebp, %ebp
	jns	.L843
	movb	$45, (%rbx)
.L843:
	movzbl	%al, %edx
	movabsq	$8751735898823355977, %rcx
	addl	$8, %eax
	movq	%rcx, (%rbx,%rdx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L870:
	.cfi_restore_state
	movl	$9, %edi
	movl	$10, %r10d
	movl	$6, %r14d
	movl	$8, %r8d
	movl	$7, %ebp
	movl	$4, %edx
	movl	$3, %eax
	movl	$2, %r11d
	movl	$2, %esi
	movl	$1, %r12d
	movl	$1, %r13d
	movb	$45, (%rbx)
	movq	$0, 24(%rsp)
	jmp	.L845
	.p2align 4
	.p2align 3
.L842:
	movl	$3, %eax
	movw	$24910, (%rbx)
	movb	$78, 2(%rbx)
	jmp	.L837
	.p2align 4
	.p2align 3
.L859:
	movl	$9, %ebp
	movl	$9, %edx
	movl	$9, 4(%rsp)
.L847:
	leaq	_ZL11DIGIT_TABLE(%rip), %r14
	movq	%rdx, 8(%rsp)
	xorl	%esi, %esi
	movl	$3518437209, %r15d
	movq	%r14, %rdx
	movq	%r9, 16(%rsp)
	.p2align 4
	.p2align 3
.L851:
	movl	%ecx, %eax
	movl	%ecx, %r14d
	movl	%ecx, %r8d
	imulq	%r15, %rax
	movq	%rax, %rdi
	shrq	$45, %rdi
	imull	$10000, %edi, %edi
	shrq	$45, %rax
	subl	%edi, %r14d
	movq	%rax, %rcx
	movq	%r10, %rdi
	movl	%esi, %eax
	subq	%rax, %rdi
	movl	%r14d, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	imull	$100, %eax, %r9d
	addl	%eax, %eax
	subl	%r9d, %r14d
	addl	%r14d, %r14d
	movl	%r14d, %r14d
	movzwl	(%rdx,%r14), %r9d
	movw	%r9w, -1(%rbx,%rdi)
	movzwl	(%rdx,%rax), %eax
	movw	%ax, -3(%rbx,%rdi)
	movl	%esi, %eax
	addl	$4, %esi
	cmpl	$99999999, %r8d
	ja	.L851
	movq	%rdx, %r14
	movq	16(%rsp), %r9
	movq	8(%rsp), %rdx
	cmpl	$999999, %r8d
	ja	.L873
.L852:
	cmpl	$9, %ecx
	ja	.L874
	addl	$48, %ecx
	movb	%cl, (%rbx,%r13)
.L854:
	movl	4(%rsp), %eax
	movb	$46, (%rbx,%r11)
	leal	1(%rax,%r12), %r11d
	movq	%r11, %rsi
.L855:
	sarq	$32, %r9
	movb	$69, (%rbx,%r11)
	leal	-1(%rbp,%r9), %edx
	leal	1(%rsi), %eax
	leal	0(%rbp,%r9), %ecx
	testl	%edx, %edx
	jns	.L856
	cltq
	movl	$1, %edx
	movb	$45, (%rbx,%rax)
	subl	%ecx, %edx
	leal	2(%rsi), %eax
.L856:
	movslq	%eax, %rcx
	addq	%rcx, %rbx
	cmpl	$9, %edx
	jg	.L875
	addl	$48, %edx
	incl	%eax
	movb	%dl, (%rbx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L874:
	.cfi_restore_state
	movl	4(%rsp), %eax
	addl	%r12d, %eax
	subl	%esi, %eax
.L849:
	addl	%ecx, %ecx
	leal	1(%rcx), %edx
	movzbl	(%r14,%rdx), %edx
	movb	%dl, (%rbx,%rax)
	movzbl	(%r14,%rcx), %eax
	movb	%al, (%rbx,%r13)
	jmp	.L854
	.p2align 4
	.p2align 3
.L875:
	addl	%edx, %edx
	leaq	_ZL11DIGIT_TABLE(%rip), %rcx
	addl	$2, %eax
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx), %edx
	movw	%dx, (%rbx)
	jmp	.L837
	.p2align 4
	.p2align 3
.L873:
	movq	24(%rsp), %r15
	addq	%rdx, %r15
	movq	%r15, %rdx
	subq	%rsi, %rdx
	leal	6(%rax), %esi
.L848:
	movl	%ecx, %eax
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	imull	$100, %eax, %r8d
	subl	%r8d, %ecx
	movl	%ecx, %edi
	movl	%eax, %ecx
	leal	(%rdi,%rdi), %eax
	movzwl	(%r14,%rax), %eax
	movw	%ax, (%rbx,%rdx)
	jmp	.L852
.L865:
	movq	%rax, %rdx
	movl	$3, %ebp
	movl	$2, %esi
	leaq	_ZL11DIGIT_TABLE(%rip), %r14
	movl	$3, 4(%rsp)
	jmp	.L848
	.p2align 4
	.p2align 3
.L860:
	movq	%rdi, %r10
	movl	$8, %ebp
	movl	$8, %edx
	movl	$8, 4(%rsp)
	jmp	.L847
	.p2align 4
	.p2align 3
.L861:
	movq	%r8, %r10
	movl	$7, %ebp
	movl	$7, %edx
	movl	$7, 4(%rsp)
	jmp	.L847
	.p2align 4
	.p2align 3
.L862:
	movq	%rbp, %r10
	movl	$6, %edx
	movl	$6, %ebp
	movl	$6, 4(%rsp)
	jmp	.L847
.L863:
	movq	%r14, %r10
	movl	$5, %ebp
	movl	$5, %edx
	movl	$5, 4(%rsp)
	jmp	.L847
.L864:
	movl	$4, %ebp
	movl	$2, %esi
	leaq	_ZL11DIGIT_TABLE(%rip), %r14
	movl	$4, 4(%rsp)
	jmp	.L848
.L872:
	movl	$2, %ebp
	leaq	_ZL11DIGIT_TABLE(%rip), %r14
	movl	$2, 4(%rsp)
	jmp	.L849
.L871:
	leaq	.LC48(%rip), %rcx
	movl	$34, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC49(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE10481:
	.size	f2s_buffered_n, .-f2s_buffered_n
	.p2align 4
	.globl	f2s_buffered
	.type	f2s_buffered, @function
f2s_buffered:
.LFB10482:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	f2s_buffered_n
	cltq
	movb	$0, (%rbx,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10482:
	.size	f2s_buffered, .-f2s_buffered
	.p2align 4
	.globl	f2s
	.type	f2s, @function
f2s:
.LFB10483:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$16, %edi
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	vmovss	%xmm0, 12(%rsp)
	call	malloc@PLT
	vmovss	12(%rsp), %xmm0
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	f2s_buffered_n
	cltq
	movb	$0, (%rbx,%rax)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10483:
	.size	f2s, .-f2s
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"int32_t teju_log10_pow2(int32_t)"
	.section	.rodata.str1.1
.LC51:
	.string	"teju/generated/../common.h"
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"teju_log10_pow2_min <= e && e <= teju_log10_pow2_max"
	.text
	.p2align 4
	.globl	teju_ieee64_with_uint128
	.type	teju_ieee64_with_uint128, @function
teju_ieee64_with_uint128:
.LFB10501:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leal	52(%rdi), %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %r9
	movq	%rdi, %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$52, %eax
	ja	.L881
	movl	%edi, %eax
	negl	%eax
	shrx	%rax, %r9, %rdx
	shlx	%rax, %rdx, %rax
	cmpq	%rax, %r9
	je	.L937
.L883:
	movslq	%esi, %r8
	imull	$1292913987, %esi, %edi
	movl	$3566893131, %eax
	imulq	$1292913987, %r8, %r8
	imulq	%rax, %rdi
	leaq	_ZL11multipliers(%rip), %rax
	sarq	$32, %r8
	leal	324(%r8), %edx
	movl	%r8d, %ecx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %r10
	movq	8(%rax), %r11
	movabsq	$4503599627370496, %rax
	shrq	$62, %rdi
	cmpq	%rax, %r9
	jne	.L908
	cmpl	$-1074, %esi
	je	.L908
	movabsq	$18014398509481983, %rdx
	shlx	%rdi, %rdx, %rdx
	movq	%rdx, %rax
	mulx	%r10, %r12, %r13
	mulq	%r11
	addq	%rdx, %r12
	movabsq	$9007199254740993, %rdx
	adcq	$0, %r13
	shlx	%rdi, %rdx, %rdx
	movq	%rdx, %rax
	movq	%r13, %rsi
	mulx	%r10, %r12, %r13
	mulq	%r11
	shrq	%rsi
	addq	%rdx, %r12
	adcq	$0, %r13
	movq	%r13, %rax
	cmpq	%r13, %rsi
	jnb	.L899
	movabsq	$1844674407370955162, %rdx
	mulx	%rax, %rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%rax, %rax
	cmpq	%rax, %rsi
	jb	.L938
	subl	$10, %edi
	negl	%edi
	shrx	%rdi, %r10, %rdi
	movq	%rdi, %rdx
	shrq	%rdx
	cmpq	%rdx, %rsi
	je	.L936
	testb	$1, %dil
	je	.L886
	testb	$1, %dl
	jne	.L936
	negl	%r8d
	cmpl	$26, %r8d
	ja	.L936
	movslq	%r8d, %r8
	leaq	_ZL8minverse(%rip), %rax
	salq	$4, %r8
	imulq	(%rax,%r8), %rdi
	cmpq	8(%rax,%r8), %rdi
	ja	.L936
.L886:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L908:
	.cfi_restore_state
	leaq	(%r9,%r9), %rbx
	leaq	-1(%rbx), %rsi
	shlx	%rdi, %rsi, %rsi
	movq	%rsi, %rdx
	movq	%rsi, %rax
	mulx	%r10, %r12, %r13
	mulq	%r11
	addq	%rdx, %r12
	adcq	$0, %r13
	incq	%rbx
	shlx	%rdi, %rbx, %rbx
	movq	%rbx, %rdx
	movq	%rbx, %rax
	movq	%r13, %rbp
	mulx	%r10, %r12, %r13
	mulq	%r11
	movabsq	$1844674407370955162, %rax
	addq	%rdx, %r12
	adcq	$0, %r13
	mulq	%r13
	leaq	(%rdx,%rdx,4), %r12
	movq	%rdx, %rax
	addq	%r12, %r12
	cmpq	%r12, %rbp
	jnb	.L890
	cmpq	%r13, %r12
	jnb	.L939
.L891:
	movabsq	$-3689348814741910323, %rdi
	movabsq	$1844674407370955161, %rsi
	leal	1(%r8), %ecx
	imulq	%rdi, %rax
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jb	.L886
	.p2align 4
	.p2align 3
.L893:
	movq	%rax, %rdx
	imulq	%rdi, %rax
	incl	%ecx
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jnb	.L893
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L881:
	.cfi_restore_state
	leal	112815(%rdi), %eax
	cmpl	$225630, %eax
	jbe	.L883
	leaq	.LC50(%rip), %rcx
	movl	$62, %edx
	leaq	.LC51(%rip), %rsi
	leaq	.LC52(%rip), %rdi
	call	__assert_fail@PLT
	.p2align 4
	.p2align 3
.L890:
	cmpq	%rbp, %r12
	je	.L940
.L892:
	addq	%rbp, %r13
	testb	$1, %r13b
	jne	.L941
	leaq	0(,%r9,4), %rdx
	shlx	%rdi, %rdx, %rdx
	movq	%rdx, %rax
	mulx	%r10, %rsi, %rdi
	mulq	%r11
	addq	%rdx, %rsi
	adcq	$0, %rdi
	movq	%rdi, %rdx
	movq	%rdi, %rax
	shrq	%rdx
	testb	$1, %dil
	je	.L886
	testb	$1, %dl
	jne	.L936
	negl	%r8d
	cmpl	$26, %r8d
	ja	.L936
	movslq	%r8d, %r8
	leaq	_ZL8minverse(%rip), %rsi
	salq	$4, %r8
	imulq	(%rsi,%r8), %rax
	cmpq	8(%rsi,%r8), %rax
	jbe	.L886
.L936:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	incq	%rdx
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L937:
	.cfi_restore_state
	movabsq	$-3689348814741910323, %rdi
	movq	%rdx, %rax
	movabsq	$1844674407370955161, %rsi
	xorl	%ecx, %ecx
	imulq	%rdi, %rax
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jb	.L886
	.p2align 4
	.p2align 3
.L885:
	movq	%rax, %rdx
	imulq	%rdi, %rax
	incl	%ecx
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jnb	.L885
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L938:
	.cfi_restore_state
	movabsq	$-3689348814741910323, %rdi
	movq	%rdx, %rax
	movabsq	$1844674407370955161, %rsi
	leal	1(%r8), %ecx
	imulq	%rdi, %rax
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jb	.L886
	.p2align 4
	.p2align 3
.L901:
	movq	%rax, %rdx
	imulq	%rdi, %rax
	incl	%ecx
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jnb	.L901
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L941:
	.cfi_restore_state
	shrq	%r13
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	1(%r13), %rdx
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L939:
	.cfi_restore_state
	testb	$1, %r9b
	je	.L891
	cmpl	$26, %r8d
	ja	.L891
	movq	%r8, %rsi
	leaq	_ZL8minverse(%rip), %r12
	salq	$4, %rsi
	imulq	(%r12,%rsi), %rbx
	cmpq	8(%r12,%rsi), %rbx
	jbe	.L892
	jmp	.L891
	.p2align 4
	.p2align 3
.L940:
	testb	$1, %r9b
	jne	.L892
	cmpl	$26, %r8d
	ja	.L892
	movq	%r8, %rbx
	leaq	_ZL8minverse(%rip), %r12
	salq	$4, %rbx
	imulq	(%r12,%rbx), %rsi
	cmpq	8(%r12,%rbx), %rsi
	ja	.L892
	movabsq	$-3689348814741910323, %rdi
	movabsq	$1844674407370955161, %rsi
	leal	1(%r8), %ecx
	imulq	%rdi, %rax
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jb	.L886
	.p2align 4
	.p2align 3
.L895:
	movq	%rax, %rdx
	imulq	%rdi, %rax
	incl	%ecx
	rorx	$1, %rax, %rax
	cmpq	%rax, %rsi
	jnb	.L895
	jmp	.L886
	.p2align 4
	.p2align 3
.L899:
	movq	%r11, %rax
	movabsq	$180143985094819840, %rdx
	shlx	%rdi, %rdx, %rdx
	mulx	%r10, %rsi, %rdi
	mulq	%rdx
	addq	%rdx, %rsi
	adcq	$0, %rdi
	movq	%rdi, %rdx
	movq	%rdi, %rax
	shrq	%rdx
	testb	$1, %dil
	je	.L905
	testb	$1, %dl
	jne	.L906
	negl	%ecx
	cmpl	$26, %ecx
	ja	.L906
	movslq	%ecx, %rcx
	leaq	_ZL8minverse(%rip), %rsi
	salq	$4, %rcx
	imulq	(%rsi,%rcx), %rax
	cmpq	8(%rsi,%rcx), %rax
	ja	.L906
	.p2align 4
	.p2align 3
.L905:
	leal	-1(%r8), %ecx
	jmp	.L886
	.p2align 4
	.p2align 3
.L906:
	leal	-1(%r8), %ecx
	jmp	.L936
	.cfi_endproc
.LFE10501:
	.size	teju_ieee64_with_uint128, .-teju_ieee64_with_uint128
	.p2align 4
	.globl	_Z15teju_f64_to_decdPyPi
	.type	_Z15teju_f64_to_decdPyPi, @function
_Z15teju_f64_to_decdPyPi:
.LFB10502:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vmovq	%xmm0, %rax
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	movabsq	$4503599627370495, %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbp
	andq	%rax, %rsi
	shrq	$52, %rax
	andl	$2047, %eax
	je	.L944
	btsq	$52, %rsi
	leal	-1075(%rax), %edi
.L943:
	call	teju_ieee64_with_uint128
	movq	%rdx, 0(%rbp)
	movl	%eax, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L944:
	.cfi_restore_state
	movl	$-1074, %edi
	jmp	.L943
	.cfi_endproc
.LFE10502:
	.size	_Z15teju_f64_to_decdPyPi, .-_Z15teju_f64_to_decdPyPi
	.p2align 4
	.globl	_Z42generalized_granlund_montgomery_branchlessm
	.type	_Z42generalized_granlund_montgomery_branchlessm, @function
_Z42generalized_granlund_montgomery_branchlessm:
.LFB10540:
	.cfi_startproc
	endbr64
	movabsq	$28999941890838049, %rdx
	movabsq	$184467440968, %rsi
	movq	%rdi, %rax
	imulq	%rdi, %rdx
	cmpq	%rdx, %rsi
	movq	%rdx, %rdi
	setnb	%cl
	shrq	$8, %rdi
	cmpq	%rdx, %rsi
	movabsq	$182622766329724561, %rdx
	movabsq	$1844674407370970, %rsi
	movzbl	%cl, %ecx
	cmovnb	%rdi, %rax
	xorl	%edi, %edi
	imulq	%rax, %rdx
	cmpq	%rdx, %rsi
	setnb	%dil
	leaq	(%rdi,%rcx,2), %rdi
	movq	%rdx, %rcx
	shrq	$4, %rcx
	cmpq	%rdx, %rsi
	movabsq	$-3504881374004814807, %rdx
	cmovnb	%rcx, %rax
	movabsq	$184467440737095516, %rcx
	xorl	%esi, %esi
	imulq	%rax, %rdx
	cmpq	%rdx, %rcx
	setnb	%sil
	leaq	(%rsi,%rdi,2), %rsi
	movq	%rdx, %rdi
	shrq	$2, %rdi
	cmpq	%rdx, %rcx
	movabsq	$5534023222112865485, %rdx
	cmovnb	%rdi, %rax
	imulq	%rdx, %rax
	movabsq	$1844674407370955162, %rdx
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	leaq	(%rax,%rsi,2), %rax
	ret
	.cfi_endproc
.LFE10540:
	.size	_Z42generalized_granlund_montgomery_branchlessm, .-_Z42generalized_granlund_montgomery_branchlessm
	.p2align 4
	.globl	_Z21f64_bin_to_dec_xjb_v2miPmPi
	.type	_Z21f64_bin_to_dec_xjb_v2miPmPi, @function
_Z21f64_bin_to_dec_xjb_v2miPmPi:
.LFB10549:
	.cfi_startproc
	endbr64
	imull	$315653, %esi, %eax
	movabsq	$4503599627370496, %r10
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movl	%edi, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	andl	$1, %ecx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	movl	%eax, %r9d
	subl	$131237, %eax
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	sarl	$20, %r9d
	sarl	$20, %eax
	cmpq	%r10, %rdi
	cmovne	%r9d, %eax
	leaq	5488+_ZL15pow10_sig_table(%rip), %r9
	movl	%eax, (%rdx)
	notl	%eax
	imull	$217707, %eax, %edx
	addl	%eax, %eax
	cltq
	leaq	(%r9,%rax,8), %r9
	sarl	$16, %edx
	movq	(%r9), %r12
	leal	11(%rsi,%rdx), %r10d
	leal	(%rdx,%rsi), %ebx
	shlx	%r10, %rdi, %r10
	movq	%r10, %rax
	mulq	8(%r9)
	movq	%r12, %r9
	imulq	%r10, %r9
	movq	%rdx, %r14
	addq	%rdx, %r9
	movq	%r10, %rdx
	mulx	%r12, %r10, %r11
	addq	%r14, %r10
	movl	$10, %r10d
	adcq	$0, %r11
	negl	%ebx
	movq	%r11, %rdx
	movq	%r11, %rax
	shrx	%rbx, %r12, %rbx
	movabsq	$-9223372036854775808, %r12
	shrq	$10, %rdx
	leaq	(%rdx,%rdx,4), %r13
	movq	%r9, %rdx
	andl	$1023, %r9d
	shrq	$10, %rdx
	salq	$54, %rax
	addq	%rdx, %rax
	addq	%r13, %r13
	movq	%rax, %rdx
	movq	%r13, %r14
	mulx	%r10, %r10, %r11
	leaq	(%r9,%r9,4), %rdx
	leaq	(%rax,%rax,4), %r9
	shrq	$9, %rdx
	leaq	(%rdx,%r9,2), %r9
	movq	%r9, %rdx
	shrq	$63, %rdx
	addq	%r11, %rdx
	cmpq	%r12, %r9
	je	.L977
.L953:
	movq	%rax, %r9
	movabsq	$4503599627370496, %r10
	notq	%r9
	cmpq	%r10, %rdi
	je	.L978
	cmpq	%r9, %rbx
	je	.L957
	cmpq	%rbx, %r9
	movl	$10, %esi
	cmovb	%rsi, %rdx
	cmpq	%rax, %rbx
	je	.L979
.L961:
	addq	%r13, %rdx
	movq	%r13, %r14
	cmpq	%rbx, %rax
	cmovnb	%rdx, %r14
.L960:
	popq	%rbx
	movq	%r14, (%r8)
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4
	.p2align 3
.L978:
	.cfi_restore_state
	cmpq	%r9, %rbx
	je	.L980
	movl	$10, %r14d
	cmpq	%rbx, %r9
	jb	.L955
	movl	$1, %ecx
	vpbroadcastw	%esi, %ymm0
	xorl	%r14d, %r14d
	vpbroadcastw	%ecx, %ymm1
	vpcmpeqw	.LC22(%rip), %ymm0, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpmovzxwd	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0
	vextracti128	$0x1, %ymm1, %xmm2
	vpmovzxdq	%xmm1, %ymm1
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm1, %ymm2, %ymm1
	vpmovzxdq	%xmm0, %ymm2
	vpaddq	%ymm1, %ymm2, %ymm2
	vextracti128	$0x1, %ymm0, %xmm1
	vpbroadcastw	%esi, %xmm0
	vpmovzxdq	%xmm1, %ymm1
	vpaddq	%ymm2, %ymm1, %ymm1
	vpcmpeqw	.LC24(%rip), %xmm0, %xmm0
	vpbroadcastw	%ecx, %xmm2
	vpand	%xmm2, %xmm0, %xmm0
	vpmovzxwd	%xmm0, %xmm3
	vpsrldq	$8, %xmm0, %xmm0
	vpmovzxwd	%xmm0, %xmm2
	vpsrldq	$8, %xmm3, %xmm0
	vpmovzxdq	%xmm3, %xmm3
	vpmovzxdq	%xmm0, %xmm0
	vpaddq	%xmm3, %xmm0, %xmm0
	vpmovzxdq	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxdq	%xmm2, %xmm2
	vpaddq	%xmm3, %xmm0, %xmm0
	vpaddq	%xmm2, %xmm0, %xmm0
	vpaddq	%xmm1, %xmm0, %xmm0
	vextracti64x2	$0x1, %ymm1, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	addq	%rcx, %rdx
	cmpw	$811, %si
	sete	%r14b
	xorl	%ecx, %ecx
	cmpw	$924, %si
	sete	%cl
	addq	%rcx, %r14
	addq	%rdx, %r14
	vzeroupper
.L955:
	shrq	%rbx
	addq	%r13, %r14
	cmpq	%rax, %rbx
	popq	%rbx
	popq	%r12
	cmovnb	%r13, %r14
	popq	%r13
	movq	%r14, (%r8)
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4
	.p2align 3
.L977:
	.cfi_restore_state
	movq	%r11, %r9
	notq	%r9
	andl	$1, %r9d
	subq	%r9, %rdx
	jmp	.L953
	.p2align 4
	.p2align 3
.L957:
	testl	%ecx, %ecx
	je	.L981
	cmpq	%rax, %rbx
	jne	.L961
	.p2align 4
	.p2align 3
.L962:
	leaq	0(%r13,%rdx), %r14
	jmp	.L960
	.p2align 4
	.p2align 3
.L979:
	testl	%ecx, %ecx
	jne	.L962
	jmp	.L960
.L980:
	movl	$10, %r14d
	jmp	.L955
	.p2align 4
	.p2align 3
.L981:
	cmpq	%rax, %rbx
	je	.L960
	movl	$10, %edx
	jmp	.L961
	.cfi_endproc
.LFE10549:
	.size	_Z21f64_bin_to_dec_xjb_v2miPmPi, .-_Z21f64_bin_to_dec_xjb_v2miPmPi
	.p2align 4
	.globl	yy_double_to_string
	.type	yy_double_to_string, @function
yy_double_to_string:
.LFB10551:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vmovq	%xmm0, %r8
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rcx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	btrq	$63, %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movb	$45, (%rdi)
	vmovq	%rcx, %xmm3
	vcvttsd2usi	%xmm3, %r9
	vcvtusi2sdq	%r9, %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%r8, %rax
	shrq	$63, %rax
	addq	%rax, %rdi
	cmpq	%rsi, %rcx
	jne	.L983
	movabsq	$9999999999999999, %rax
	cmpq	%r9, %rax
	jb	.L983
	cmpq	$99999999, %r9
	jbe	.L1068
	movabsq	$-6067343680855748867, %rax
	movabsq	$18446744073710, %rsi
	movabsq	$18446744073710000, %r11
	movl	$1000, %r8d
	mulq	%r9
	leaq	_ZL9digit1000(%rip), %rbp
	leaq	_ZL11digit_table(%rip), %r14
	shrq	$26, %rdx
	mulx	%rsi, %rcx, %rbx
	imull	$100000000, %edx, %r15d
	movzwl	(%r14,%rbx,2), %r10d
	movq	%rcx, %r12
	imulq	%r11, %rdx
	xorl	%ebx, %ebx
	salq	$5, %r12
	movq	%rdx, %rax
	movq	%rbx, %r13
	mulq	%r8
	shldq	$5, %rcx, %r13
	movl	0(%rbp,%rdx,4), %eax
	salq	$40, %rax
	orq	%rax, %r10
	subq	%rcx, %r12
	sbbq	%rbx, %r13
	shldq	$2, %r12, %r13
	salq	$2, %r12
	addq	%rcx, %r12
	movabsq	$-67818912035696881, %rcx
	adcq	%rbx, %r13
	subl	%r15d, %r9d
	shldq	$3, %r12, %r13
	movl	0(%rbp,%r13,4), %eax
	movq	%r9, %rdx
	imulq	%r9, %r11
	imulq	%rsi, %rdx
	salq	$16, %rax
	orq	%rax, %r10
	andq	%r10, %rcx
	lzcntq	%rcx, %rcx
	sarl	$3, %ecx
	leal	0(,%rcx,8), %eax
	movslq	%ecx, %rcx
	shrx	%rax, %r10, %r10
	movq	%rdx, %rax
	movq	%r10, (%rdi)
	subq	%rcx, %rdi
	mulq	%r8
	movq	%r11, %rax
	leaq	8(%rdi), %rcx
	movl	0(%rbp,%rdx,4), %edi
	mulq	%r8
	movl	0(%rbp,%rdx,4), %eax
	movq	%r9, %rdx
	salq	$16, %rdi
	salq	$40, %rax
	orq	%rax, %rdi
	mulx	%rsi, %rax, %rdx
	movzwl	(%r14,%rdx,2), %eax
	orq	%rax, %rdi
	leaq	8(%rcx), %rax
	movq	%rdi, (%rcx)
.L985:
	movw	$12334, (%rax)
	addq	$2, %rax
	jmp	.L982
	.p2align 4
	.p2align 3
.L983:
	shrq	$52, %rcx
	movabsq	$4503599627370495, %rdx
	andq	%r8, %rdx
	cmpq	$2047, %rcx
	je	.L1069
	movl	$48, %eax
	vpbroadcastb	%eax, %xmm0
	vmovdqu8	%xmm0, (%rdi)
	testq	%rcx, %rcx
	je	.L989
	movabsq	$4503599627370496, %r9
	movq	%rdx, %rax
	subl	$1075, %ecx
	imull	$315653, %ecx, %esi
	orq	%r9, %rax
	testq	%rdx, %rdx
	je	.L990
	sarl	$20, %esi
	imull	$-217707, %esi, %edx
	movabsq	$-6917529027641081856, %r15
	sarl	$16, %edx
	leal	1(%rcx,%rdx), %r10d
	movl	$343, %edx
	leaq	_ZL15pow10_sig_table(%rip), %rcx
	subl	%esi, %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx,8), %rdx
	shlx	%r10, %rax, %rcx
	movq	%rcx, %rax
	movq	(%rdx), %r12
	mulq	8(%rdx)
	movq	%rdx, %r9
	movq	%rcx, %rdx
	movabsq	$1844674407370955162, %rcx
	mulx	%r12, %rax, %rdx
	addq	%r9, %rax
	adcq	$0, %rdx
	movq	%rax, %r9
	movq	%rax, %r13
	movq	%rax, (%rsp)
	mulx	%rcx, %rcx, %rbx
	leaq	(%rbx,%rbx,4), %r14
	movq	%rdx, %rcx
	movq	%rdx, %r11
	addq	%r14, %r14
	movq	%rdx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	subq	%r14, %rcx
	movq	%r14, %rbx
	shrdq	$4, %rcx, %r9
	movl	$5, %ecx
	subl	%r10d, %ecx
	movq	%r15, %r10
	shrx	%rcx, %r12, %rcx
	leaq	(%r9,%rcx), %r12
	subq	%r12, %r10
	cmpq	%rcx, %r9
	je	.L991
	movabsq	$-9223372036854775808, %rbp
	cmpq	%rbp, %rax
	je	.L991
	cmpq	$1, %r10
	jbe	.L991
	movq	(%rsp), %rbp
	cmpq	%rcx, %r9
	leaq	10(%r14), %rbx
	setb	%cl
	cmpq	%r12, %r15
	movzbl	%cl, %ecx
	adcl	$0, %ecx
	cmpq	%r12, %r15
	cmovnb	%r14, %rbx
	shrq	$63, %rbp
	addq	%rdx, %rbp
	testl	%ecx, %ecx
	movq	%rbp, 48(%rsp)
	cmovne	%rbx, %rbp
.L994:
	movabsq	$9999999999999999, %rax
	cmpq	%rbp, %rax
	sbbl	%r8d, %r8d
	notl	%r8d
	addl	$16, %r8d
	cmpq	%rbp, %rax
	movabsq	$-6067343680855748867, %rax
	sbbl	%ebx, %ebx
	mulq	%rbp
	notl	%ebx
	leal	17(%rsi,%rbx), %ecx
	leal	23(%rsi,%rbx), %ebx
	shrq	$26, %rdx
	imulq	$100000000, %rdx, %rax
	movq	%rdx, (%rsp)
	subq	%rax, %rbp
	movabsq	$18446744073710, %rax
	mulx	%rax, %r10, %r11
	movq	%r11, %r9
	cmpl	$14, %ebx
	ja	.L1003
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setg	%al
	xorl	%esi, %esi
	movl	%eax, 44(%rsp)
	movl	$2, %eax
	subl	%ecx, %eax
	testl	%ecx, %ecx
	cmovg	%esi, %eax
	movl	%eax, 48(%rsp)
	movslq	48(%rsp), %rsi
	leaq	_ZL9digit1000(%rip), %r13
	addq	%rdi, %rsi
	cmpq	$99, %r11
	jbe	.L1005
	movl	0(%r13,%r11,4), %eax
	movl	%eax, %r14d
	shrl	$8, %r14d
.L1006:
	movl	%eax, (%rsi)
	movq	%rbp, %rdx
	movabsq	$18446744073710, %r8
	xorl	%eax, %eax
	cmpq	$99, %r9
	mulx	%r8, %r8, %r9
	movq	(%rsp), %rdx
	movabsq	$18446744073710000, %r15
	seta	%al
	leaq	(%rsi,%rax), %rbx
	movl	$1000, %eax
	xorl	%r11d, %r11d
	imulq	%r15, %rdx
	imulq	%rbp, %r15
	mulq	%rdx
	leaq	_ZL11digit_table(%rip), %rax
	movl	0(%r13,%rdx,4), %r12d
	salq	$40, %r12
	orq	%r14, %r12
	movzwl	(%rax,%r9,2), %r14d
	movl	$1000, %eax
	mulq	%r15
	vmovq	%r12, %xmm2
	movl	0(%r13,%rdx,4), %eax
	movq	%r11, %rdx
	shldq	$5, %r10, %rdx
	salq	$40, %rax
	orq	%rax, %r14
	movq	%r10, %rax
	salq	$5, %rax
	vpinsrq	$1, %r14, %xmm2, %xmm0
	subq	%r10, %rax
	sbbq	%r11, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%r10, %rax
	adcq	%r11, %rdx
	xorl	%r9d, %r9d
	shldq	$3, %rax, %rdx
	movq	%r8, %rax
	movq	%rdx, %r10
	movq	%r9, %rdx
	salq	$5, %rax
	shldq	$5, %r8, %rdx
	subq	%r8, %rax
	vmovd	0(%r13,%r10,4), %xmm1
	sbbq	%r9, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%r8, %rax
	movl	$8, %r8d
	adcq	%r9, %rdx
	movabsq	$1085102592571150095, %r9
	shldq	$3, %rax, %rdx
	vpinsrd	$1, 0(%r13,%rdx,4), %xmm1, %xmm1
	vpmovzxdq	%xmm1, %xmm1
	vpsllq	$16, %xmm1, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rdx
	vpextrq	$1, %xmm0, %rax
	andq	%r9, %rax
	vmovdqu	%xmm0, (%rbx)
	andq	%r9, %rdx
	je	.L1007
	lzcntq	%rdx, %r8
	shrq	$3, %r8
.L1007:
	lzcntq	%rax, %rdx
	addq	$8, %r8
	shrq	$3, %rdx
	testq	%rax, %rax
	movslq	44(%rsp), %rax
	cmove	%r8, %rdx
	movslq	%ecx, %r8
	leaq	(%rsi,%r8), %r9
	testl	%eax, %eax
	cmovne	%r9, %rsi
	testl	%ecx, %ecx
	vmovdqu	(%rsi), %xmm4
	vmovdqu	%xmm4, (%rsi,%rax)
	movl	$1, %esi
	cmovle	%esi, %ecx
	subq	%rdx, %rbx
	leaq	2(%rdi,%r8), %rdx
	leaq	16(%rbx,%rax), %rax
	movslq	%ecx, %rcx
	cmpq	%rdx, %rax
	movb	$46, (%rdi,%rcx)
	cmovb	%rdx, %rax
.L982:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L1070
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1005:
	.cfi_restore_state
	movl	$8, %eax
	shrx	%eax, 0(%r13,%r11,4), %eax
	movl	%eax, %r14d
	jmp	.L1006
	.p2align 4
	.p2align 3
.L1068:
	movq	%r9, %rdx
	movabsq	$18446744073710, %r10
	leaq	_ZL11digit_table(%rip), %rax
	leaq	_ZL9digit1000(%rip), %rsi
	mulx	%r10, %r10, %r11
	movabsq	$18446744073710000, %rdx
	movzwl	(%rax,%r11,2), %ecx
	movl	$1000, %eax
	imulq	%r9, %rdx
	xorl	%r11d, %r11d
	mulq	%rdx
	movl	(%rsi,%rdx,4), %eax
	movq	%r11, %rdx
	shldq	$5, %r10, %rdx
	salq	$40, %rax
	orq	%rax, %rcx
	movq	%r10, %rax
	salq	$5, %rax
	subq	%r10, %rax
	sbbq	%r11, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%r10, %rax
	adcq	%r11, %rdx
	shldq	$3, %rax, %rdx
	movl	(%rsi,%rdx,4), %eax
	salq	$16, %rax
	orq	%rax, %rcx
	movabsq	$-67818912035696881, %rax
	andq	%rcx, %rax
	movq	%rcx, %rdx
	lzcntq	%rax, %rax
	sarl	$3, %eax
	leal	0(,%rax,8), %ecx
	cltq
	shrx	%rcx, %rdx, %rdx
	movq	%rdx, (%rdi)
	subq	%rax, %rdi
	leaq	8(%rdi), %rax
	jmp	.L985
	.p2align 4
	.p2align 3
.L990:
	subl	$131237, %esi
	leaq	_ZL15pow10_sig_table(%rip), %rdx
	movl	$5, %r12d
	sarl	$20, %esi
	imull	$-217707, %esi, %eax
	sarl	$16, %eax
	leal	1(%rcx,%rax), %ecx
	movl	$343, %eax
	subl	%esi, %eax
	shlx	%rcx, %r9, %r9
	addl	%eax, %eax
	cltq
	leaq	(%rdx,%rax,8), %rdx
	movq	%r9, %rax
	movq	(%rdx), %r10
	mulq	8(%rdx)
	movq	%rdx, %r11
	movq	%r9, %rdx
	mulx	%r10, %rax, %rdx
	addq	%r11, %rax
	movl	$1, %r11d
	adcq	$0, %rdx
	subl	%ecx, %r12d
	movq	%rax, %r9
	shrx	%r12, %r10, %r12
	movq	%r12, %rcx
	shrq	$4, %r9
	shrq	%rcx
	cmpq	%r9, %rcx
	jnb	.L1071
.L995:
	movabsq	$1844674407370955162, %rax
	movq	%rdx, %r15
	movq	%rdx, 16(%rsp)
	movabsq	$-6917529027641081856, %r10
	mulq	%rdx
	movq	%r15, %rax
	leaq	(%rdx,%rdx,4), %rbx
	addq	%rbx, %rbx
	subq	%rbx, %rax
	salq	$60, %rax
	orq	%r9, %rax
	addq	%rax, %r12
	subq	%r12, %r10
	cmpq	%rax, %rcx
	setnb	%al
	jmp	.L997
	.p2align 4
	.p2align 3
.L991:
	movq	(%rsp), %rax
	movabsq	$-9223372036854775808, %rdx
	andl	$1, %r11d
	shrq	$63, %rax
	cmpq	%rdx, %r13
	movq	%r8, %rdx
	cmovne	%eax, %r11d
	notq	%rdx
	cmpq	%rcx, %r9
	setb	%al
	andl	$1, %edx
	cmpq	%rcx, %r9
	movzbl	%r11b, %r11d
	cmove	%edx, %eax
.L997:
	movq	16(%rsp), %rbp
	movabsq	$-6917529027641081856, %rdx
	cmpq	%r12, %rdx
	setb	%dl
	addq	%r11, %rbp
	cmpq	$1, %r10
	jbe	.L1072
.L998:
	testb	%al, %al
	cmovne	%rbx, %rbp
	addq	$10, %rbx
	testb	%dl, %dl
	cmovne	%rbx, %rbp
	jmp	.L994
	.p2align 4
	.p2align 3
.L1069:
	testq	%rdx, %rdx
	jne	.L988
	movabsq	$8751735898823355977, %rax
	movq	%rax, (%rdi)
	leaq	8(%rdi), %rax
	jmp	.L982
	.p2align 4
	.p2align 3
.L989:
	leaq	0(,%rdx,8), %rsi
	movabsq	$7784369436827535057, %rax
	movabsq	$-9223372036854775808, %rbp
	mulq	%rsi
	movabsq	$-7054365918152680535, %rax
	movq	%rdx, %rcx
	mulq	%rsi
	addq	%rcx, %rax
	movabsq	$1844674407370955162, %rcx
	adcq	$0, %rdx
	mulx	%rcx, %rcx, %rbx
	leaq	(%rbx,%rbx,4), %r9
	movq	%rdx, %r11
	movq	%rax, %rcx
	addq	%r9, %r9
	movabsq	$2848094538889217770, %rbx
	movq	%rdx, %r10
	subq	%r9, %r11
	shrdq	$4, %r11, %rcx
	leaq	(%rcx,%rbx), %r11
	cmpq	%rbp, %rax
	je	.L1015
	shrq	$63, %rax
	movl	%eax, %r12d
	cmpq	%rbx, %rcx
	je	.L1016
	movabsq	$-6917529027641081856, %rbp
	movabsq	$2848094538889217769, %rdx
	movq	%rbp, %rbx
	subq	%r11, %rbx
	cmpq	%rcx, %rdx
	setnb	%dl
	movl	%edx, %r13d
	cmpq	$1, %rbx
	jbe	.L1017
	cmpq	%r11, %rbp
	movzbl	%dl, %edx
	leaq	10(%r9), %rcx
	leaq	(%rax,%r10), %rsi
	adcl	$0, %edx
	cmpq	%r11, %rbp
	movq	%rsi, 48(%rsp)
	cmovnb	%r9, %rcx
	testl	%edx, %edx
	cmovne	%rcx, %rsi
.L1020:
	movabsq	$999999999999999, %rax
	leaq	1(%rdi), %rcx
	cmpq	%rsi, %rax
	jb	.L1073
	cmpq	$99999999, %rsi
	jbe	.L1028
	movabsq	$-6067343680855748867, %rax
	movabsq	$18446744073710, %rbx
	movabsq	$18446744073710000, %r12
	movl	$1000, %ebp
	mulq	%rsi
	leaq	_ZL11digit_table(%rip), %r14
	leaq	_ZL9digit1000(%rip), %r13
	shrq	$26, %rdx
	mulx	%rbx, %r10, %r11
	imull	$100000000, %edx, %r15d
	movzwl	(%r14,%r11,2), %r8d
	xorl	%r11d, %r11d
	imulq	%r12, %rdx
	movq	%r11, %r9
	shldq	$5, %r10, %r9
	movq	%rdx, %rax
	mulq	%rbp
	movl	0(%r13,%rdx,4), %eax
	movq	%r8, %rdx
	movq	%r10, %r8
	salq	$5, %r8
	salq	$40, %rax
	orq	%rax, %rdx
	subq	%r10, %r8
	sbbq	%r11, %r9
	shldq	$2, %r8, %r9
	salq	$2, %r8
	addq	%r10, %r8
	adcq	%r11, %r9
	subl	%r15d, %esi
	shldq	$3, %r8, %r9
	movl	0(%r13,%r9,4), %eax
	movabsq	$-67818912035696881, %r8
	imulq	%rsi, %r12
	salq	$16, %rax
	orq	%rax, %rdx
	andq	%rdx, %r8
	lzcntq	%r8, %r8
	sarl	$3, %r8d
	leal	0(,%r8,8), %eax
	movslq	%r8d, %r8
	shrx	%rax, %rdx, %rdx
	movq	%rdx, 1(%rdi)
	movq	%rsi, %rdx
	subq	%r8, %rcx
	imulq	%rbx, %rdx
	movq	%rdx, %rax
	mulq	%rbp
	movq	%r12, %rax
	movl	0(%r13,%rdx,4), %r8d
	mulq	%rbp
	movl	0(%r13,%rdx,4), %eax
	movq	%rsi, %rdx
	salq	$16, %r8
	salq	$40, %rax
	orq	%rax, %r8
	mulx	%rbx, %rax, %rdx
	movzwl	(%r14,%rdx,2), %eax
	orq	%rax, %r8
	leaq	16(%rcx), %rax
	movq	%r8, 8(%rcx)
.L1027:
	movzbl	1(%rdi), %edx
	movq	%rax, %rcx
	movb	$46, 1(%rdi)
	subq	%rdi, %rcx
	subl	$2, %ecx
	movb	%dl, (%rdi)
	xorl	%edx, %edx
	cmpb	$48, -1(%rax)
	sete	%dl
	subq	%rdx, %rax
	xorl	%edx, %edx
	cmpb	$48, -1(%rax)
	sete	%dl
	subq	%rdx, %rax
	movzbl	-1(%rax), %edx
	cmpb	$48, %dl
	jne	.L1029
	.p2align 4
	.p2align 3
.L1030:
	movzbl	-2(%rax), %edx
	decq	%rax
	cmpb	$48, %dl
	je	.L1030
.L1029:
	cmpb	$46, %dl
	movslq	%ecx, %rcx
	sete	%dl
	movzbl	%dl, %edx
	subq	%rdx, %rax
	leaq	_ZL10exp_result(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	%rdx, (%rax)
	shrq	$40, %rdx
	addq	%rdx, %rax
	jmp	.L982
	.p2align 4
	.p2align 3
.L1003:
	leaq	_ZL9digit1000(%rip), %r13
	movq	%rbp, %rdx
	movabsq	$18446744073710000, %r15
	movl	$1000, %r14d
	movl	0(%r13,%r11,4), %ecx
	movl	%ecx, %r12d
	shrl	$8, %r12d
	cmpq	$99, %r11
	cmovbe	%r12d, %ecx
	movl	%ecx, 1(%rdi)
	seta	%cl
	imulq	%r15, %rbp
	xorl	%r11d, %r11d
	movzbl	%cl, %ecx
	leaq	1(%rdi,%rcx), %r9
	mulx	%rax, %rcx, %rbx
	movq	(%rsp), %rdx
	imulq	%r15, %rdx
	movq	%rdx, %rax
	mulq	%r14
	movl	0(%r13,%rdx,4), %eax
	salq	$40, %rax
	orq	%r12, %rax
	vmovq	%rax, %xmm0
	leaq	_ZL11digit_table(%rip), %rax
	movzwl	(%rax,%rbx,2), %r12d
	movq	%rbp, %rax
	mulq	%r14
	movl	0(%r13,%rdx,4), %eax
	movq	%r11, %rdx
	movq	%r12, %r14
	shldq	$5, %r10, %rdx
	salq	$40, %rax
	orq	%rax, %r14
	movq	%r10, %rax
	salq	$5, %rax
	vpinsrq	$1, %r14, %xmm0, %xmm0
	subq	%r10, %rax
	sbbq	%r11, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%r10, %rax
	adcq	%r11, %rdx
	xorl	%ebx, %ebx
	shldq	$3, %rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, %r10
	movq	%rbx, %rdx
	salq	$5, %rax
	shldq	$5, %rcx, %rdx
	subq	%rcx, %rax
	vmovd	0(%r13,%r10,4), %xmm1
	movabsq	$1085102592571150095, %r10
	sbbq	%rbx, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%rcx, %rax
	movl	$8, %ecx
	adcq	%rbx, %rdx
	shldq	$3, %rax, %rdx
	vpinsrd	$1, 0(%r13,%rdx,4), %xmm1, %xmm1
	vpmovzxdq	%xmm1, %xmm1
	vpsllq	$16, %xmm1, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rdx
	vpextrq	$1, %xmm0, %rax
	andq	%r10, %rax
	vmovdqu	%xmm0, (%r9)
	andq	%r10, %rdx
	je	.L1012
	lzcntq	%rdx, %rcx
	shrq	$3, %rcx
.L1012:
	lzcntq	%rax, %rdx
	shrq	$3, %rdx
	addq	$8, %rcx
	testq	%rax, %rax
	cmove	%rcx, %rdx
	leaq	_ZL10exp_result(%rip), %rcx
	subq	%rdx, %r9
	leaq	2(%rdi), %rdx
	leaq	16(%r9), %rax
	cmpq	%rdx, %rax
	sete	%dl
	movzbl	%dl, %edx
	subq	%rdx, %rax
	movzbl	1(%rdi), %edx
	movb	$46, 1(%rdi)
	movb	%dl, (%rdi)
	leal	324(%rsi,%r8), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rax)
	shrq	$40, %rdx
	addq	%rdx, %rax
	jmp	.L982
	.p2align 4
	.p2align 3
.L988:
	leaq	3(%rdi), %rax
	movl	$5136718, (%rdi)
	jmp	.L982
	.p2align 4
	.p2align 3
.L1071:
	movabsq	$-9223372036854775808, %r10
	xorl	%r11d, %r11d
	cmpq	%rax, %r10
	setb	%r11b
	jmp	.L995
.L1016:
	movzbl	%r12b, %eax
	movq	%r9, %rsi
	addq	%r10, %rax
	andl	$1, %r8d
	cmovne	%rax, %rsi
	jmp	.L1020
	.p2align 4
	.p2align 3
.L1028:
	movq	%rsi, %rdx
	leaq	_ZL11digit_table(%rip), %rax
	movabsq	$18446744073710, %r8
	leaq	_ZL9digit1000(%rip), %r10
	mulx	%r8, %r8, %r9
	movzwl	(%rax,%r9,2), %r11d
	movabsq	$18446744073710000, %rax
	xorl	%r9d, %r9d
	imulq	%rax, %rsi
	movl	$1000, %eax
	mulq	%rsi
	movq	%r11, %rsi
	movl	(%r10,%rdx,4), %eax
	movq	%r9, %rdx
	shldq	$5, %r8, %rdx
	salq	$40, %rax
	orq	%rax, %rsi
	movq	%r8, %rax
	salq	$5, %rax
	subq	%r8, %rax
	sbbq	%r9, %rdx
	shldq	$2, %rax, %rdx
	salq	$2, %rax
	addq	%r8, %rax
	adcq	%r9, %rdx
	shldq	$3, %rax, %rdx
	movl	(%r10,%rdx,4), %eax
	salq	$16, %rax
	orq	%rax, %rsi
	movabsq	$-67818912035696881, %rax
	andq	%rsi, %rax
	lzcntq	%rax, %rax
	sarl	$3, %eax
	leal	0(,%rax,8), %edx
	cltq
	subq	%rax, %rcx
	shrx	%rdx, %rsi, %rsi
	movq	%rsi, 1(%rdi)
	leaq	8(%rcx), %rax
	jmp	.L1027
	.p2align 4
	.p2align 3
.L1072:
	movl	%esi, 28(%rsp)
	cmpq	%r10, 28(%rsp)
	jnb	.L999
	testb	%al, %al
	cmovne	%rbx, %rbp
	jmp	.L994
	.p2align 4
	.p2align 3
.L1073:
	movabsq	$-6067343680855748867, %rax
	movabsq	$18446744073710, %r11
	movl	$1000, %ebx
	leaq	_ZL9digit1000(%rip), %rbp
	mulq	%rsi
	movabsq	$4153837486827862103, %rax
	movabsq	$18446744073710000, %r10
	movq	%rdx, %r8
	mulq	%rsi
	shrq	$26, %r8
	shrq	$51, %rdx
	imull	$100000000, %edx, %eax
	leal	48(%rdx), %r9d
	imull	$100000000, %r8d, %r12d
	cmpq	$1, %rdx
	movb	%r9b, 1(%rdi)
	sbbq	$-1, %rcx
	subl	%eax, %r8d
	movq	%r8, %rdx
	subl	%r12d, %esi
	imulq	%r11, %rdx
	movq	%rdx, %rax
	mulq	%rbx
	movl	0(%rbp,%rdx,4), %eax
	movq	%r8, %rdx
	imulq	%r10, %rdx
	imulq	%rsi, %r10
	salq	$16, %rax
	movq	%rax, %r9
	movq	%rdx, %rax
	mulq	%rbx
	movq	%r9, %rax
	movl	0(%rbp,%rdx,4), %edx
	salq	$40, %rdx
	orq	%rdx, %rax
	movq	%r8, %rdx
	mulx	%r11, %r8, %r9
	movq	%r9, %rdx
	leaq	_ZL11digit_table(%rip), %r9
	movzwl	(%r9,%rdx,2), %edx
	orq	%rdx, %rax
	movq	%rsi, %rdx
	imulq	%r11, %rdx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	mulq	%rbx
	movq	%r10, %rax
	movl	0(%rbp,%rdx,4), %r8d
	mulq	%rbx
	movl	0(%rbp,%rdx,4), %eax
	movq	%rsi, %rdx
	salq	$16, %r8
	salq	$40, %rax
	orq	%rax, %r8
	mulx	%r11, %rax, %rdx
	movzwl	(%r9,%rdx,2), %eax
	orq	%rax, %r8
	leaq	16(%rcx), %rax
	movq	%r8, 8(%rcx)
	jmp	.L1027
.L999:
	movq	%r8, %rdx
	notq	%rdx
	andl	$1, %edx
	jmp	.L998
.L1015:
	movl	%edx, %r12d
	movabsq	$2848094538889217769, %rax
	andl	$1, %r12d
	cmpq	%rcx, %rax
	setnb	%r13b
	cmpq	%rbx, %rcx
	je	.L1016
	movabsq	$-6917529027641081856, %rbx
	cmpq	%r11, %rbx
	setb	%dl
	subq	%r11, %rbx
	cmpq	$1, %rbx
	jbe	.L1017
.L1023:
	movzbl	%r12b, %eax
	addq	%r10, %rax
	testb	%r13b, %r13b
	cmovne	%r9, %rax
	testb	%dl, %dl
	movq	%rax, %rsi
	leaq	10(%r9), %rax
	cmovne	%rax, %rsi
	jmp	.L1020
.L1017:
	movl	$-324, 28(%rsp)
	cmpq	%rbx, 28(%rsp)
	jnb	.L1024
	movq	%r9, %rsi
	testb	%r13b, %r13b
	jne	.L1020
	movzbl	%r12b, %r12d
	leaq	(%r12,%r10), %rsi
	jmp	.L1020
.L1024:
	movq	%r8, %rdx
	notq	%rdx
	andl	$1, %edx
	jmp	.L1023
.L1070:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10551:
	.size	yy_double_to_string, .-yy_double_to_string
	.globl	__udivti3
	.globl	__divti3
	.p2align 4
	.globl	_Z15ldouble_convertRyRi
	.type	_Z15ldouble_convertRyRi, @function
_Z15ldouble_convertRyRi:
.LFB10558:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movl	(%rsi), %ebx
	movq	%rsi, %rbp
	movl	%ebx, %eax
	andl	$3, %eax
	shlx	%rax, (%rdi), %rax
	sarl	$2, %ebx
	js	.L1075
	movslq	%ebx, %rdx
	leaq	_ZZL15positive_diy_fpiE17positive_base_lut(%rip), %rcx
	leaq	_ZZL15positive_diy_fpiE18positive_index_lut(%rip), %rsi
	movq	(%rcx,%rdx,8), %rcx
	movsbl	(%rsi,%rdx), %esi
.L1076:
	subl	%esi, %ebx
	movabsq	$54210108624274, %rsi
	mulq	%rcx
	cmpq	%rdx, %rsi
	jb	.L1077
	movabsq	$50000000000000000, %rsi
	xorl	%edi, %edi
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	addl	$17, %ebx
	movq	%rdx, %rsi
	movabsq	$100000000000000000, %rdx
	call	__udivti3@PLT
	movq	%rax, (%r12)
	movl	%ebx, 0(%rbp)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1077:
	.cfi_restore_state
	movabsq	$542101086242751, %rsi
	cmpq	%rdx, %rsi
	jb	.L1079
	movabsq	$500000000000000000, %rsi
	xorl	%edi, %edi
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	addl	$18, %ebx
	movq	%rdx, %rsi
	movabsq	$1000000000000000000, %rdx
	call	__udivti3@PLT
	movq	%rax, (%r12)
	movl	%ebx, 0(%rbp)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1079:
	.cfi_restore_state
	movabsq	$5000000000000000000, %rsi
	xorl	%edi, %edi
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	addl	$19, %ebx
	movq	%rdx, %rsi
	movabsq	$-8446744073709551616, %rdx
	call	__udivti3@PLT
	movq	%rax, (%r12)
	movl	%ebx, 0(%rbp)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1075:
	.cfi_restore_state
	movl	%ebx, %edx
	leaq	_ZZL15negative_diy_fpiE17negative_base_lut(%rip), %rcx
	leaq	_ZZL15negative_diy_fpiE18negative_index_lut(%rip), %rsi
	negl	%edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movsbl	(%rsi,%rdx), %esi
	jmp	.L1076
	.cfi_endproc
.LFE10558:
	.size	_Z15ldouble_convertRyRi, .-_Z15ldouble_convertRyRi
	.p2align 4
	.globl	_Z18ldouble_f64_to_decdPyPi
	.type	_Z18ldouble_f64_to_decdPyPi, @function
_Z18ldouble_f64_to_decdPyPi:
.LFB10559:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	vmovq	%xmm0, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movabsq	$4503599627370495, %rsi
	movq	%rdi, %rbp
	andq	%rax, %rsi
	shrq	$52, %rax
	andl	$2047, %eax
	je	.L1082
	subl	$1075, %eax
	btsq	$52, %rsi
	movl	%eax, %edx
	andl	$3, %edx
	sarl	$2, %eax
	shlx	%rdx, %rsi, %rsi
	js	.L1083
	movslq	%eax, %rdx
	leaq	_ZZL15positive_diy_fpiE17positive_base_lut(%rip), %rcx
	movq	(%rcx,%rdx,8), %rdi
	leaq	_ZZL15positive_diy_fpiE18positive_index_lut(%rip), %rcx
	movsbl	(%rcx,%rdx), %ecx
.L1084:
	subl	%ecx, %eax
	movq	%rsi, %rdx
	movl	%eax, %r12d
	movabsq	$54210108624274, %rax
	mulx	%rdi, %rsi, %rdi
	cmpq	%rdi, %rax
	jnb	.L1097
	movabsq	$542101086242751, %rax
	cmpq	%rdi, %rax
	jb	.L1087
	movabsq	$500000000000000000, %rax
	xorl	%edx, %edx
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	movabsq	$1000000000000000000, %rdx
	call	__udivti3@PLT
	leal	18(%r12), %edx
.L1086:
	movq	%rax, 0(%rbp)
	movl	%edx, (%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1097:
	.cfi_restore_state
	movabsq	$50000000000000000, %rax
	xorl	%edx, %edx
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	movq	%rdx, %rsi
	movabsq	$100000000000000000, %rdx
	call	__udivti3@PLT
	leal	17(%r12), %edx
	movq	%rax, 0(%rbp)
	movl	%edx, (%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1083:
	.cfi_restore_state
	movl	%eax, %edx
	leaq	_ZZL15negative_diy_fpiE17negative_base_lut(%rip), %rcx
	negl	%edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rdi
	leaq	_ZZL15negative_diy_fpiE18negative_index_lut(%rip), %rcx
	movsbl	(%rcx,%rdx), %ecx
	jmp	.L1084
	.p2align 4
	.p2align 3
.L1087:
	movabsq	$5000000000000000000, %rax
	xorl	%edx, %edx
	addq	%rax, %rsi
	adcq	%rdx, %rdi
	movq	%rsi, %rax
	movabsq	$-8446744073709551616, %rdx
	xorl	%ecx, %ecx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	__udivti3@PLT
	leal	19(%r12), %edx
	movq	%rax, 0(%rbp)
	movl	%edx, (%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1082:
	.cfi_restore_state
	lzcntq	%rsi, %rax
	movl	$-1074, %edx
	subl	$11, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	subl	%eax, %edx
	shlx	%rax, %rsi, %rsi
	leaq	_ZZL15negative_diy_fpiE18negative_index_lut(%rip), %r8
	cltq
	movl	%edx, %ecx
	andl	$3, %edx
	vmovsd	.LC53(%rip), %xmm2
	sarl	$2, %ecx
	shlx	%rdx, %rsi, %rsi
	vcvtusi2sdq	%rsi, %xmm1, %xmm0
	movl	%ecx, %edi
	leaq	_ZZL15negative_diy_fpiE17negative_base_lut(%rip), %rsi
	negl	%edi
	movslq	%edi, %rdx
	vcvtusi2sdq	(%rsi,%rdx,8), %xmm1, %xmm1
	leaq	_ZL10digits_lut(%rip), %rsi
	movsbl	(%r8,%rdx), %edx
	vmulsd	%xmm1, %xmm0, %xmm0
	movzbl	(%rsi,%rax), %edi
	leaq	_ZZL29ldouble_convert_no_normalizedRyRiiE8add_luts(%rip), %rax
	subl	%edx, %ecx
	vaddsd	(%rax,%rdi,8), %xmm0, %xmm1
	vcomisd	%xmm1, %xmm2
	jbe	.L1094
	leaq	_ZZL29ldouble_convert_no_normalizedRyRiiE8mul_luts(%rip), %rax
	leal	17(%rdi,%rcx), %edx
	vmulsd	(%rax,%rdi,8), %xmm1, %xmm1
	vcvttsd2usi	%xmm1, %rax
	jmp	.L1086
	.p2align 4
	.p2align 3
.L1094:
	leal	1(%rdi), %edx
	vmovsd	.LC54(%rip), %xmm2
	movslq	%edx, %rdx
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm1
	vcomisd	%xmm1, %xmm2
	jbe	.L1095
	leaq	_ZZL29ldouble_convert_no_normalizedRyRiiE8mul_luts(%rip), %rax
	vmulsd	(%rax,%rdx,8), %xmm1, %xmm1
	leal	18(%rdi,%rcx), %edx
	vcvttsd2usi	%xmm1, %rax
	jmp	.L1086
	.p2align 4
	.p2align 3
.L1095:
	leal	2(%rdi), %edx
	movslq	%edx, %rdx
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm0
	leaq	_ZZL29ldouble_convert_no_normalizedRyRiiE8mul_luts(%rip), %rax
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm0
	leal	19(%rdi,%rcx), %edx
	vcvttsd2usi	%xmm0, %rax
	jmp	.L1086
	.cfi_endproc
.LFE10559:
	.size	_Z18ldouble_f64_to_decdPyPi, .-_Z18ldouble_f64_to_decdPyPi
	.p2align 4
	.globl	_Z5getnsv
	.type	_Z5getnsv, @function
_Z5getnsv:
.LFB10582:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10582:
	.size	_Z5getnsv, .-_Z5getnsv
	.p2align 4
	.globl	_Z11free_doublev
	.type	_Z11free_doublev, @function
_Z11free_doublev:
.LFB10607:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	data(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1101
	call	free@PLT
.L1101:
	movq	dec(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1102
	call	free@PLT
.L1102:
	movq	e10(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1103
	call	free@PLT
.L1103:
	movq	$0, data(%rip)
	movq	$0, dec(%rip)
	movq	$0, e10(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10607:
	.size	_Z11free_doublev, .-_Z11free_doublev
	.p2align 4
	.globl	_Z10free_floatv
	.type	_Z10free_floatv, @function
_Z10free_floatv:
.LFB10608:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	data_float(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1115
	call	free@PLT
.L1115:
	movq	dec_float(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1116
	call	free@PLT
.L1116:
	movq	e10_float(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1117
	call	free@PLT
.L1117:
	movq	$0, data_float(%rip)
	movq	$0, dec_float(%rip)
	movq	$0, e10_float(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10608:
	.size	_Z10free_floatv, .-_Z10free_floatv
	.section	.rodata.str1.1
.LC55:
	.string	"%d. bench %14s : "
	.section	.rodata.str1.8
	.align 8
.LC58:
	.string	"cost %4.4lf ms,every double cost %2.4lf ns\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB59:
	.text
.LHOTB59:
	.p2align 4
	.globl	_Z24bench_double_single_impli
	.type	_Z24bench_double_single_impli, @function
_Z24bench_double_single_impli:
.LFB10609:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10609
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	leaq	-96(%rbp), %rcx
	subq	$160, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, %ebx
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rcx, -184(%rbp)
	movslq	%edi, %rax
	leaq	-80(%rbp), %rcx
	leaq	(%rax,%rax,4), %rdx
	movq	_Z13algorithm_setB5cxx11(%rip), %rax
	movq	%rcx, -96(%rbp)
	movq	%rcx, -168(%rbp)
	leaq	(%rax,%rdx,8), %rax
	movq	8(%rax), %r12
	movq	(%rax), %r14
	movq	%r12, -104(%rbp)
	cmpq	$15, %r12
	ja	.L1257
	cmpq	$1, %r12
	jne	.L1131
	movzbl	(%r14), %eax
	movb	%al, -80(%rbp)
.L1133:
	movq	-168(%rbp), %rax
.L1132:
	movq	%r12, -88(%rbp)
	movb	$0, (%rax,%r12)
	movq	e10(%rip), %rax
	movq	-96(%rbp), %rcx
	movl	%ebx, %edx
	leaq	.LC55(%rip), %rsi
	movq	dec(%rip), %r15
	movl	$2, %edi
	movq	%rax, -120(%rbp)
	xorl	%eax, %eax
.LEHB0:
	call	__printf_chk@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -176(%rbp)
	testl	%ebx, %ebx
	je	.L1134
	cmpl	$1, %ebx
	jne	.L1258
	leaq	_ZZN3xjbL19ComputePow10_DoubleEiE1g(%rip), %rax
	vmovq	data(%rip), %xmm4
	vmovdqa	.LC22(%rip), %ymm7
	xorl	%r14d, %r14d
	vmovdqa	.LC24(%rip), %xmm5
	vmovq	%rax, %xmm3
	movl	$1, %eax
	vpbroadcastw	%eax, %ymm6
	vmovq	%r15, %xmm9
	jmp	.L1148
	.p2align 4
	.p2align 3
.L1261:
	addq	$10, %r8
	vmovq	%xmm9, %rax
	movq	%r8, (%rax,%r14,8)
.L1256:
	movq	-120(%rbp), %rax
	movl	%r15d, (%rax,%r14,4)
	incq	%r14
	cmpq	$100000000, %r14
	je	.L1259
.L1148:
	vmovq	%xmm4, %rax
	movabsq	$4503599627370495, %r9
	movq	(%rax,%r14,8), %rcx
	andq	%rcx, %r9
	shrq	$52, %rcx
	andl	$2047, %ecx
	je	.L1201
	subl	$1075, %ecx
	movabsq	$4503599627370496, %r8
	imull	$1262611, %ecx, %edx
	orq	%r9, %r8
.L1140:
	leaq	0(,%r8,4), %r13
	cmpq	$1, %r9
	leal	-524031(%rdx), %esi
	movl	$292, %r10d
	movq	%r13, %rax
	vmovq	%xmm3, %rbx
	leaq	2(%r13), %r12
	adcq	$-2, %rax
	sarl	$22, %edx
	sarl	$22, %esi
	testq	%r9, %r9
	cmovne	%edx, %esi
	subl	%esi, %r10d
	imull	$-1741647, %esi, %edx
	movl	%esi, %r15d
	movslq	%r10d, %r10
	salq	$4, %r10
	addq	%rbx, %r10
	movq	8(%r10), %rbx
	movq	(%r10), %rsi
	sarl	$19, %edx
	leal	1(%rcx,%rdx), %edi
	shlx	%rdi, %rax, %rax
	movq	%rax, %rdx
	mulx	%rsi, %r10, %r11
	mulq	%rbx
	movq	%rbx, %rax
	addq	%rdx, %r10
	shlx	%rdi, %r13, %rdx
	adcq	$0, %r11
	movq	%r10, -144(%rbp)
	movq	%r11, -136(%rbp)
	mulx	%rsi, %r10, %r11
	mulq	%rdx
	addq	%rdx, %r10
	shlx	%rdi, %r12, %rdx
	mulx	%rsi, %rsi, %rdi
	movq	-144(%rbp), %r12
	movq	%r10, %rax
	adcq	$0, %r11
	xorl	%r10d, %r10d
	cmpq	$1, %rax
	movq	%rbx, %rax
	seta	%r10b
	mulq	%rdx
	movq	-136(%rbp), %rax
	orq	%r11, %r10
	addq	%rdx, %rsi
	adcq	$0, %rdi
	cmpq	$1, %rsi
	seta	%sil
	andl	$1, %r8d
	xorl	%ebx, %ebx
	movzbl	%sil, %esi
	orq	%rdi, %rsi
	cmpq	$1, %r12
	movq	$-3, %rdi
	seta	%bl
	andl	$7, %r10d
	subq	%r8, %rdi
	shrq	$2, %r11
	orq	%rax, %rbx
	movabsq	$1844674407370955162, %rax
	mulq	%r11
	movl	$200, %eax
	addq	%r8, %rbx
	sarx	%r10d, %eax, %eax
	andl	$1, %eax
	addq	%r11, %rax
	leaq	0(,%rdx,4), %r12
	leaq	(%r12,%rdx), %r8
	addq	%r8, %r8
	testq	%r9, %r9
	je	.L1260
.L1143:
	addq	%r12, %rdx
	salq	$3, %rdx
	cmpq	%rbx, %rdx
	cmovnb	%r8, %rax
	addq	$37, %rdx
	addq	%rsi, %rdi
	cmpq	%rdx, %rdi
	jnb	.L1261
	vmovq	%xmm9, %rbx
	movq	%rax, (%rbx,%r14,8)
	jmp	.L1256
.L1131:
	testq	%r12, %r12
	je	.L1133
	movq	-168(%rbp), %rdi
	jmp	.L1130
	.p2align 4
	.p2align 3
.L1260:
	vpbroadcastw	%ecx, %ymm0
	movl	$1, %r11d
	vpcmpeqw	%ymm7, %ymm0, %ymm0
	vpand	%ymm6, %ymm0, %ymm0
	vpmovzxwd	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0
	vextracti128	$0x1, %ymm1, %xmm2
	vpmovzxdq	%xmm1, %ymm1
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm1, %ymm2, %ymm2
	vpmovzxdq	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxdq	%xmm0, %ymm0
	vpaddq	%ymm2, %ymm1, %ymm1
	vpbroadcastw	%ecx, %xmm2
	vpaddq	%ymm1, %ymm0, %ymm0
	vpcmpeqw	%xmm5, %xmm2, %xmm2
	vpbroadcastw	%r11d, %xmm1
	vpand	%xmm1, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm8
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm2
	vpsrldq	$8, %xmm8, %xmm1
	vpmovzxdq	%xmm8, %xmm8
	vpmovzxdq	%xmm1, %xmm1
	vpaddq	%xmm8, %xmm1, %xmm1
	vpmovzxdq	%xmm2, %xmm8
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxdq	%xmm2, %xmm2
	vpaddq	%xmm8, %xmm1, %xmm1
	vpaddq	%xmm2, %xmm1, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm1
	vextracti64x2	$0x1, %ymm0, %xmm0
	vpaddq	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r9
	addq	%rax, %r9
	xorl	%eax, %eax
	cmpw	$811, %cx
	sete	%al
	cmpw	$924, %cx
	sete	%cl
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	addq	%r9, %rax
	jmp	.L1143
	.p2align 4
	.p2align 3
.L1201:
	movq	%r9, %r8
	movl	$-1356044214, %edx
	movl	$-1074, %ecx
	jmp	.L1140
.L1134:
	movq	data(%rip), %r14
	movq	-120(%rbp), %r13
	xorl	%ebx, %ebx
	movabsq	$4503599627370495, %r12
	.p2align 4
	.p2align 3
.L1137:
	movq	(%r14,%rbx,8), %rdi
	movq	%rdi, %rsi
	andq	%r12, %rdi
	shrq	$52, %rsi
	andl	$2047, %esi
	call	_Z11ToDecimal64mm
	movq	%rax, (%r15,%rbx,8)
	movl	%edx, 0(%r13,%rbx,4)
	incq	%rbx
	cmpq	$100000000, %rbx
	jne	.L1137
	.p2align 4
	.p2align 3
.L1170:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	-120(%rbp), %rsi
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
.L1185:
	movq	(%r15,%rdx,8), %rcx
	movl	%ecx, -108(%rbp)
	movl	(%rsi,%rdx,4), %ecx
	incq	%rdx
	movl	%ecx, -104(%rbp)
	movl	-108(%rbp), %ecx
	movl	-104(%rbp), %ecx
	cmpq	$100000000, %rdx
	jne	.L1185
	movq	-176(%rbp), %rbx
	vxorps	%xmm1, %xmm1, %xmm1
	leaq	.LC58(%rip), %rsi
	movl	$2, %edi
	subq	%rbx, %rax
	vcvtusi2sdq	%rax, %xmm1, %xmm1
	movl	$2, %eax
	vdivsd	.LC57(%rip), %xmm1, %xmm0
	vmulsd	.LC56(%rip), %xmm1, %xmm1
	call	__printf_chk@PLT
.LEHE0:
	movq	-96(%rbp), %rdi
	movq	-168(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L1128
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1128:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L1262
	addq	$160, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1259:
	.cfi_restore_state
	vmovq	%xmm9, %r15
	vzeroupper
	jmp	.L1170
.L1257:
	movq	-184(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	xorl	%edx, %edx
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE1:
	movq	%rax, %rdi
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
.L1130:
	movq	%r12, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	-104(%rbp), %r12
	movq	-96(%rbp), %rax
	jmp	.L1132
.L1258:
	movq	data(%rip), %r13
	xorl	%r14d, %r14d
	cmpl	$2, %ebx
	jne	.L1241
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %rax
	vmovq	%r13, %xmm6
	vmovq	%r15, %xmm5
	vmovq	%rax, %xmm2
	movabsq	$4503599627370496, %rax
	vmovq	%rax, %xmm1
	leaq	_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10(%rip), %rax
	vmovq	%rax, %xmm0
	jmp	.L1169
	.p2align 4
	.p2align 3
.L1265:
	testq	%rdi, %rdi
	jne	.L1209
	subl	$524031, %ecx
	movl	$292, %eax
	vmovq	%xmm0, %rbx
	movl	$11, %r10d
	sarl	$22, %ecx
	subl	%ecx, %eax
	imull	$-1741647, %ecx, %r8d
	salq	$4, %rax
	movq	(%rbx,%rax), %rsi
	sarl	$19, %r8d
	addl	%r9d, %r8d
	movq	%rsi, %rax
	movq	%rsi, %rdi
	subl	%r8d, %r10d
	shrq	$54, %rax
	subq	%rax, %rdi
	leal	-1077(%rdx), %eax
	movq	%rsi, %rdx
	cmpl	$1, %eax
	shrx	%r10, %rdi, %rdi
	seta	%al
	shrq	$53, %rdx
	movzbl	%al, %eax
	addq	%rsi, %rdx
	addq	%rax, %rdi
	movabsq	$-3689348814741910323, %rax
	shrx	%r10, %rdx, %rdx
	mulq	%rdx
	shrq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	%rdx, %r13
	addq	%rax, %rax
	cmpq	%rdi, %rax
	jnb	.L1164
	movl	$10, %eax
	subl	%r8d, %eax
	shrx	%rax, %rsi, %rsi
	incq	%rsi
	shrq	%rsi
	cmpl	$-77, %r9d
	je	.L1263
	cmpq	%rdi, %rsi
	adcq	$0, %rsi
	movq	%rsi, %r13
	.p2align 4
	.p2align 3
.L1158:
	vmovq	%xmm5, %rax
	movq	%r13, (%rax,%r14,8)
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax,%r14,4)
	incq	%r14
	cmpq	$100000000, %r14
	je	.L1264
.L1169:
	vmovq	%xmm6, %rax
	movabsq	$4503599627370495, %rdi
	movq	(%rax,%r14,8), %rax
	movq	%rax, %rdx
	andq	%rax, %rdi
	shrq	$52, %rdx
	andl	$2047, %edx
	je	.L1203
	leal	-1075(%rdx), %r9d
	movabsq	$9214364837600034816, %rbx
	imull	$1262611, %r9d, %ecx
	testq	%rbx, %rax
	jne	.L1265
.L1209:
	sarl	$22, %ecx
	vmovq	%xmm1, %rax
	vmovq	%xmm0, %rbx
	orq	%rax, %rdi
	leal	-2(%rcx), %eax
	movl	$2, %esi
	movl	$63, %r8d
	movl	%eax, -124(%rbp)
	movl	$294, %eax
	subl	%ecx, %esi
	xorl	%edx, %edx
	subl	%ecx, %eax
	imull	$1741647, %esi, %esi
	xorl	%r11d, %r11d
	movq	%rdx, -136(%rbp)
	salq	$4, %rax
	addq	%rbx, %rax
	movq	(%rax), %rbx
	movq	8(%rax), %rax
	sarl	$19, %esi
	addl	%r9d, %esi
	subl	%esi, %r8d
	movq	%rbx, %r10
	movq	%rax, -144(%rbp)
	shrx	%r8, %rbx, %r8
.L1151:
	leaq	(%rdi,%rdi), %r15
	movq	%r11, %rdx
	leaq	1(%r15), %r12
	shlx	%rsi, %r12, %rax
	imulq	%rax, %rdx
	movq	%rdx, %r13
	movq	%rax, %rdx
	mulx	%r10, %r10, %r11
	movq	%r11, -152(%rbp)
	leaq	(%r11,%r13), %r11
	movq	-136(%rbp), %r13
	movq	%r10, -160(%rbp)
	imulq	%rax, %r13
	mulq	-144(%rbp)
	movabsq	$2361183241434822607, %rax
	addq	%rdx, %r13
	addq	-160(%rbp), %r13
	adcq	$0, %r11
	movq	%r11, %rdx
	shrq	$3, %rdx
	mulq	%rdx
	shrq	$4, %rdx
	imull	$1000, %edx, %eax
	movq	%rdx, %r13
	subl	%eax, %r11d
	cmpl	%r8d, %r11d
	jnb	.L1159
	notq	%rdi
	andl	$1, %edi
	cmpl	$-2, %r9d
	setl	%al
	orb	%dil, %al
	jne	.L1164
	testl	%r11d, %r11d
	jne	.L1164
	cmpl	$9, %r9d
	jle	.L1161
	cmpl	$86, %r9d
	jg	.L1164
	movl	-124(%rbp), %eax
	vmovq	%xmm2, %rdi
	salq	$4, %rax
	imulq	(%rdi,%rax), %r12
	cmpq	8(%rdi,%rax), %r12
	ja	.L1164
.L1161:
	decq	%r13
	movl	$1000, %r11d
.L1162:
	shrl	%r8d
	subl	%r8d, %r11d
	leaq	0(%r13,%r13,4), %r10
	leal	50(%r11), %eax
	movq	%rax, %rdi
	imulq	$1374389535, %rax, %rax
	shrq	$37, %rax
	movl	%eax, %edx
	imull	$100, %eax, %eax
	leaq	(%rdx,%r10,2), %r13
	cmpl	%eax, %edi
	jne	.L1158
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %r11
	imulq	%r15, %rbx
	imulq	%r15, %rax
	movq	%r11, %rdx
	mulx	%r15, %r10, %r11
	addq	%r11, %rax
	addq	%rax, %rbx
	movl	$64, %eax
	subl	%esi, %eax
	btq	%rax, %rbx
	jc	.L1168
	testb	$1, %r13b
	je	.L1158
	cmpl	$-4, %r9d
	jge	.L1167
	movl	-124(%rbp), %eax
	subl	%r9d, %eax
	incl	%eax
	cmpl	$63, %eax
	jg	.L1158
	bzhi	%rax, %r15, %rax
	testq	%rax, %rax
	jne	.L1158
	.p2align 4
	.p2align 3
.L1168:
	decq	%r13
	jmp	.L1158
	.p2align 4
	.p2align 3
.L1164:
	incl	%ecx
	jmp	.L1158
	.p2align 4
	.p2align 3
.L1159:
	jne	.L1162
	leaq	-1(%r15), %rax
	cmpl	$-2, %r9d
	jl	.L1163
	andl	$1, %edi
	jne	.L1163
	cmpl	$9, %r9d
	jle	.L1164
	cmpl	$86, %r9d
	jg	.L1163
	movl	-124(%rbp), %edi
	vmovq	%xmm2, %rdx
	salq	$4, %rdi
	movq	(%rdx,%rdi), %r10
	imulq	%rax, %r10
	cmpq	8(%rdx,%rdi), %r10
	jbe	.L1164
	.p2align 4
	.p2align 3
.L1163:
	movq	-144(%rbp), %r11
	movq	-136(%rbp), %rdi
	movq	%r11, %rdx
	imulq	%rax, %rdi
	mulx	%rax, %r10, %r11
	imulq	%rbx, %rax
	addq	%r11, %rdi
	addq	%rdi, %rax
	movl	$64, %edi
	subl	%esi, %edi
	btq	%rdi, %rax
	jc	.L1164
	movl	%r8d, %r11d
	jmp	.L1162
	.p2align 4
	.p2align 3
.L1203:
	movabsq	$-5130745324059681113, %rax
	xorl	%edx, %edx
	movabsq	$-646153205651940552, %r10
	xorl	%r11d, %r11d
	movl	$494, %r8d
	movabsq	$-646153205651940552, %rbx
	movl	$8, %esi
	movl	$-324, %ecx
	movl	$-1074, %r9d
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movl	$-326, -124(%rbp)
	jmp	.L1151
	.p2align 4
	.p2align 3
.L1263:
	andq	$-2, %rsi
	movq	%rsi, %r13
	jmp	.L1158
.L1167:
	cmpl	$9, %r9d
	jle	.L1168
	cmpl	$86, %r9d
	jg	.L1158
	movl	-124(%rbp), %esi
	leaq	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5(%rip), %rdi
	salq	$4, %rsi
	imulq	(%rdi,%rsi), %r15
	cmpq	8(%rdi,%rsi), %r15
	jbe	.L1168
	jmp	.L1158
	.p2align 4
	.p2align 3
.L1264:
	vmovq	%xmm5, %r15
	jmp	.L1170
.L1241:
	xorl	%r14d, %r14d
	movabsq	$4503599627370495, %r12
	cmpl	$3, %ebx
	jne	.L1266
	movq	-120(%rbp), %rbx
	.p2align 4
	.p2align 3
.L1173:
	movq	0(%r13,%r14,8), %rdi
	movq	%rdi, %rsi
	andq	%r12, %rdi
	shrq	$52, %rsi
	andl	$2047, %esi
	call	_ZL3d2dmj
	movq	%rax, (%r15,%r14,8)
	movl	%edx, (%rbx,%r14,4)
	incq	%r14
	cmpq	$100000000, %r14
	jne	.L1173
	jmp	.L1170
.L1266:
	cmpl	$4, %ebx
	je	.L1171
	cmpl	$5, %ebx
	jne	.L1267
	movq	-120(%rbp), %r12
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
.L1182:
	movq	data(%rip), %rax
	leaq	(%r15,%rbx), %rdi
	movq	%r12, %rsi
	addq	$4, %r12
	vmovsd	(%rax,%rbx), %xmm0
	addq	$8, %rbx
	call	_Z18yy_fast_f64_to_decdPyPi
	cmpq	$800000000, %rbx
	jne	.L1182
	jmp	.L1170
.L1171:
	xorl	%r12d, %r12d
	movl	$4294966222, %ebx
	jmp	.L1179
	.p2align 4
	.p2align 3
.L1268:
	btsq	$52, %rsi
	leal	-1075(%rax), %edi
.L1251:
	call	teju_ieee64_with_uint128
	movq	-120(%rbp), %rcx
	movq	%rdx, (%r15,%r12,8)
	movl	%eax, (%rcx,%r12,4)
	incq	%r12
	cmpq	$100000000, %r12
	je	.L1170
.L1179:
	movq	0(%r13,%r12,8), %rax
	movabsq	$4503599627370495, %rsi
	andq	%rax, %rsi
	shrq	$52, %rax
	andl	$2047, %eax
	jne	.L1268
	movl	%ebx, %edi
	jmp	.L1251
.L1267:
	movq	-120(%rbp), %rsi
	xorl	%r12d, %r12d
	cmpl	$6, %ebx
	jne	.L1269
	.p2align 4
	.p2align 3
.L1184:
	movq	data(%rip), %rax
	leaq	(%r15,%r12), %rdi
	vmovsd	(%rax,%r12), %xmm0
	addq	$8, %r12
	call	_Z18yy_full_f64_to_decdPyPi
	addq	$4, %rsi
	cmpq	$800000000, %r12
	jne	.L1184
	jmp	.L1170
.L1269:
	leaq	4688+_ZZL16xjb64_f64_to_decdPyPiE1g(%rip), %rax
	xorl	%r12d, %r12d
	vmovq	%rax, %xmm1
	movabsq	$4611686018427387904, %rax
	vmovq	%rax, %xmm0
	cmpl	$7, %ebx
	je	.L1196
	jmp	.L1170
	.p2align 4
	.p2align 3
.L1270:
	subl	$1075, %eax
	movabsq	$4503599627370496, %rcx
	imull	$315653, %eax, %edx
	orq	%rdi, %rcx
.L1186:
	movl	%edx, %esi
	subl	$131237, %edx
	vmovq	%xmm1, %r11
	sarl	$20, %esi
	sarl	$20, %edx
	movl	%esi, %ebx
	testq	%rdi, %rdi
	cmove	%edx, %ebx
	movl	%ebx, %edx
	notl	%edx
	imull	$217707, %edx, %esi
	addl	%edx, %edx
	movslq	%edx, %rdx
	leaq	(%r11,%rdx,8), %rdx
	sarl	$16, %esi
	leal	(%rsi,%rax), %r14d
	leal	7(%rax,%rsi), %eax
	movq	(%rdx), %r10
	shlx	%rax, %rcx, %r8
	movq	%r8, %rax
	mulq	8(%rdx)
	movq	%rdx, %rsi
	movq	%r10, %rdx
	mulx	%r8, %rax, %rdx
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, %r8
	negl	%r14d
	shrdq	$6, %rdx, %r8
	shrx	%r14, %r10, %r10
	movq	%r8, %rsi
	movq	%rdx, %r8
	movq	%rdx, %r9
	shrq	$6, %r8
	leaq	(%r8,%r8,4), %r11
	movq	%rax, %r8
	salq	$2, %r8
	shldq	$2, %rax, %r9
	addq	%r11, %r11
	addq	%r8, %rax
	adcq	%r9, %rdx
	shldq	$1, %rax, %rdx
	movq	%rdx, %rax
	vmovq	%xmm0, %rdx
	addq	$32, %rax
	cmpq	%rdx, %rsi
	sete	%dl
	incq	%rcx
	movzbl	%dl, %edx
	andl	$1, %ecx
	subq	%rdx, %rax
	addq	%r10, %rcx
	shrq	$6, %rax
	testq	%rdi, %rdi
	je	.L1189
	cmpq	%rcx, %rsi
	cmovb	%r11, %rax
.L1190:
	addq	%rsi, %rcx
	jc	.L1193
	movq	%rax, (%r15,%r12,8)
.L1253:
	movq	-120(%rbp), %rax
	movl	%ebx, (%rax,%r12,4)
	incq	%r12
	cmpq	$100000000, %r12
	je	.L1170
.L1196:
	movq	0(%r13,%r12,8), %rax
	movabsq	$4503599627370495, %rdi
	andq	%rax, %rdi
	shrq	$52, %rax
	andl	$2047, %eax
	jne	.L1270
	movq	%rdi, %rcx
	movl	$-339011322, %edx
	movl	$-1074, %eax
	jmp	.L1186
	.p2align 4
	.p2align 3
.L1189:
	movq	%rsi, %rdx
	movq	%r10, %rdi
	shrq	$4, %rdx
	shrq	$4, %rdi
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rdi,%rdi,4), %r8
	movabsq	$1152921504606846974, %rdi
	addq	%rdx, %rdx
	andq	%rdx, %rdi
	shrq	$60, %rdx
	cmpq	%rdi, %r8
	leaq	1(%r11,%rdx), %rdx
	cmovb	%rdx, %rax
	shrq	%r10
	cmpq	%r10, %rsi
	cmovb	%r11, %rax
	jmp	.L1190
.L1193:
	addq	$10, %r11
	movq	%r11, (%r15,%r12,8)
	jmp	.L1253
.L1262:
	call	__stack_chk_fail@PLT
.L1208:
	endbr64
	movq	%rax, %rbx
	jmp	.L1198
	.section	.gcc_except_table,"a",@progbits
.LLSDA10609:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10609-.LLSDACSB10609
.LLSDACSB10609:
	.uleb128 .LEHB0-.LFB10609
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L1208-.LFB10609
	.uleb128 0
	.uleb128 .LEHB1-.LFB10609
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE10609:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC10609
	.type	_Z24bench_double_single_impli.cold, @function
_Z24bench_double_single_impli.cold:
.LFSB10609:
.L1198:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	-184(%rbp), %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L1271
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L1271:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10609:
	.section	.gcc_except_table
.LLSDAC10609:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC10609-.LLSDACSBC10609
.LLSDACSBC10609:
	.uleb128 .LEHB2-.LCOLDB59
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC10609:
	.section	.text.unlikely
	.text
	.size	_Z24bench_double_single_impli, .-_Z24bench_double_single_impli
	.section	.text.unlikely
	.size	_Z24bench_double_single_impli.cold, .-_Z24bench_double_single_impli.cold
.LCOLDE59:
	.text
.LHOTE59:
	.section	.rodata.str1.8
	.align 8
.LC60:
	.string	"cost %4.4lf ms,every float cost %2.4lf ns\n"
	.section	.text.unlikely
.LCOLDB61:
	.text
.LHOTB61:
	.p2align 4
	.globl	_Z23bench_float_single_impli
	.type	_Z23bench_float_single_impli, @function
_Z23bench_float_single_impli:
.LFB10610:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10610
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebp
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movslq	%edi, %rax
	leaq	80(%rsp), %rbx
	leaq	96(%rsp), %r14
	leaq	(%rax,%rax,4), %rdx
	movq	_Z19algorithm_float_setB5cxx11(%rip), %rax
	movq	%rbx, 48(%rsp)
	movq	%r14, 80(%rsp)
	leaq	(%rax,%rdx,8), %rax
	movq	8(%rax), %rbx
	movq	(%rax), %r12
	movq	%rbx, 72(%rsp)
	cmpq	$15, %rbx
	ja	.L1332
	cmpq	$1, %rbx
	jne	.L1275
	movzbl	(%r12), %eax
	movb	%al, 96(%rsp)
.L1277:
	movq	%r14, %rax
.L1276:
	movq	%rbx, 88(%rsp)
	movb	$0, (%rax,%rbx)
	movq	80(%rsp), %rcx
	movl	%ebp, %edx
	leaq	.LC55(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	movq	dec_float(%rip), %r13
	movq	e10_float(%rip), %rbx
.LEHB3:
	call	__printf_chk@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 40(%rsp)
	testl	%ebp, %ebp
	je	.L1278
	cmpl	$1, %ebp
	jne	.L1333
	vmovq	data_float(%rip), %xmm1
	leaq	_ZZN15schubfach_xjb32L19ComputePow10_SingleEiE1g(%rip), %rax
	movq	%r14, 56(%rsp)
	xorl	%r10d, %r10d
	vmovq	%rax, %xmm0
	vmovq	%r13, %xmm2
	vmovq	%xmm1, %r14
	.p2align 4
	.p2align 3
.L1292:
	movl	(%r14,%r10), %esi
	movl	%esi, %r11d
	shrl	$23, %esi
	andl	$8388607, %r11d
	andl	$255, %esi
	movl	%r11d, %edi
	je	.L1309
	leal	-150(%rsi), %r9d
	orl	$8388608, %edi
	imull	$1262611, %r9d, %ecx
.L1284:
	leal	0(,%rdi,4), %eax
	cmpl	$1, %r11d
	leal	-524031(%rcx), %edx
	movl	%eax, %r8d
	leal	2(%rax), %r12d
	adcl	$-2, %r8d
	sarl	$22, %edx
	sarl	$22, %ecx
	testl	%r11d, %r11d
	cmove	%edx, %ecx
	xorl	%r13d, %r13d
	imull	$-1741647, %ecx, %edx
	sarl	$19, %edx
	leal	1(%r9,%rdx), %r15d
	movl	$31, %edx
	vmovq	%xmm0, %r9
	subl	%ecx, %edx
	shlx	%r15d, %r8d, %r8d
	shlx	%r15d, %eax, %eax
	shlx	%r15d, %r12d, %r12d
	movq	(%r9,%rdx,8), %rbp
	movq	%r8, %rdx
	mulx	%rbp, %r8, %r9
	movq	%rax, %rdx
	movq	%r8, 16(%rsp)
	movq	%r9, 24(%rsp)
	mulx	%rbp, %r8, %r9
	movq	%r8, %rax
	movl	%r9d, %r15d
	shrq	$32, %rax
	cmpl	$1, %eax
	seta	%r13b
	movl	%r13d, %edx
	orl	%r9d, %edx
	movl	%edx, (%rsp)
	movq	%r12, %rdx
	mulx	%rbp, %r12, %r13
	movq	%r12, %rbp
	movq	16(%rsp), %r12
	movl	(%rsp), %edx
	shrq	$32, %rbp
	cmpl	$1, %ebp
	seta	%bpl
	movq	%r12, %r8
	andl	$1, %edi
	movl	$-3, %r12d
	movzbl	%bpl, %ebp
	shrq	$32, %r8
	orl	%r13d, %ebp
	movq	24(%rsp), %r13
	cmpl	$1, %r8d
	seta	%r8b
	subl	%edi, %r12d
	andl	$7, %edx
	shrl	$2, %r15d
	movzbl	%r8b, %r8d
	orl	%r13d, %r8d
	movl	$200, %r13d
	addl	%edi, %r8d
	movl	%r15d, %edi
	sarx	%edx, %r13d, %edx
	andl	$1, %edx
	imulq	$1717986919, %rdi, %rdi
	addl	%r15d, %edx
	shrq	$34, %rdi
	leal	0(,%rdi,4), %eax
	leal	(%rax,%rdi), %r9d
	addl	%r9d, %r9d
	testl	%r11d, %r11d
	je	.L1334
.L1287:
	addl	%edi, %eax
	sall	$3, %eax
	cmpl	%r8d, %eax
	cmovnb	%r9d, %edx
	addl	%ebp, %r12d
	addl	$37, %eax
	cmpl	%eax, %r12d
	jb	.L1289
	addl	$10, %r9d
	vmovq	%xmm2, %rax
	movl	%r9d, (%rax,%r10)
	movl	%ecx, (%rbx,%r10)
	addq	$4, %r10
	cmpq	$400000000, %r10
	jne	.L1292
.L1331:
	movq	56(%rsp), %r14
	vmovq	%xmm2, %r13
.L1294:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
.L1303:
	movl	0(%r13,%rdx), %ecx
	movl	%ecx, 68(%rsp)
	movl	(%rbx,%rdx), %ecx
	addq	$4, %rdx
	movl	%ecx, 72(%rsp)
	movl	68(%rsp), %ecx
	movl	72(%rsp), %ecx
	cmpq	$400000000, %rdx
	jne	.L1303
	movq	40(%rsp), %rbx
	vxorps	%xmm1, %xmm1, %xmm1
	leaq	.LC60(%rip), %rsi
	movl	$2, %edi
	subq	%rbx, %rax
	vcvtusi2sdq	%rax, %xmm1, %xmm1
	movl	$2, %eax
	vdivsd	.LC57(%rip), %xmm1, %xmm0
	vmulsd	.LC56(%rip), %xmm1, %xmm1
	call	__printf_chk@PLT
.LEHE3:
	movq	80(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1272
	movq	96(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1272:
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1335
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1275:
	.cfi_restore_state
	testq	%rbx, %rbx
	je	.L1277
	movq	%r14, %rdi
	jmp	.L1274
	.p2align 4
	.p2align 3
.L1289:
	vmovq	%xmm2, %rax
	movl	%edx, (%rax,%r10)
	movl	%ecx, (%rbx,%r10)
	addq	$4, %r10
	cmpq	$400000000, %r10
	jne	.L1292
	jmp	.L1331
	.p2align 4
	.p2align 3
.L1334:
	cmpl	$214, %esi
	sete	%r13b
	cmpl	$31, %esi
	sete	%r11b
	orl	%r13d, %r11d
	cmpl	$217, %esi
	sete	%sil
	orl	%esi, %r11d
	movzbl	%r11b, %esi
	addl	%esi, %edx
	jmp	.L1287
	.p2align 4
	.p2align 3
.L1309:
	movl	$-188129039, %ecx
	movl	$-149, %r9d
	jmp	.L1284
.L1278:
	movq	data_float(%rip), %rbp
	xorl	%r12d, %r12d
	.p2align 4
	.p2align 3
.L1281:
	vmovss	0(%rbp,%r12), %xmm0
	leaq	(%rbx,%r12), %rsi
	leaq	0(%r13,%r12), %rdi
	addq	$4, %r12
	call	_ZL14xjb_f32_to_decfPjPi
	cmpq	$400000000, %r12
	jne	.L1281
	jmp	.L1294
.L1332:
	movq	48(%rsp), %rdi
	leaq	72(%rsp), %rsi
	xorl	%edx, %edx
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	movq	%rax, %rdi
	movq	%rax, 80(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
.L1274:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	72(%rsp), %rbx
	movq	80(%rsp), %rax
	jmp	.L1276
.L1333:
	movq	data_float(%rip), %r12
	xorl	%r10d, %r10d
	cmpl	$2, %ebp
	jne	.L1327
	leaq	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g(%rip), %rax
	movq	%r14, 16(%rsp)
	vmovq	%r12, %xmm3
	movq	%rbx, %r14
	vmovq	%rax, %xmm1
	movl	$3435973837, %eax
	vmovq	%rax, %xmm0
	jmp	.L1302
	.p2align 4
	.p2align 3
.L1337:
	orl	$8388608, %eax
	subl	$150, %edx
	sall	$2, %eax
	imull	$1262611, %edx, %ebp
	leal	-2(%rax,%rsi), %esi
	testb	%cl, %cl
	je	.L1296
	subl	$524031, %ebp
	vmovq	%xmm1, %rdi
	xorl	%r9d, %r9d
	movl	$33554434, %ecx
	sarl	$22, %ebp
	imull	$-1741647, %ebp, %eax
	sarl	$19, %eax
	leal	1(%rdx,%rax), %r15d
	movl	$31, %eax
	subl	%ebp, %eax
	movq	(%rdi,%rax,8), %r8
	movl	$33554432, %eax
.L1297:
	movq	%r9, %rdx
	shlx	%r15d, %esi, %esi
	movq	%r9, %r12
	imulq	%rsi, %rdx
	movq	%rdx, %rdi
	movq	%rsi, %rdx
	mulx	%r8, %rbx, %rsi
	addq	%rsi, %rdi
	movq	%rsi, 8(%rsp)
	shlx	%r15d, %eax, %esi
	movq	%rsi, %rax
	movq	%rbx, (%rsp)
	imulq	%rsi, %r12
	movq	(%rsp), %rsi
	mulq	%r8
	movq	%rax, %rbx
	leaq	(%rdx,%r12), %rdx
	xorl	%r12d, %r12d
	movq	%rbx, %rax
	shrq	$32, %rax
	cmpl	$1, %eax
	shlx	%r15d, %ecx, %eax
	movq	%r9, %rcx
	seta	%r12b
	imulq	%rax, %rcx
	shrq	$32, %rsi
	orl	%edx, %r12d
	movq	%rax, %rdx
	mulx	%r8, %r8, %r9
	xorl	%edx, %edx
	addq	%r9, %rcx
	movq	%r8, %rax
	cmpl	$1, %esi
	seta	%dl
	shrq	$32, %rax
	orl	%edi, %edx
	addl	%r11d, %edx
	cmpl	$1, %eax
	seta	%al
	movzbl	%al, %eax
	orl	%ecx, %eax
	subl	%r11d, %eax
	cmpl	$39, %r12d
	jbe	.L1298
	vmovq	%xmm0, %rdi
	movl	%r12d, %ecx
	imulq	%rdi, %rcx
	shrq	$37, %rcx
	leal	(%rcx,%rcx,4), %edi
	sall	$3, %edi
	leal	40(%rdi), %esi
	cmpl	%esi, %eax
	setnb	%sil
	cmpl	%edx, %edi
	setnb	%dil
	cmpb	%dil, %sil
	je	.L1298
	movzbl	%sil, %esi
	addl	%ecx, %esi
	leal	(%rsi,%rsi,4), %ecx
	addl	%ecx, %ecx
.L1299:
	movl	%ecx, 0(%r13,%r10)
	movl	%ebp, (%r14,%r10)
	addq	$4, %r10
	cmpq	$400000000, %r10
	je	.L1336
.L1302:
	vmovq	%xmm3, %rax
	movl	(%rax,%r10), %edx
	movq	%rdx, %r11
	shrq	$23, %rdx
	movl	%r11d, %eax
	testb	$-2, %dl
	setne	%cl
	andl	$8388607, %eax
	sete	%sil
	andl	$1, %r11d
	andl	%esi, %ecx
	andl	$255, %edx
	movzbl	%cl, %esi
	jne	.L1337
	sall	$2, %eax
	movabsq	$-5522047002568494196, %r8
	leal	-2(%rax,%rsi), %esi
	leal	2(%rax), %ecx
	xorl	%r9d, %r9d
	movl	$1, %r15d
	movl	$-45, %ebp
	jmp	.L1297
	.p2align 4
	.p2align 3
.L1298:
	movl	%r12d, %edi
	movl	%r12d, %esi
	shrl	$2, %edi
	leal	1(%rdi), %ecx
	andl	$-4, %esi
	leal	0(,%rcx,4), %r8d
	cmpl	%r8d, %eax
	setnb	%al
	cmpl	%edx, %esi
	setnb	%dl
	cmpb	%dl, %al
	je	.L1300
	movzbl	%al, %eax
	leal	(%rax,%rdi), %ecx
	jmp	.L1299
	.p2align 4
	.p2align 3
.L1300:
	addl	$2, %esi
	cmpl	%r12d, %esi
	jb	.L1299
	andl	$-2, %ecx
	cmpl	%r12d, %esi
	cmovne	%edi, %ecx
	jmp	.L1299
.L1336:
	movq	%r14, %rbx
	movq	16(%rsp), %r14
	jmp	.L1294
.L1327:
	xorl	%r15d, %r15d
	cmpl	$3, %ebp
	jne	.L1294
	.p2align 4
	.p2align 3
.L1304:
	movl	(%r12,%r15), %edi
	movl	%edi, %esi
	andl	$8388607, %edi
	shrl	$23, %esi
	andl	$255, %esi
	call	_ZL3f2djj
	movl	%eax, 0(%r13,%r15)
	sarq	$32, %rax
	movl	%eax, (%rbx,%r15)
	addq	$4, %r15
	cmpq	$400000000, %r15
	jne	.L1304
	jmp	.L1294
.L1296:
	sarl	$22, %ebp
	imull	$-1741647, %ebp, %edi
	leal	2(%rax), %ecx
	xorl	%r9d, %r9d
	sarl	$19, %edi
	leal	1(%rdx,%rdi), %r15d
	movl	$31, %edx
	leaq	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g(%rip), %rdi
	subl	%ebp, %edx
	movq	(%rdi,%rdx,8), %r8
	jmp	.L1297
.L1335:
	call	__stack_chk_fail@PLT
.L1312:
	endbr64
	movq	%rax, %rbx
	jmp	.L1306
	.section	.gcc_except_table
.LLSDA10610:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10610-.LLSDACSB10610
.LLSDACSB10610:
	.uleb128 .LEHB3-.LFB10610
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L1312-.LFB10610
	.uleb128 0
	.uleb128 .LEHB4-.LFB10610
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10610:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC10610
	.type	_Z23bench_float_single_impli.cold, @function
_Z23bench_float_single_impli.cold:
.LFSB10610:
.L1306:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	48(%rsp), %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1338
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L1338:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10610:
	.section	.gcc_except_table
.LLSDAC10610:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC10610-.LLSDACSBC10610
.LLSDACSBC10610:
	.uleb128 .LEHB5-.LCOLDB61
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC10610:
	.section	.text.unlikely
	.text
	.size	_Z23bench_float_single_impli, .-_Z23bench_float_single_impli
	.section	.text.unlikely
	.size	_Z23bench_float_single_impli.cold, .-_Z23bench_float_single_impli.cold
.LCOLDE61:
	.text
.LHOTE61:
	.section	.rodata.str1.1
.LC62:
	.string	"bench double start"
.LC63:
	.string	"bench double end"
	.text
	.p2align 4
	.globl	_Z26bench_double_all_algorithmv
	.type	_Z26bench_double_all_algorithmv, @function
_Z26bench_double_all_algorithmv:
.LFB10611:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC62(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	puts@PLT
	movq	_Z13algorithm_setB5cxx11(%rip), %rax
	cmpq	%rax, 8+_Z13algorithm_setB5cxx11(%rip)
	je	.L1340
	xorl	%r12d, %r12d
	leaq	_Z13algorithm_setB5cxx11(%rip), %rbp
	movabsq	$-3689348814741910323, %rbx
	.p2align 4
	.p2align 3
.L1341:
	movl	%r12d, %edi
	incq	%r12
	call	_Z24bench_double_single_impli
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rax
	subq	0(%rbp), %rax
	sarq	$3, %rax
	imulq	%rbx, %rax
	cmpq	%rax, %r12
	jb	.L1341
.L1340:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	leaq	.LC63(%rip), %rdi
	jmp	puts@PLT
	.cfi_endproc
.LFE10611:
	.size	_Z26bench_double_all_algorithmv, .-_Z26bench_double_all_algorithmv
	.section	.rodata.str1.1
.LC64:
	.string	"bench float start"
.LC65:
	.string	"bench float end"
	.text
	.p2align 4
	.globl	_Z25bench_float_all_algorithmv
	.type	_Z25bench_float_all_algorithmv, @function
_Z25bench_float_all_algorithmv:
.LFB10612:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC64(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	puts@PLT
	movq	_Z19algorithm_float_setB5cxx11(%rip), %rax
	cmpq	%rax, 8+_Z19algorithm_float_setB5cxx11(%rip)
	je	.L1345
	xorl	%r12d, %r12d
	leaq	_Z19algorithm_float_setB5cxx11(%rip), %rbp
	movabsq	$-3689348814741910323, %rbx
	.p2align 4
	.p2align 3
.L1346:
	movl	%r12d, %edi
	incq	%r12
	call	_Z23bench_float_single_impli
	movq	8+_Z19algorithm_float_setB5cxx11(%rip), %rax
	subq	0(%rbp), %rax
	sarq	$3, %rax
	imulq	%rbx, %rax
	cmpq	%rax, %r12
	jb	.L1346
.L1345:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	leaq	.LC65(%rip), %rdi
	jmp	puts@PLT
	.cfi_endproc
.LFE10612:
	.size	_Z25bench_float_all_algorithmv, .-_Z25bench_float_all_algorithmv
	.p2align 4
	.globl	_Z27check_xjb_and_schubfach_xjbd
	.type	_Z27check_xjb_and_schubfach_xjbd, @function
_Z27check_xjb_and_schubfach_xjbd:
.LFB10613:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vmovq	%xmm0, %rax
	movabsq	$4503599627370495, %rcx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	%rax, %rcx
	pushq	%r15
	pushq	%r14
	shrq	$52, %rax
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rcx, %r15
	andq	$-32, %rsp
	subq	$32, %rsp
	andl	$2047, %eax
	movq	%rax, %r14
	je	.L1356
	leal	-1075(%rax), %r13d
	btsq	$52, %r15
	imull	$1262611, %r13d, %ebx
.L1350:
	leaq	0(,%r15,4), %r10
	cmpq	$1, %rcx
	leal	-524031(%rbx), %edx
	movl	$292, %r8d
	movq	%r10, %rax
	leaq	2(%r10), %rdi
	adcq	$-2, %rax
	movq	%rdi, 24(%rsp)
	sarl	$22, %edx
	sarl	$22, %ebx
	testq	%rcx, %rcx
	cmove	%edx, %ebx
	imull	$-1741647, %ebx, %edx
	subl	%ebx, %r8d
	movslq	%r8d, %r8
	salq	$4, %r8
	sarl	$19, %edx
	leal	1(%r13,%rdx), %edi
	leaq	_ZZN3xjbL19ComputePow10_DoubleEiE1g(%rip), %rdx
	addq	%rdx, %r8
	shlx	%rdi, %rax, %rax
	movq	%rax, %rdx
	movq	8(%r8), %r12
	movq	(%r8), %rsi
	mulx	%rsi, %r8, %r9
	mulq	%r12
	movq	%r12, %rax
	addq	%rdx, %r8
	shlx	%rdi, %r10, %rdx
	mulx	%rsi, %r10, %r11
	adcq	$0, %r9
	mulq	%rdx
	addq	%rdx, %r10
	shlx	%rdi, 24(%rsp), %rdx
	mulx	%rsi, %rsi, %rdi
	adcq	$0, %r11
	cmpq	$1, %r10
	seta	%al
	movzbl	%al, %eax
	orq	%r11, %rax
	movq	%rax, %r10
	movq	%r12, %rax
	movl	$200, %r12d
	mulq	%rdx
	movq	%r15, %rax
	addq	%rdx, %rsi
	adcq	$0, %rdi
	cmpq	$1, %rsi
	seta	%sil
	andl	$1, %eax
	movzbl	%sil, %esi
	orq	%rdi, %rsi
	cmpq	$1, %r8
	movq	$-3, %rdi
	seta	%r8b
	subq	%rax, %rdi
	andl	$7, %r10d
	movzbl	%r8b, %r8d
	sarx	%r10d, %r12d, %r12d
	andl	$1, %r12d
	shrq	$2, %r11
	orq	%r9, %r8
	addq	%r11, %r12
	addq	%rax, %r8
	movabsq	$1844674407370955162, %rax
	mulq	%r11
	leaq	0(,%rdx,4), %rax
	leaq	(%rax,%rdx), %r9
	addq	%r9, %r9
	testq	%rcx, %rcx
	je	.L1359
.L1353:
	addq	%rdx, %rax
	salq	$3, %rax
	cmpq	%r8, %rax
	cmovnb	%r9, %r12
	addq	%rdi, %rsi
	addq	$37, %rax
	addq	$10, %r9
	movq	%rcx, %rdi
	cmpq	%rax, %rsi
	movq	%r14, %rsi
	cmovnb	%r9, %r12
	call	_Z11ToDecimal64mm
	cmpl	%edx, %ebx
	movq	%rax, %rcx
	setne	%al
	cmpq	%r12, %rcx
	setne	%dl
	leaq	-40(%rbp), %rsp
	orl	%edx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	movzbl	%al, %eax
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4
	.p2align 3
.L1359:
	.cfi_restore_state
	movl	$1, %r10d
	vpbroadcastw	%r13d, %ymm1
	vpbroadcastw	%r10d, %ymm0
	vpcmpeqw	.LC22(%rip), %ymm1, %ymm1
	vpand	%ymm0, %ymm1, %ymm1
	vpmovzxwd	%xmm1, %ymm0
	vextracti128	$0x1, %ymm1, %xmm1
	vpmovzxwd	%xmm1, %ymm1
	vextracti128	$0x1, %ymm0, %xmm2
	vpmovzxdq	%xmm0, %ymm0
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm0, %ymm2, %ymm2
	vpmovzxdq	%xmm1, %ymm0
	vextracti128	$0x1, %ymm1, %xmm1
	vpmovzxdq	%xmm1, %ymm1
	vpaddq	%ymm2, %ymm0, %ymm0
	vpbroadcastw	%r13d, %xmm2
	vpaddq	%ymm0, %ymm1, %ymm1
	vpcmpeqw	.LC24(%rip), %xmm2, %xmm2
	vpbroadcastw	%r10d, %xmm0
	vpand	%xmm0, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm0
	vpmovzxdq	%xmm3, %xmm3
	vpmovzxdq	%xmm0, %xmm0
	vpaddq	%xmm3, %xmm0, %xmm0
	vpmovzxdq	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxdq	%xmm2, %xmm2
	vpaddq	%xmm3, %xmm0, %xmm0
	vpaddq	%xmm2, %xmm0, %xmm0
	vpaddq	%xmm1, %xmm0, %xmm0
	vextracti64x2	$0x1, %ymm1, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r10
	addq	%r12, %r10
	xorl	%r12d, %r12d
	cmpw	$811, %r13w
	sete	%r12b
	xorl	%r11d, %r11d
	cmpw	$924, %r13w
	sete	%r11b
	addq	%r11, %r12
	addq	%r10, %r12
	vzeroupper
	jmp	.L1353
	.p2align 4
	.p2align 3
.L1356:
	movl	$-1356044214, %ebx
	movl	$-1074, %r13d
	jmp	.L1350
	.cfi_endproc
.LFE10613:
	.size	_Z27check_xjb_and_schubfach_xjbd, .-_Z27check_xjb_and_schubfach_xjbd
	.section	.rodata.str1.1
.LC66:
	.string	"check_float ok"
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"check_float fail error sum = %u\n"
	.text
	.p2align 4
	.globl	_Z11check_floatv
	.type	_Z11check_floatv, @function
_Z11check_floatv:
.LFB10615:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZZN3xjbL19ComputePow10_DoubleEiE1g(%rip), %rax
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	$8388608, %r14d
	vmovq	%rax, %xmm3
	andq	$-32, %rsp
	movl	$1, %eax
	subq	$32, %rsp
	vpbroadcastw	%eax, %ymm5
	vmovdqa	.LC22(%rip), %ymm6
	vmovdqa	.LC24(%rip), %xmm4
	movl	$0, 24(%rsp)
	movl	%r14d, 28(%rsp)
	jmp	.L1367
	.p2align 4
	.p2align 3
.L1375:
	leal	-1075(%rax), %esi
	movabsq	$4503599627370496, %r9
	imull	$1262611, %esi, %edx
	orq	%r8, %r9
.L1361:
	leaq	0(,%r9,4), %r14
	cmpq	$1, %r8
	leal	-524031(%rdx), %ecx
	movl	$292, %r10d
	movq	%r14, %rax
	vmovq	%xmm3, %rbx
	leaq	2(%r14), %rdi
	adcq	$-2, %rax
	sarl	$22, %edx
	sarl	$22, %ecx
	testq	%r8, %r8
	cmovne	%edx, %ecx
	subl	%ecx, %r10d
	imull	$-1741647, %ecx, %edx
	movl	%ecx, %r13d
	movslq	%r10d, %r10
	salq	$4, %r10
	addq	%rbx, %r10
	movq	(%r10), %rcx
	movq	8(%r10), %rbx
	sarl	$19, %edx
	leal	1(%rsi,%rdx), %r12d
	shlx	%r12, %rax, %rax
	movq	%rax, %rdx
	mulx	%rcx, %r10, %r11
	mulq	%rbx
	movq	%rbx, %rax
	addq	%rdx, %r10
	shlx	%r12, %r14, %rdx
	adcq	$0, %r11
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	mulx	%rcx, %r10, %r11
	mulq	%rdx
	movq	%rbx, %rax
	addq	%rdx, %r10
	shlx	%r12, %rdi, %rdx
	movq	$-3, %rdi
	adcq	$0, %r11
	xorl	%r15d, %r15d
	cmpq	$1, %r10
	seta	%r15b
	movq	%r11, %r14
	orq	%r11, %r15
	mulx	%rcx, %r10, %r11
	mulq	%rdx
	movq	8(%rsp), %rax
	addq	%rdx, %r10
	adcq	$0, %r11
	xorl	%ecx, %ecx
	cmpq	$1, %r10
	movq	(%rsp), %r10
	seta	%cl
	andl	$1, %r9d
	orq	%r11, %rcx
	movl	$200, %r11d
	cmpq	$1, %r10
	seta	%r10b
	andl	$7, %r15d
	subq	%r9, %rdi
	shrq	$2, %r14
	sarx	%r15d, %r11d, %r11d
	movzbl	%r10b, %r10d
	andl	$1, %r11d
	orq	%rax, %r10
	movabsq	$1844674407370955162, %rax
	mulq	%r14
	addq	%r9, %r10
	addq	%r11, %r14
	leaq	0(,%rdx,4), %rax
	leaq	(%rax,%rdx), %r9
	addq	%r9, %r9
	testq	%r8, %r8
	je	.L1373
.L1364:
	addq	%rdx, %rax
	movq	16(%rsp), %rsi
	salq	$3, %rax
	cmpq	%r10, %rax
	cmovnb	%r9, %r14
	addq	%rcx, %rdi
	addq	$37, %rax
	addq	$10, %r9
	cmpq	%rax, %rdi
	movq	%r8, %rdi
	cmovnb	%r9, %r14
	call	_Z11ToDecimal64mm
	cmpl	%edx, %r13d
	movq	%rax, %rcx
	setne	%al
	cmpq	%r14, %rcx
	setne	%dl
	incl	28(%rsp)
	orl	%edx, %eax
	movzbl	%al, %eax
	addl	%eax, 24(%rsp)
	movl	28(%rsp), %eax
	cmpl	$2139095040, %eax
	je	.L1374
.L1367:
	movabsq	$4503599627370495, %r8
	vcvtss2sd	28(%rsp), %xmm7, %xmm7
	vmovq	%xmm7, %rsi
	andq	%rsi, %r8
	shrq	$52, %rsi
	movq	%rsi, %rax
	andl	$2047, %eax
	movq	%rax, 16(%rsp)
	jne	.L1375
	movq	%r8, %r9
	movl	$-1356044214, %edx
	movl	$-1074, %esi
	jmp	.L1361
	.p2align 4
	.p2align 3
.L1373:
	vpbroadcastw	%esi, %ymm0
	movl	$1, %ebx
	vpcmpeqw	%ymm6, %ymm0, %ymm0
	vpand	%ymm5, %ymm0, %ymm0
	vpmovzxwd	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0
	vextracti128	$0x1, %ymm1, %xmm2
	vpmovzxdq	%xmm1, %ymm1
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm1, %ymm2, %ymm2
	vpmovzxdq	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxdq	%xmm0, %ymm0
	vpaddq	%ymm2, %ymm1, %ymm1
	vpbroadcastw	%esi, %xmm2
	vpaddq	%ymm1, %ymm0, %ymm0
	vpcmpeqw	%xmm4, %xmm2, %xmm2
	vpbroadcastw	%ebx, %xmm1
	vpand	%xmm1, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm7
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm2
	vpsrldq	$8, %xmm7, %xmm1
	vpmovzxdq	%xmm7, %xmm7
	vpmovzxdq	%xmm1, %xmm1
	vpaddq	%xmm7, %xmm1, %xmm1
	vpmovzxdq	%xmm2, %xmm7
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxdq	%xmm2, %xmm2
	vpaddq	%xmm7, %xmm1, %xmm1
	vpaddq	%xmm2, %xmm1, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm1
	vextracti64x2	$0x1, %ymm0, %xmm0
	vpaddq	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r11
	addq	%r14, %r11
	xorl	%r14d, %r14d
	cmpw	$811, %si
	sete	%r14b
	xorl	%ebx, %ebx
	cmpw	$924, %si
	sete	%bl
	addq	%rbx, %r14
	addq	%r11, %r14
	jmp	.L1364
.L1374:
	movl	24(%rsp), %eax
	testl	%eax, %eax
	jne	.L1368
	vzeroupper
	leaq	-40(%rbp), %rsp
	leaq	.LC66(%rip), %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	jmp	puts@PLT
.L1368:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	24(%rsp), %edx
	leaq	.LC67(%rip), %rsi
	movl	$2, %edi
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE10615:
	.size	_Z11check_floatv, .-_Z11check_floatv
	.section	.rodata.str1.1
.LC68:
	.string	"check_irregular ok"
	.section	.rodata.str1.8
	.align 8
.LC69:
	.string	"check_irregular fail error sum = %u\n"
	.text
	.p2align 4
	.globl	_Z15check_irregularv
	.type	_Z15check_irregularv, @function
_Z15check_irregularv:
.LFB10616:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZZN3xjbL19ComputePow10_DoubleEiE1g(%rip), %rax
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	vmovq	%rax, %xmm3
	movl	$1, %eax
	andq	$-32, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	$1, %r13d
	vpbroadcastw	%eax, %ymm6
	vpbroadcastw	%eax, %xmm4
	subq	$32, %rsp
	vmovdqa	.LC22(%rip), %ymm7
	vmovdqa	.LC24(%rip), %xmm5
	movl	$0, 20(%rsp)
	.p2align 4
	.p2align 3
.L1379:
	imull	$1262611, %r13d, %ebx
	vmovq	%xmm3, %rsi
	leal	-1075(%r13), %r15d
	subl	$1357830856, %ebx
	sarl	$22, %ebx
	imull	$-1741647, %ebx, %eax
	sarl	$19, %eax
	leal	-1074(%rax,%r13), %edi
	movl	$292, %eax
	subl	%ebx, %eax
	cltq
	salq	$4, %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movq	8(%rax), %r12
	movabsq	$18014398509481983, %rax
	shlx	%rdi, %rax, %rdx
	movq	%rdx, %rax
	mulx	%rsi, %r8, %r9
	mulq	%r12
	movabsq	$18014398509481984, %rax
	addq	%rdx, %r8
	shlx	%rdi, %rax, %rdx
	movq	%r12, %rax
	mulx	%rsi, %r10, %r11
	adcq	$0, %r9
	mulq	%rdx
	addq	%rdx, %r10
	adcq	$0, %r11
	cmpq	$1, %r10
	seta	%al
	movzbl	%al, %eax
	orq	%r11, %rax
	shrq	$2, %r11
	movq	%rax, 24(%rsp)
	movabsq	$1844674407370955162, %rax
	mulq	%r11
	xorl	%eax, %eax
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rcx,%rcx), %r10
	salq	$3, %rcx
	cmpq	$1, %r8
	movq	%r10, %r14
	seta	%al
	orq	%r9, %rax
	cmpq	%rax, %rcx
	jnb	.L1377
	vpbroadcastw	%r15d, %ymm0
	xorl	%r14d, %r14d
	cmpw	$811, %r15w
	movl	$200, %edx
	vpcmpeqw	%ymm7, %ymm0, %ymm0
	sete	%r14b
	xorl	%eax, %eax
	cmpw	$924, %r15w
	vpand	%ymm6, %ymm0, %ymm0
	sete	%al
	vpmovzxwd	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0
	addq	%rax, %r14
	vextracti128	$0x1, %ymm1, %xmm2
	vpmovzxdq	%xmm1, %ymm1
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm1, %ymm2, %ymm2
	vpmovzxdq	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxdq	%xmm0, %ymm0
	vpaddq	%ymm2, %ymm1, %ymm1
	vpbroadcastw	%r15d, %xmm2
	vpcmpeqw	%xmm5, %xmm2, %xmm2
	vpaddq	%ymm1, %ymm0, %ymm0
	vpand	%xmm4, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm8
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm2
	vpsrldq	$8, %xmm8, %xmm1
	vpmovzxdq	%xmm8, %xmm8
	vpmovzxdq	%xmm1, %xmm1
	vpaddq	%xmm8, %xmm1, %xmm1
	vpmovzxdq	%xmm2, %xmm8
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxdq	%xmm2, %xmm2
	vpaddq	%xmm8, %xmm1, %xmm1
	vpaddq	%xmm2, %xmm1, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm1
	vextracti64x2	$0x1, %ymm0, %xmm0
	vpaddq	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	addq	%r11, %rax
	addq	%rax, %r14
	movl	24(%rsp), %eax
	andl	$7, %eax
	sarx	%eax, %edx, %eax
	andl	$1, %eax
	addq	%rax, %r14
.L1377:
	movabsq	$18014398509481986, %rax
	shlx	%rdi, %rax, %rdx
	movq	%r12, %rax
	mulx	%rsi, %rsi, %rdi
	mulq	%rdx
	addq	%rdx, %rsi
	adcq	$0, %rdi
	addq	$37, %rcx
	xorl	%eax, %eax
	cmpq	$1, %rsi
	seta	%al
	addq	$10, %r10
	movq	%r13, %rsi
	orq	%rdi, %rax
	subq	$3, %rax
	cmpq	%rcx, %rax
	cmovnb	%r10, %r14
	xorl	%edi, %edi
	call	_Z11ToDecimal64mm
	cmpl	%edx, %ebx
	movq	%rax, %rcx
	setne	%al
	cmpq	%r14, %rcx
	setne	%dl
	incq	%r13
	orl	%edx, %eax
	movzbl	%al, %eax
	addl	%eax, 20(%rsp)
	cmpq	$2047, %r13
	jne	.L1379
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jne	.L1380
	vzeroupper
	leaq	-40(%rbp), %rsp
	leaq	.LC68(%rip), %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	jmp	puts@PLT
.L1380:
	.cfi_restore_state
	xorl	%eax, %eax
	movl	20(%rsp), %edx
	leaq	.LC69(%rip), %rsi
	movl	$2, %edi
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE10616:
	.size	_Z15check_irregularv, .-_Z15check_irregularv
	.section	.text._ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv:
.LFB11210:
	.cfi_startproc
	endbr64
	movq	$-2147483648, %r10
	movl	$2147483647, %esi
	movl	$1, %r9d
	movabsq	$-5403634167711393303, %r8
	vpbroadcastq	%r10, %zmm6
	vpbroadcastq	%rsi, %zmm5
	movq	%rdi, %rcx
	leaq	1248(%rdi), %rax
	movq	%rcx, %rdx
	leaq	1216(%rdi), %rdi
	vpbroadcastq	%r9, %zmm4
	vpbroadcastq	%r8, %zmm2
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align 4
	.p2align 3
.L1385:
	vpandq	8(%rdx), %zmm5, %zmm0
	addq	$64, %rdx
	vpternlogq	$248, -64(%rdx), %zmm6, %zmm0
	vpsrlq	$1, %zmm0, %zmm1
	vpandq	%zmm4, %zmm0, %zmm0
	vpsubq	%zmm0, %zmm3, %zmm0
	vpandq	%zmm2, %zmm0, %zmm0
	vpternlogq	$150, 1184(%rdx), %zmm1, %zmm0
	vmovdqu64	%zmm0, -64(%rdx)
	cmpq	%rdx, %rdi
	jne	.L1385
	vpbroadcastq	%rsi, %ymm0
	vpand	1224(%rcx), %ymm0, %ymm0
	vpbroadcastq	%r10, %ymm1
	movq	$-2147483648, %rdx
	vpbroadcastq	%rdx, %zmm4
	movl	$2147483647, %edx
	leaq	2464(%rcx), %rsi
	vpxor	%xmm6, %xmm6, %xmm6
	vpbroadcastq	%rdx, %zmm3
	movl	$1, %edx
	vpternlogq	$248, 1216(%rcx), %ymm1, %ymm0
	vpbroadcastq	%r9, %ymm1
	vpsrlq	$1, %ymm0, %ymm2
	vpand	%ymm1, %ymm0, %ymm0
	vpxor	%xmm1, %xmm1, %xmm1
	vpsubq	%ymm0, %ymm1, %ymm0
	vpbroadcastq	%r8, %ymm1
	vpand	%ymm1, %ymm0, %ymm0
	vpternlogq	$150, 2464(%rcx), %ymm2, %ymm0
	vpbroadcastq	%rdx, %zmm2
	movabsq	$-5403634167711393303, %rdx
	vpbroadcastq	%rdx, %zmm5
	vmovdqu	%ymm0, 1216(%rcx)
	.p2align 4
	.p2align 3
.L1386:
	vpandq	8(%rax), %zmm3, %zmm0
	addq	$64, %rax
	vpternlogq	$248, -64(%rax), %zmm4, %zmm0
	vpsrlq	$1, %zmm0, %zmm1
	vpandq	%zmm2, %zmm0, %zmm0
	vpsubq	%zmm0, %zmm6, %zmm0
	vpandq	%zmm5, %zmm0, %zmm0
	vpternlogq	$150, -1312(%rax), %zmm1, %zmm0
	vmovdqu64	%zmm0, -64(%rax)
	cmpq	%rax, %rsi
	jne	.L1386
	movq	2472(%rcx), %rax
	movq	2464(%rcx), %rdi
	movq	$0, 2496(%rcx)
	movq	%rax, %rsi
	andq	$-2147483648, %rdi
	andq	$-2147483648, %rax
	andl	$2147483647, %esi
	orq	%rsi, %rdi
	andl	$1, %esi
	shrq	%rdi
	xorq	1216(%rcx), %rdi
	negq	%rsi
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, 2464(%rcx)
	movq	2480(%rcx), %rsi
	movq	%rsi, %rdi
	andq	$-2147483648, %rsi
	andl	$2147483647, %edi
	orq	%rdi, %rax
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	xorq	1224(%rcx), %rdi
	negq	%rax
	andq	%rdx, %rax
	xorq	%rdi, %rax
	movq	2488(%rcx), %rdi
	movq	%rax, 2472(%rcx)
	movq	%rdi, %rax
	andq	$-2147483648, %rdi
	andl	$2147483647, %eax
	orq	%rax, %rsi
	andl	$1, %eax
	shrq	%rsi
	xorq	1232(%rcx), %rsi
	negq	%rax
	andq	%rdx, %rax
	xorq	%rsi, %rax
	movq	%rax, 2480(%rcx)
	movq	(%rcx), %rax
	andl	$2147483647, %eax
	orq	%rdi, %rax
	movq	%rax, %rsi
	shrq	%rsi
	xorq	1240(%rcx), %rsi
	andl	$1, %eax
	negq	%rax
	andq	%rdx, %rax
	xorq	%rsi, %rax
	movq	%rax, 2488(%rcx)
	vzeroupper
	ret
	.cfi_endproc
.LFE11210:
	.size	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z25gen_double_filter_Nan_Infv
	.type	_Z25gen_double_filter_Nan_Infv, @function
_Z25gen_double_filter_Nan_Infv:
.LFB10584:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	2496+gen(%rip), %rcx
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	gen(%rip), %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movabsq	$6148914691236517205, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movabsq	$8202884508482404352, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movabsq	$-2270628950310912, %rbp
	movabsq	$9223372036854775807, %rbx
	jmp	.L1391
	.p2align 4
	.p2align 3
.L1390:
	leaq	1(%rax), %rcx
	movq	(%r14,%rax,8), %rax
	movq	%rcx, 2496+gen(%rip)
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%rbp, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	movabsq	$9218868437227405311, %rdx
	andq	%rbx, %rax
	cmpq	%rax, %rdx
	jnb	.L1395
.L1391:
	movq	%rcx, %rax
	cmpq	$311, %rcx
	jbe	.L1390
	movq	%r14, %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	2496+gen(%rip), %rax
	jmp	.L1390
	.p2align 4
	.p2align 3
.L1395:
	popq	%rbx
	.cfi_def_cfa_offset 40
	vmovq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10584:
	.size	_Z25gen_double_filter_Nan_Infv, .-_Z25gen_double_filter_Nan_Infv
	.section	.rodata.str1.1
.LC78:
	.string	"check_all ok"
	.section	.rodata.str1.8
	.align 8
.LC79:
	.string	"check_all fail error sum = %u\n"
	.text
	.p2align 4
	.globl	_Z9check_allv
	.type	_Z9check_allv, @function
_Z9check_allv:
.LFB10617:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$64, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	2496+gen(%rip), %r15
	movq	$1073741824, 24(%rsp)
	movl	$0, 56(%rsp)
	.p2align 4
	.p2align 3
.L1405:
	movabsq	$6148914691236517205, %r14
	movabsq	$8202884508482404352, %r13
	movabsq	$-2270628950310912, %r12
	movabsq	$9223372036854775807, %rbx
	jmp	.L1398
	.p2align 4
	.p2align 3
.L1397:
	leaq	gen(%rip), %rsi
	leaq	1(%rax), %r15
	movabsq	$9218868437227405311, %rcx
	movq	(%rsi,%rax,8), %rax
	movq	%r15, 2496+gen(%rip)
	movq	%rax, %rdx
	shrq	$29, %rdx
	andq	%r14, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$17, %rdx
	andq	%r13, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$37, %rdx
	andq	%r12, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$43, %rdx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	andq	%rbx, %rdx
	cmpq	%rdx, %rcx
	jnb	.L1413
.L1398:
	movq	%r15, %rax
	cmpq	$311, %r15
	jbe	.L1397
	leaq	gen(%rip), %rdi
	vzeroupper
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	2496+gen(%rip), %rax
	jmp	.L1397
	.p2align 4
	.p2align 3
.L1413:
	movq	%rax, %rdi
	movq	%rdx, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rdi
	shrq	$52, %rax
	movq	%rdi, %r10
	movq	%rax, 48(%rsp)
	je	.L1408
	subl	$1075, %eax
	btsq	$52, %r10
	imull	$1262611, %eax, %ebx
	movl	%eax, %ecx
	movl	%eax, 60(%rsp)
.L1399:
	leaq	0(,%r10,4), %r13
	cmpq	$1, %rdi
	leal	-524031(%rbx), %eax
	movl	$292, %r8d
	movq	%r13, %rdx
	leaq	2(%r13), %rsi
	adcq	$-2, %rdx
	sarl	$22, %eax
	sarl	$22, %ebx
	testq	%rdi, %rdi
	cmove	%eax, %ebx
	imull	$-1741647, %ebx, %eax
	subl	%ebx, %r8d
	movslq	%r8d, %r8
	salq	$4, %r8
	sarl	$19, %eax
	leal	1(%rcx,%rax), %r12d
	leaq	_ZZN3xjbL19ComputePow10_DoubleEiE1g(%rip), %rax
	addq	%rax, %r8
	shlx	%r12, %rdx, %rdx
	movq	%rdx, %rax
	shlx	%r12, %rsi, %rsi
	movq	(%r8), %rcx
	movq	8(%r8), %r11
	mulx	%rcx, %r8, %r9
	mulq	%r11
	movq	%r11, %rax
	addq	%rdx, %r8
	shlx	%r12, %r13, %rdx
	adcq	$0, %r9
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	mulx	%rcx, %r8, %r9
	mulq	%rdx
	movq	%r11, %rax
	addq	%rdx, %r8
	movq	%rcx, %rdx
	adcq	$0, %r9
	xorl	%r14d, %r14d
	cmpq	$1, %r8
	seta	%r14b
	movq	%r9, %r13
	orq	%r9, %r14
	mulx	%rsi, %r8, %r9
	mulq	%rsi
	movq	40(%rsp), %rax
	movq	$-3, %rsi
	addq	%rdx, %r8
	adcq	$0, %r9
	xorl	%ecx, %ecx
	cmpq	$1, %r8
	movq	32(%rsp), %r8
	seta	%cl
	andl	$1, %r10d
	orq	%r9, %rcx
	cmpq	$1, %r8
	seta	%r8b
	subq	%r10, %rsi
	andl	$7, %r14d
	shrq	$2, %r13
	movzbl	%r8b, %r8d
	orq	%rax, %r8
	movabsq	$1844674407370955162, %rax
	mulq	%r13
	addq	%r10, %r8
	movl	$200, %r10d
	sarx	%r14d, %r10d, %r10d
	andl	$1, %r10d
	addq	%r10, %r13
	leaq	0(,%rdx,4), %rax
	leaq	(%rax,%rdx), %r9
	addq	%r9, %r9
	testq	%rdi, %rdi
	je	.L1414
.L1402:
	addq	%rdx, %rax
	salq	$3, %rax
	cmpq	%r8, %rax
	cmovnb	%r9, %r13
	addq	%rcx, %rsi
	addq	$37, %rax
	addq	$10, %r9
	cmpq	%rax, %rsi
	movq	48(%rsp), %rsi
	cmovnb	%r9, %r13
	call	_Z11ToDecimal64mm
	cmpl	%edx, %ebx
	movq	%rax, %rcx
	setne	%al
	cmpq	%r13, %rcx
	setne	%dl
	orl	%edx, %eax
	movzbl	%al, %eax
	addl	%eax, 56(%rsp)
	decq	24(%rsp)
	jne	.L1405
	movl	56(%rsp), %eax
	testl	%eax, %eax
	jne	.L1406
	vzeroupper
	leaq	-40(%rbp), %rsp
	leaq	.LC78(%rip), %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	jmp	puts@PLT
	.p2align 4
	.p2align 3
.L1414:
	.cfi_restore_state
	movl	60(%rsp), %r11d
	movl	$1, %r10d
	vpbroadcastw	%r11d, %ymm0
	vpcmpeqw	.LC22(%rip), %ymm0, %ymm0
	vpand	.LC23(%rip), %ymm0, %ymm0
	vpmovzxwd	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxwd	%xmm0, %ymm0
	vextracti128	$0x1, %ymm1, %xmm2
	vpmovzxdq	%xmm1, %ymm1
	vpmovzxdq	%xmm2, %ymm2
	vpaddq	%ymm1, %ymm2, %ymm2
	vpmovzxdq	%xmm0, %ymm1
	vextracti128	$0x1, %ymm0, %xmm0
	vpmovzxdq	%xmm0, %ymm0
	vpaddq	%ymm2, %ymm1, %ymm1
	vpbroadcastw	%r11d, %xmm2
	vpaddq	%ymm1, %ymm0, %ymm0
	vpcmpeqw	.LC24(%rip), %xmm2, %xmm2
	vpbroadcastw	%r10d, %xmm1
	vpand	%xmm1, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxwd	%xmm2, %xmm2
	vpsrldq	$8, %xmm3, %xmm1
	vpmovzxdq	%xmm3, %xmm3
	vpmovzxdq	%xmm1, %xmm1
	vpaddq	%xmm3, %xmm1, %xmm1
	vpmovzxdq	%xmm2, %xmm3
	vpsrldq	$8, %xmm2, %xmm2
	vpmovzxdq	%xmm2, %xmm2
	vpaddq	%xmm3, %xmm1, %xmm1
	vpaddq	%xmm2, %xmm1, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm1
	vextracti64x2	$0x1, %ymm0, %xmm0
	vpaddq	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r10
	addq	%r13, %r10
	xorl	%r13d, %r13d
	cmpw	$811, %r11w
	sete	%r13b
	cmpw	$924, %r11w
	sete	%r11b
	movzbl	%r11b, %r11d
	addq	%r11, %r13
	addq	%r10, %r13
	jmp	.L1402
	.p2align 4
	.p2align 3
.L1408:
	movl	$-1074, 60(%rsp)
	movl	$-1356044214, %ebx
	movl	60(%rsp), %ecx
	jmp	.L1399
.L1406:
	xorl	%eax, %eax
	movl	56(%rsp), %edx
	leaq	.LC79(%rip), %rsi
	movl	$2, %edi
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE10617:
	.size	_Z9check_allv, .-_Z9check_allv
	.section	.rodata.str1.1
.LC80:
	.string	"check_subnormal ok"
	.section	.rodata.str1.8
	.align 8
.LC81:
	.string	"check_subnormal fail error sum = %u\n"
	.text
	.p2align 4
	.globl	_Z15check_subnormalv
	.type	_Z15check_subnormalv, @function
_Z15check_subnormalv:
.LFB10614:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$1073741824, %r15d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%r14d, %r14d
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	2496+gen(%rip), %rbp
	jmp	.L1419
	.p2align 4
	.p2align 3
.L1416:
	leaq	gen(%rip), %rdi
	leaq	1(%rax), %rbp
	movabsq	$-2270628950310912, %rbx
	movabsq	$4503599627370495, %r9
	movq	(%rdi,%rax,8), %rcx
	movabsq	$6148914691236517205, %rdi
	movabsq	$-7054365918152680535, %rsi
	movq	%rbp, 2496+gen(%rip)
	movq	%rcx, %rax
	shrq	$29, %rax
	andq	%rdi, %rax
	movabsq	$8202884508482404352, %rdi
	xorq	%rax, %rcx
	movq	%rcx, %rax
	salq	$17, %rax
	andq	%rdi, %rax
	xorq	%rax, %rcx
	movq	%rcx, %rax
	salq	$37, %rax
	andq	%rbx, %rax
	movabsq	$7784369436827535058, %rbx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$43, %rax
	xorq	%rax, %rcx
	andq	%rcx, %r9
	leaq	0(,%r9,4), %rdi
	cmpq	$1, %r9
	movq	%rdi, %rdx
	adcq	$-2, %rdx
	salq	$3, %rdx
	movq	%rdx, %rax
	mulx	%rsi, %r12, %r13
	mulq	%rbx
	addq	%rdx, %r12
	movq	%r9, %rdx
	adcq	$0, %r13
	salq	$5, %rdx
	movq	%rdx, %rax
	mulx	%rsi, %r10, %r11
	mulq	%rbx
	addq	%rdx, %r10
	leaq	16(,%rdi,8), %rdx
	adcq	$0, %r11
	movq	%rdx, %rax
	cmpq	$1, %r10
	mulx	%rsi, %rsi, %rdi
	seta	%r10b
	mulq	%rbx
	movq	%r11, %r8
	movzbl	%r10b, %r10d
	orq	%r11, %r10
	addq	%rdx, %rsi
	adcq	$0, %rdi
	movq	%rdi, %rax
	xorl	%edi, %edi
	cmpq	$1, %rsi
	movq	$-3, %rsi
	seta	%dil
	andl	$1, %ecx
	xorl	%r11d, %r11d
	shrq	$2, %r8
	orq	%rax, %rdi
	movabsq	$1844674407370955162, %rax
	subq	%rcx, %rsi
	mulq	%r8
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rax,%rax), %rdx
	salq	$3, %rax
	cmpq	$1, %r12
	movq	%rdx, %rbx
	seta	%r11b
	orq	%r13, %r11
	addq	%r11, %rcx
	cmpq	%rcx, %rax
	jnb	.L1417
	andl	$7, %r10d
	movl	$200, %ebx
	sarx	%r10d, %ebx, %ebx
	andl	$1, %ebx
	addq	%r8, %rbx
.L1417:
	addq	%rdi, %rsi
	addq	$37, %rax
	addq	$10, %rdx
	movq	%r9, %rdi
	cmpq	%rax, %rsi
	cmovnb	%rdx, %rbx
	xorl	%esi, %esi
	call	_Z11ToDecimal64mm
	cmpq	%rbx, %rax
	setne	%al
	cmpl	$-324, %edx
	setne	%dl
	orl	%edx, %eax
	movzbl	%al, %eax
	addl	%eax, %r14d
	decq	%r15
	je	.L1425
.L1419:
	movq	%rbp, %rax
	cmpq	$311, %rbp
	jbe	.L1416
	leaq	gen(%rip), %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	2496+gen(%rip), %rax
	jmp	.L1416
.L1425:
	testl	%r14d, %r14d
	jne	.L1420
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	.LC80(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
.L1420:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	movl	%r14d, %edx
	leaq	.LC81(%rip), %rsi
	movl	$2, %edi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE10614:
	.size	_Z15check_subnormalv, .-_Z15check_subnormalv
	.section	.rodata.str1.8
	.align 8
.LC82:
	.string	"\ncheck start , may cost long time , please wait"
	.align 8
.LC83:
	.string	"<=== check xjb algorithm ; use schubfach_xjb for correct result ===>"
	.section	.rodata.str1.1
.LC84:
	.string	"check finish"
	.text
	.p2align 4
	.globl	_Z5checkv
	.type	_Z5checkv, @function
_Z5checkv:
.LFB10618:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	.LC82(%rip), %rdi
	call	puts@PLT
	leaq	.LC83(%rip), %rdi
	call	puts@PLT
	call	_Z15check_subnormalv
	call	_Z11check_floatv
	call	_Z15check_irregularv
	call	_Z9check_allv
	leaq	.LC84(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
	.cfi_endproc
.LFE10618:
	.size	_Z5checkv, .-_Z5checkv
	.section	.rodata._ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.str1.1,"aMS",@progbits,1
.LC85:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
	.type	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_, @function
_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_:
.LFB11344:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r15
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$-3689348814741910323, %rdx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %rbp
	movq	(%rdi), %r13
	movq	%rbp, %rax
	subq	%r13, %rax
	sarq	$3, %rax
	imulq	%rdx, %rax
	movabsq	$230584300921369395, %rdx
	cmpq	%rdx, %rax
	je	.L1489
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movq	%rsi, %rbx
	subq	%r13, %rdx
	cmpq	%rbp, %r13
	je	.L1490
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L1467
	testq	%rcx, %rcx
	jne	.L1491
	movl	$40, %edi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
.L1434:
	movq	(%r15), %rsi
	leaq	(%rax,%rdx), %rcx
	leaq	16(%rax,%rdx), %r8
	leaq	16(%r15), %rdx
	movq	8(%r15), %r11
	movq	%r8, (%rcx)
	cmpq	%rdx, %rsi
	je	.L1492
	movq	%rsi, (%rcx)
	movq	16(%r15), %rsi
	movq	%rsi, 16(%rcx)
.L1442:
	movq	%rdx, (%r15)
	movq	32(%r15), %rdx
	movq	%r11, 8(%rcx)
	movq	$0, 8(%r15)
	movb	$0, 16(%r15)
	movq	%rdx, 32(%rcx)
	cmpq	%r13, %rbx
	je	.L1443
	movq	%r13, %rdx
	movq	%rax, %rcx
	jmp	.L1453
	.p2align 4
	.p2align 3
.L1444:
	movq	%rsi, (%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
.L1487:
	movq	32(%rdx), %rsi
	addq	$40, %rdx
	addq	$40, %rcx
	movq	%rsi, -8(%rcx)
	cmpq	%rdx, %rbx
	je	.L1493
.L1453:
	leaq	16(%rcx), %rdi
	leaq	16(%rdx), %r8
	movq	%rdi, (%rcx)
	movq	(%rdx), %rsi
	cmpq	%r8, %rsi
	jne	.L1444
	movq	8(%rdx), %r9
	leaq	1(%r9), %r8
	cmpl	$8, %r8d
	jnb	.L1445
	testb	$4, %r8b
	jne	.L1494
	testl	%r8d, %r8d
	je	.L1446
	movzbl	(%rsi), %r9d
	movb	%r9b, (%rdi)
	testb	$2, %r8b
	jne	.L1484
.L1488:
	movq	8(%rdx), %r9
.L1446:
	movq	%r9, 8(%rcx)
	jmp	.L1487
	.p2align 4
	.p2align 3
.L1467:
	movabsq	$9223372036854775800, %r14
.L1433:
	movq	%r14, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	addq	%rax, %r14
	leaq	40(%rax), %rdi
	jmp	.L1434
	.p2align 4
	.p2align 3
.L1493:
	leaq	-40(%rbx), %rdx
	movabsq	$922337203685477581, %rcx
	subq	%r13, %rdx
	shrq	$3, %rdx
	imulq	%rcx, %rdx
	movabsq	$2305843009213693951, %rcx
	andq	%rcx, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	80(%rax,%rdx,8), %rdi
.L1443:
	cmpq	%rbp, %rbx
	je	.L1454
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	.p2align 4
	.p2align 3
.L1464:
	movq	(%rdx), %rsi
	leaq	16(%rcx), %r8
	leaq	16(%rdx), %r10
	movq	8(%rdx), %r9
	movq	%r8, (%rcx)
	cmpq	%r10, %rsi
	je	.L1495
	movq	%rsi, (%rcx)
	movq	16(%rdx), %rsi
	addq	$40, %rdx
	movq	%r9, 8(%rcx)
	addq	$40, %rcx
	movq	%rsi, -24(%rcx)
	movq	-8(%rdx), %rsi
	movq	%rsi, -8(%rcx)
	cmpq	%rbp, %rdx
	jne	.L1464
.L1463:
	subq	%rbx, %rbp
	movabsq	$922337203685477581, %rcx
	leaq	-40(%rbp), %rdx
	shrq	$3, %rdx
	imulq	%rcx, %rdx
	movabsq	$2305843009213693951, %rcx
	andq	%rcx, %rdx
	leaq	5(%rdx,%rdx,4), %rdx
	leaq	(%rdi,%rdx,8), %rdi
.L1454:
	vmovq	%rax, %xmm1
	vpinsrq	$1, %rdi, %xmm1, %xmm0
	testq	%r13, %r13
	je	.L1465
	movq	16(%r12), %rsi
	movq	%r13, %rdi
	vmovdqa	%xmm0, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	vmovdqa	(%rsp), %xmm0
.L1465:
	vmovdqu	%xmm0, (%r12)
	movq	%r14, 16(%r12)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1495:
	.cfi_restore_state
	leaq	1(%r9), %r10
	cmpl	$8, %r10d
	jnb	.L1456
	testb	$4, %r10b
	jne	.L1496
	testl	%r10d, %r10d
	je	.L1457
	movzbl	(%rsi), %r11d
	movb	%r11b, (%r8)
	testb	$2, %r10b
	jne	.L1497
.L1457:
	movq	32(%rdx), %rsi
	addq	$40, %rdx
	movq	%r9, 8(%rcx)
	addq	$40, %rcx
	movq	%rsi, -8(%rcx)
	cmpq	%rdx, %rbp
	jne	.L1464
	jmp	.L1463
	.p2align 4
	.p2align 3
.L1456:
	movq	(%rsi), %r11
	movq	%r11, (%r8)
	movl	%r10d, %r11d
	movq	-8(%rsi,%r11), %r15
	movq	%r15, -8(%r8,%r11)
	leaq	24(%rcx), %r11
	andq	$-8, %r11
	subq	%r11, %r8
	addl	%r8d, %r10d
	subq	%r8, %rsi
	andl	$-8, %r10d
	cmpl	$8, %r10d
	jb	.L1457
	andl	$-8, %r10d
	xorl	%r8d, %r8d
	vmovq	%rax, %xmm2
.L1460:
	movl	%r8d, %r15d
	addl	$8, %r8d
	movq	(%rsi,%r15), %rax
	movq	%rax, (%r11,%r15)
	cmpl	%r10d, %r8d
	jb	.L1460
	vmovq	%xmm2, %rax
	jmp	.L1457
	.p2align 4
	.p2align 3
.L1445:
	movq	(%rsi), %r9
	movq	%r9, (%rdi)
	movl	%r8d, %r9d
	movq	-8(%rsi,%r9), %r10
	movq	%r10, -8(%rdi,%r9)
	leaq	24(%rcx), %r9
	andq	$-8, %r9
	subq	%r9, %rdi
	addl	%edi, %r8d
	subq	%rdi, %rsi
	andl	$-8, %r8d
	cmpl	$8, %r8d
	jb	.L1488
	andl	$-8, %r8d
	xorl	%edi, %edi
.L1449:
	movl	%edi, %r10d
	addl	$8, %edi
	movq	(%rsi,%r10), %r11
	movq	%r11, (%r9,%r10)
	cmpl	%r8d, %edi
	jb	.L1449
	jmp	.L1488
	.p2align 4
	.p2align 3
.L1490:
	addq	$1, %rax
	jc	.L1467
	movabsq	$230584300921369395, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	leaq	(%rax,%rax,4), %r14
	salq	$3, %r14
	jmp	.L1433
	.p2align 4
	.p2align 3
.L1492:
	leaq	1(%r11), %rsi
	cmpl	$8, %esi
	jnb	.L1436
	testb	$4, %sil
	jne	.L1498
	testl	%esi, %esi
	je	.L1442
	movzbl	16(%r15), %r9d
	movb	%r9b, 16(%rcx)
	testb	$2, %sil
	je	.L1442
	movl	%esi, %esi
	movzwl	-2(%rdx,%rsi), %r9d
	movw	%r9w, -2(%r8,%rsi)
	jmp	.L1442
	.p2align 4
	.p2align 3
.L1436:
	movq	16(%r15), %r9
	movq	%r9, 16(%rcx)
	movl	%esi, %r9d
	movq	-8(%rdx,%r9), %r10
	movq	%r10, -8(%r8,%r9)
	leaq	24(%rcx), %r9
	movq	%rdx, %r10
	andq	$-8, %r9
	subq	%r9, %r8
	addl	%r8d, %esi
	subq	%r8, %r10
	andl	$-8, %esi
	cmpl	$8, %esi
	jb	.L1442
	andl	$-8, %esi
	movq	%r15, (%rsp)
	xorl	%r8d, %r8d
	movq	%rbx, %r15
	vmovq	%rax, %xmm3
	movq	%rdx, %rbx
	movl	%esi, %edx
.L1440:
	movl	%r8d, %esi
	addl	$8, %r8d
	movq	(%r10,%rsi), %rax
	movq	%rax, (%r9,%rsi)
	cmpl	%edx, %r8d
	jb	.L1440
	movq	%rbx, %rdx
	vmovq	%xmm3, %rax
	movq	%r15, %rbx
	movq	(%rsp), %r15
	jmp	.L1442
.L1496:
	movl	(%rsi), %r11d
	movl	%r10d, %r10d
	movl	%r11d, (%r8)
	movl	-4(%rsi,%r10), %esi
	movl	%esi, -4(%r8,%r10)
	jmp	.L1457
.L1494:
	movl	(%rsi), %r9d
	movl	%r8d, %r8d
	movl	%r9d, (%rdi)
	movl	-4(%rsi,%r8), %esi
	movl	%esi, -4(%rdi,%r8)
	movq	8(%rdx), %r9
	jmp	.L1446
.L1484:
	movl	%r8d, %r8d
	movzwl	-2(%rsi,%r8), %esi
	movw	%si, -2(%rdi,%r8)
	movq	8(%rdx), %r9
	jmp	.L1446
.L1497:
	movl	%r10d, %r10d
	movzwl	-2(%rsi,%r10), %esi
	movw	%si, -2(%r8,%r10)
	jmp	.L1457
.L1498:
	movl	16(%r15), %r9d
	movl	%esi, %esi
	movl	%r9d, 16(%rcx)
	movl	-4(%rdx,%rsi), %r9d
	movl	%r9d, -4(%r8,%rsi)
	jmp	.L1442
.L1491:
	movabsq	$230584300921369395, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	(%rcx,%rcx,4), %r14
	salq	$3, %r14
	jmp	.L1433
.L1489:
	leaq	.LC85(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE11344:
	.size	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_, .-_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
	.section	.rodata.str1.1
.LC86:
	.string	"generate random data finish"
.LC88:
	.string	"init : cost %lf second\n"
	.section	.text.unlikely
.LCOLDB89:
	.text
.LHOTB89:
	.p2align 4
	.globl	_Z11init_doublev
	.type	_Z11init_doublev, @function
_Z11init_doublev:
.LFB10585:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10585
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movabsq	$8202884508482404352, %r15
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	gen(%rip), %rbp
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movabsq	$6148914691236517205, %r12
	movabsq	$-2270628950310912, %r14
	movabsq	$9223372036854775807, %r13
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$800000000, %edi
	movq	%rax, 8(%rsp)
	call	malloc@PLT
	movl	$800000000, %edi
	movq	%rax, %rbx
	movq	%rax, data(%rip)
	call	malloc@PLT
	movl	$400000000, %edi
	movq	%rax, dec(%rip)
	call	malloc@PLT
	movq	2496+gen(%rip), %rdx
	movq	%rax, e10(%rip)
	leaq	800000000(%rbx), %rax
	movq	%rax, (%rsp)
	jmp	.L1501
	.p2align 4
	.p2align 3
.L1500:
	leaq	1(%rax), %rdx
	movq	0(%rbp,%rax,8), %rax
	movq	%rdx, 2496+gen(%rip)
	movq	%rax, %rdi
	shrq	$29, %rdi
	andq	%r12, %rdi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$17, %rdi
	andq	%r15, %rdi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$37, %rdi
	andq	%r14, %rdi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$43, %rdi
	xorq	%rdi, %rax
	movabsq	$9218868437227405311, %rdi
	andq	%r13, %rax
	cmpq	%rax, %rdi
	jnb	.L1587
.L1501:
	movq	%rdx, %rax
	cmpq	$311, %rdx
	jbe	.L1500
	movq	%rbp, %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	2496+gen(%rip), %rax
	jmp	.L1500
	.p2align 4
	.p2align 3
.L1587:
	movq	%rax, (%rbx)
	movq	(%rsp), %rax
	addq	$8, %rbx
	cmpq	%rax, %rbx
	jne	.L1501
	leaq	.LC86(%rip), %rdi
.LEHB6:
	call	puts@PLT
	movq	dec(%rip), %rdi
	movl	$800000000, %edx
	xorl	%esi, %esi
	call	memset@PLT
	movq	e10(%rip), %rdi
	movl	$400000000, %edx
	xorl	%esi, %esi
	call	memset@PLT
	movq	_Z13algorithm_setB5cxx11(%rip), %r13
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rbp
	cmpq	%rbp, %r13
	je	.L1503
	movq	%r13, %rbx
.L1507:
	movq	(%rbx), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L1504
	movq	16(%rbx), %rax
	addq	$40, %rbx
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	cmpq	%rbx, %rbp
	jne	.L1507
.L1506:
	movq	%r13, %rbp
	movq	%r13, 8+_Z13algorithm_setB5cxx11(%rip)
.L1503:
	movabsq	$7161117455558402931, %rax
	movb	$0, 43(%rsp)
	cmpq	%rbp, 16+_Z13algorithm_setB5cxx11(%rip)
	leaq	32(%rsp), %r14
	movq	%rax, 32(%rsp)
	movl	$875980899, 39(%rsp)
	movq	32(%rsp), %rax
	leaq	64(%rsp), %rbx
	leaq	48(%rsp), %r13
	leaq	_Z13algorithm_setB5cxx11(%rip), %r15
	movq	%rbx, 48(%rsp)
	movq	$11, 56(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movq	%rax, 64(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, 72(%rsp)
	leaq	_Z20schubfach_f64_to_decdPyPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1508
	leaq	16(%rbp), %rax
	movq	%rax, 0(%rbp)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1509
	movq	%rdx, 0(%rbp)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rbp)
.L1510:
	movq	80(%rsp), %rax
	movq	$11, 8(%rbp)
	addq	$40, %rbp
	movq	%rax, -8(%rbp)
	movq	%rbp, 8+_Z13algorithm_setB5cxx11(%rip)
.L1511:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1512
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1512:
	movabsq	$7161117455558402931, %rax
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rsi
	movb	$0, 47(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rax, 32(%rsp)
	movabsq	$7091612913541474403, %rax
	cmpq	16+_Z13algorithm_setB5cxx11(%rip), %rsi
	movq	$15, 56(%rsp)
	movq	%rax, 39(%rsp)
	vmovdqa	32(%rsp), %xmm1
	leaq	_Z24schubfach_xjb_f64_to_decdPyPi(%rip), %rax
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movq	%rax, 80(%rsp)
	vmovdqa	%xmm1, 64(%rsp)
	je	.L1513
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rax
	cmpq	%rbx, %rax
	je	.L1514
	movq	%rax, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1515:
	movq	80(%rsp), %rax
	movq	$15, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z13algorithm_setB5cxx11(%rip)
.L1516:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1517
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1517:
	movabsq	$8026098910682509924, %rax
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rsi
	movb	$120, 40(%rsp)
	movb	$0, 41(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	40(%rsp), %eax
	cmpq	16+_Z13algorithm_setB5cxx11(%rip), %rsi
	movq	%rbx, 48(%rsp)
	movq	$9, 56(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movw	%ax, 72(%rsp)
	leaq	_Z20dragonbox_f64_to_decdPyPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1518
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1519
	movq	%rdx, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1520:
	movq	80(%rsp), %rax
	movq	$9, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z13algorithm_setB5cxx11(%rip)
.L1521:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1522
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1522:
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rsi
	movb	$52, 36(%rsp)
	movb	$0, 37(%rsp)
	movzwl	36(%rsp), %eax
	cmpq	16+_Z13algorithm_setB5cxx11(%rip), %rsi
	movl	$913668466, 32(%rsp)
	movq	%rbx, 48(%rsp)
	movl	$913668466, 64(%rsp)
	movq	$5, 56(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movw	%ax, 68(%rsp)
	leaq	_Z14ryu_f64_to_decdPyPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1523
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1524
	movq	%rdx, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1525:
	movq	80(%rsp), %rax
	movq	$5, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z13algorithm_setB5cxx11(%rip)
.L1526:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1527
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1527:
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rsi
	leaq	_Z15teju_f64_to_decdPyPi(%rip), %rax
	movl	$1969907060, 32(%rsp)
	movb	$0, 36(%rsp)
	cmpq	16+_Z13algorithm_setB5cxx11(%rip), %rsi
	movq	%rbx, 48(%rsp)
	movl	$1969907060, 64(%rsp)
	movb	$0, 68(%rsp)
	movq	$4, 56(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movq	%rax, 80(%rsp)
	je	.L1528
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1529
	movq	%rdx, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1530:
	movq	80(%rsp), %rax
	movq	$4, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z13algorithm_setB5cxx11(%rip)
.L1531:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1532
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1532:
	movl	$1717533049, 32(%rsp)
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rsi
	movl	$1953718630, 35(%rsp)
	movb	$0, 39(%rsp)
	movq	32(%rsp), %rax
	cmpq	16+_Z13algorithm_setB5cxx11(%rip), %rsi
	movq	%rbx, 48(%rsp)
	movq	$7, 56(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movq	%rax, 64(%rsp)
	leaq	_Z18yy_fast_f64_to_decdPyPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1533
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rax
	cmpq	%rbx, %rax
	je	.L1534
	movq	%rax, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1535:
	movq	80(%rsp), %rax
	movq	$7, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z13algorithm_setB5cxx11(%rip)
.L1536:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1537
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1537:
	movl	$1717533049, 32(%rsp)
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rsi
	movl	$1819047270, 35(%rsp)
	movb	$0, 39(%rsp)
	movq	32(%rsp), %rax
	cmpq	16+_Z13algorithm_setB5cxx11(%rip), %rsi
	movq	%rbx, 48(%rsp)
	movq	$7, 56(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movq	%rax, 64(%rsp)
	leaq	_Z18yy_full_f64_to_decdPyPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1538
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rax
	cmpq	%rbx, %rax
	je	.L1539
	movq	%rax, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1540:
	movq	80(%rsp), %rax
	movq	$7, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z13algorithm_setB5cxx11(%rip)
.L1541:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1542
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1542:
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rsi
	movb	$52, 36(%rsp)
	movb	$0, 37(%rsp)
	movzwl	36(%rsp), %eax
	cmpq	16+_Z13algorithm_setB5cxx11(%rip), %rsi
	movl	$912419448, 32(%rsp)
	movq	%rbx, 48(%rsp)
	movl	$912419448, 64(%rsp)
	movq	$5, 56(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movw	%ax, 68(%rsp)
	leaq	_ZL16xjb64_f64_to_decdPyPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1543
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1544
	movq	%rdx, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1545:
	movq	80(%rsp), %rax
	movq	$5, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z13algorithm_setB5cxx11(%rip)
.L1546:
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L1547
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1547:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	88(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L1588
	movq	8(%rsp), %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	leaq	.LC88(%rip), %rsi
	movl	$2, %edi
	subq	%rcx, %rax
	vcvtusi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC87(%rip), %xmm0, %xmm0
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT
.LEHE6:
.L1504:
	.cfi_restore_state
	addq	$40, %rbx
	cmpq	%rbx, %rbp
	jne	.L1507
	jmp	.L1506
.L1508:
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB7:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE7:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1511
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1511
.L1543:
	movq	%r13, %rdx
	movq	%r15, %rdi
.LEHB8:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE8:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1546
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1546
.L1538:
	movq	%r13, %rdx
	movq	%r15, %rdi
.LEHB9:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE9:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1541
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1541
.L1533:
	movq	%r13, %rdx
	movq	%r15, %rdi
.LEHB10:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE10:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1536
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1536
.L1528:
	movq	%r13, %rdx
	movq	%r15, %rdi
.LEHB11:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE11:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1531
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1531
.L1523:
	movq	%r13, %rdx
	movq	%r15, %rdi
.LEHB12:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE12:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1526
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1526
.L1518:
	movq	%r13, %rdx
	movq	%r15, %rdi
.LEHB13:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE13:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1521
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1521
.L1513:
	movq	%r13, %rdx
	movq	%r15, %rdi
.LEHB14:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE14:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1516
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1516
.L1509:
	movq	(%rbx), %rdx
	movq	%rdx, 16(%rbp)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	jmp	.L1510
.L1534:
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
	jmp	.L1535
.L1539:
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
	jmp	.L1540
.L1544:
	movl	(%rbx), %edx
	movl	%edx, 16(%rsi)
	movzwl	4(%rbx), %edx
	movw	%dx, 4(%rax)
	jmp	.L1545
.L1514:
	vmovdqa	64(%rsp), %xmm2
	vmovdqu	%xmm2, 16(%rsi)
	jmp	.L1515
.L1519:
	movq	(%rbx), %rdx
	movq	%rdx, 16(%rsi)
	movzwl	8(%rbx), %edx
	movw	%dx, 8(%rax)
	jmp	.L1520
.L1524:
	movl	(%rbx), %edx
	movl	%edx, 16(%rsi)
	movzwl	4(%rbx), %edx
	movw	%dx, 4(%rax)
	jmp	.L1525
.L1529:
	movl	(%rbx), %edx
	movl	%edx, 16(%rsi)
	movzbl	4(%rbx), %edx
	movb	%dl, 4(%rax)
	jmp	.L1530
.L1588:
	call	__stack_chk_fail@PLT
.L1567:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
.L1574:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
.L1573:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
.L1572:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
.L1571:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
.L1570:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
.L1569:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
.L1568:
	endbr64
	movq	%rax, %rbx
	jmp	.L1563
	.section	.gcc_except_table
.LLSDA10585:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10585-.LLSDACSB10585
.LLSDACSB10585:
	.uleb128 .LEHB6-.LFB10585
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB10585
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L1567-.LFB10585
	.uleb128 0
	.uleb128 .LEHB8-.LFB10585
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L1574-.LFB10585
	.uleb128 0
	.uleb128 .LEHB9-.LFB10585
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L1573-.LFB10585
	.uleb128 0
	.uleb128 .LEHB10-.LFB10585
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L1572-.LFB10585
	.uleb128 0
	.uleb128 .LEHB11-.LFB10585
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L1571-.LFB10585
	.uleb128 0
	.uleb128 .LEHB12-.LFB10585
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L1570-.LFB10585
	.uleb128 0
	.uleb128 .LEHB13-.LFB10585
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L1569-.LFB10585
	.uleb128 0
	.uleb128 .LEHB14-.LFB10585
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L1568-.LFB10585
	.uleb128 0
.LLSDACSE10585:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC10585
	.type	_Z11init_doublev.cold, @function
_Z11init_doublev.cold:
.LFSB10585:
.L1563:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	16(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1589
	movq	%rbx, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L1589:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10585:
	.section	.gcc_except_table
.LLSDAC10585:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC10585-.LLSDACSBC10585
.LLSDACSBC10585:
	.uleb128 .LEHB15-.LCOLDB89
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC10585:
	.section	.text.unlikely
	.text
	.size	_Z11init_doublev, .-_Z11init_doublev
	.section	.text.unlikely
	.size	_Z11init_doublev.cold, .-_Z11init_doublev.cold
.LCOLDE89:
	.text
.LHOTE89:
	.p2align 4
	.globl	_Z12bench_doublev
	.type	_Z12bench_doublev, @function
_Z12bench_doublev:
.LFB10619:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	_Z11init_doublev
	leaq	.LC62(%rip), %rdi
	call	puts@PLT
	movq	_Z13algorithm_setB5cxx11(%rip), %rax
	cmpq	%rax, 8+_Z13algorithm_setB5cxx11(%rip)
	je	.L1591
	xorl	%r12d, %r12d
	leaq	_Z13algorithm_setB5cxx11(%rip), %rbp
	movabsq	$-3689348814741910323, %rbx
	.p2align 4
	.p2align 3
.L1592:
	movl	%r12d, %edi
	incq	%r12
	call	_Z24bench_double_single_impli
	movq	8+_Z13algorithm_setB5cxx11(%rip), %rax
	subq	0(%rbp), %rax
	sarq	$3, %rax
	imulq	%rbx, %rax
	cmpq	%rax, %r12
	jb	.L1592
.L1591:
	leaq	.LC63(%rip), %rdi
	call	puts@PLT
	movq	data(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1593
	call	free@PLT
.L1593:
	movq	dec(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1594
	call	free@PLT
.L1594:
	movq	e10(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1595
	call	free@PLT
.L1595:
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	$0, data(%rip)
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	$0, dec(%rip)
	popq	%r12
	.cfi_def_cfa_offset 8
	movq	$0, e10(%rip)
	ret
	.cfi_endproc
.LFE10619:
	.size	_Z12bench_doublev, .-_Z12bench_doublev
	.section	.text._ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
	.type	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_, @function
_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_:
.LFB11354:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r15
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$-3689348814741910323, %rdx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %rbp
	movq	(%rdi), %r13
	movq	%rbp, %rax
	subq	%r13, %rax
	sarq	$3, %rax
	imulq	%rdx, %rax
	movabsq	$230584300921369395, %rdx
	cmpq	%rdx, %rax
	je	.L1668
	movq	%rsi, %rdx
	movq	%rdi, %r12
	movq	%rsi, %rbx
	subq	%r13, %rdx
	cmpq	%rbp, %r13
	je	.L1669
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L1646
	testq	%rcx, %rcx
	jne	.L1670
	movl	$40, %edi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
.L1613:
	movq	(%r15), %rsi
	leaq	(%rax,%rdx), %rcx
	leaq	16(%rax,%rdx), %r8
	leaq	16(%r15), %rdx
	movq	8(%r15), %r11
	movq	%r8, (%rcx)
	cmpq	%rdx, %rsi
	je	.L1671
	movq	%rsi, (%rcx)
	movq	16(%r15), %rsi
	movq	%rsi, 16(%rcx)
.L1621:
	movq	%rdx, (%r15)
	movq	32(%r15), %rdx
	movq	%r11, 8(%rcx)
	movq	$0, 8(%r15)
	movb	$0, 16(%r15)
	movq	%rdx, 32(%rcx)
	cmpq	%r13, %rbx
	je	.L1622
	movq	%r13, %rdx
	movq	%rax, %rcx
	jmp	.L1632
	.p2align 4
	.p2align 3
.L1623:
	movq	%rsi, (%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
.L1666:
	movq	32(%rdx), %rsi
	addq	$40, %rdx
	addq	$40, %rcx
	movq	%rsi, -8(%rcx)
	cmpq	%rdx, %rbx
	je	.L1672
.L1632:
	leaq	16(%rcx), %rdi
	leaq	16(%rdx), %r8
	movq	%rdi, (%rcx)
	movq	(%rdx), %rsi
	cmpq	%r8, %rsi
	jne	.L1623
	movq	8(%rdx), %r9
	leaq	1(%r9), %r8
	cmpl	$8, %r8d
	jnb	.L1624
	testb	$4, %r8b
	jne	.L1673
	testl	%r8d, %r8d
	je	.L1625
	movzbl	(%rsi), %r9d
	movb	%r9b, (%rdi)
	testb	$2, %r8b
	jne	.L1663
.L1667:
	movq	8(%rdx), %r9
.L1625:
	movq	%r9, 8(%rcx)
	jmp	.L1666
	.p2align 4
	.p2align 3
.L1646:
	movabsq	$9223372036854775800, %r14
.L1612:
	movq	%r14, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	addq	%rax, %r14
	leaq	40(%rax), %rdi
	jmp	.L1613
	.p2align 4
	.p2align 3
.L1672:
	leaq	-40(%rbx), %rdx
	movabsq	$922337203685477581, %rcx
	subq	%r13, %rdx
	shrq	$3, %rdx
	imulq	%rcx, %rdx
	movabsq	$2305843009213693951, %rcx
	andq	%rcx, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	80(%rax,%rdx,8), %rdi
.L1622:
	cmpq	%rbp, %rbx
	je	.L1633
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	.p2align 4
	.p2align 3
.L1643:
	movq	(%rdx), %rsi
	leaq	16(%rcx), %r8
	leaq	16(%rdx), %r10
	movq	8(%rdx), %r9
	movq	%r8, (%rcx)
	cmpq	%r10, %rsi
	je	.L1674
	movq	%rsi, (%rcx)
	movq	16(%rdx), %rsi
	addq	$40, %rdx
	movq	%r9, 8(%rcx)
	addq	$40, %rcx
	movq	%rsi, -24(%rcx)
	movq	-8(%rdx), %rsi
	movq	%rsi, -8(%rcx)
	cmpq	%rbp, %rdx
	jne	.L1643
.L1642:
	subq	%rbx, %rbp
	movabsq	$922337203685477581, %rcx
	leaq	-40(%rbp), %rdx
	shrq	$3, %rdx
	imulq	%rcx, %rdx
	movabsq	$2305843009213693951, %rcx
	andq	%rcx, %rdx
	leaq	5(%rdx,%rdx,4), %rdx
	leaq	(%rdi,%rdx,8), %rdi
.L1633:
	vmovq	%rax, %xmm1
	vpinsrq	$1, %rdi, %xmm1, %xmm0
	testq	%r13, %r13
	je	.L1644
	movq	16(%r12), %rsi
	movq	%r13, %rdi
	vmovdqa	%xmm0, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	vmovdqa	(%rsp), %xmm0
.L1644:
	vmovdqu	%xmm0, (%r12)
	movq	%r14, 16(%r12)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4
	.p2align 3
.L1674:
	.cfi_restore_state
	leaq	1(%r9), %r10
	cmpl	$8, %r10d
	jnb	.L1635
	testb	$4, %r10b
	jne	.L1675
	testl	%r10d, %r10d
	je	.L1636
	movzbl	(%rsi), %r11d
	movb	%r11b, (%r8)
	testb	$2, %r10b
	jne	.L1676
.L1636:
	movq	32(%rdx), %rsi
	addq	$40, %rdx
	movq	%r9, 8(%rcx)
	addq	$40, %rcx
	movq	%rsi, -8(%rcx)
	cmpq	%rdx, %rbp
	jne	.L1643
	jmp	.L1642
	.p2align 4
	.p2align 3
.L1635:
	movq	(%rsi), %r11
	movq	%r11, (%r8)
	movl	%r10d, %r11d
	movq	-8(%rsi,%r11), %r15
	movq	%r15, -8(%r8,%r11)
	leaq	24(%rcx), %r11
	andq	$-8, %r11
	subq	%r11, %r8
	addl	%r8d, %r10d
	subq	%r8, %rsi
	andl	$-8, %r10d
	cmpl	$8, %r10d
	jb	.L1636
	andl	$-8, %r10d
	xorl	%r8d, %r8d
	vmovq	%rax, %xmm2
.L1639:
	movl	%r8d, %r15d
	addl	$8, %r8d
	movq	(%rsi,%r15), %rax
	movq	%rax, (%r11,%r15)
	cmpl	%r10d, %r8d
	jb	.L1639
	vmovq	%xmm2, %rax
	jmp	.L1636
	.p2align 4
	.p2align 3
.L1624:
	movq	(%rsi), %r9
	movq	%r9, (%rdi)
	movl	%r8d, %r9d
	movq	-8(%rsi,%r9), %r10
	movq	%r10, -8(%rdi,%r9)
	leaq	24(%rcx), %r9
	andq	$-8, %r9
	subq	%r9, %rdi
	addl	%edi, %r8d
	subq	%rdi, %rsi
	andl	$-8, %r8d
	cmpl	$8, %r8d
	jb	.L1667
	andl	$-8, %r8d
	xorl	%edi, %edi
.L1628:
	movl	%edi, %r10d
	addl	$8, %edi
	movq	(%rsi,%r10), %r11
	movq	%r11, (%r9,%r10)
	cmpl	%r8d, %edi
	jb	.L1628
	jmp	.L1667
	.p2align 4
	.p2align 3
.L1669:
	addq	$1, %rax
	jc	.L1646
	movabsq	$230584300921369395, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	leaq	(%rax,%rax,4), %r14
	salq	$3, %r14
	jmp	.L1612
	.p2align 4
	.p2align 3
.L1671:
	leaq	1(%r11), %rsi
	cmpl	$8, %esi
	jnb	.L1615
	testb	$4, %sil
	jne	.L1677
	testl	%esi, %esi
	je	.L1621
	movzbl	16(%r15), %r9d
	movb	%r9b, 16(%rcx)
	testb	$2, %sil
	je	.L1621
	movl	%esi, %esi
	movzwl	-2(%rdx,%rsi), %r9d
	movw	%r9w, -2(%r8,%rsi)
	jmp	.L1621
	.p2align 4
	.p2align 3
.L1615:
	movq	16(%r15), %r9
	movq	%r9, 16(%rcx)
	movl	%esi, %r9d
	movq	-8(%rdx,%r9), %r10
	movq	%r10, -8(%r8,%r9)
	leaq	24(%rcx), %r9
	movq	%rdx, %r10
	andq	$-8, %r9
	subq	%r9, %r8
	addl	%r8d, %esi
	subq	%r8, %r10
	andl	$-8, %esi
	cmpl	$8, %esi
	jb	.L1621
	andl	$-8, %esi
	movq	%r15, (%rsp)
	xorl	%r8d, %r8d
	movq	%rbx, %r15
	vmovq	%rax, %xmm3
	movq	%rdx, %rbx
	movl	%esi, %edx
.L1619:
	movl	%r8d, %esi
	addl	$8, %r8d
	movq	(%r10,%rsi), %rax
	movq	%rax, (%r9,%rsi)
	cmpl	%edx, %r8d
	jb	.L1619
	movq	%rbx, %rdx
	vmovq	%xmm3, %rax
	movq	%r15, %rbx
	movq	(%rsp), %r15
	jmp	.L1621
.L1675:
	movl	(%rsi), %r11d
	movl	%r10d, %r10d
	movl	%r11d, (%r8)
	movl	-4(%rsi,%r10), %esi
	movl	%esi, -4(%r8,%r10)
	jmp	.L1636
.L1673:
	movl	(%rsi), %r9d
	movl	%r8d, %r8d
	movl	%r9d, (%rdi)
	movl	-4(%rsi,%r8), %esi
	movl	%esi, -4(%rdi,%r8)
	movq	8(%rdx), %r9
	jmp	.L1625
.L1663:
	movl	%r8d, %r8d
	movzwl	-2(%rsi,%r8), %esi
	movw	%si, -2(%rdi,%r8)
	movq	8(%rdx), %r9
	jmp	.L1625
.L1676:
	movl	%r10d, %r10d
	movzwl	-2(%rsi,%r10), %esi
	movw	%si, -2(%r8,%r10)
	jmp	.L1636
.L1677:
	movl	16(%r15), %r9d
	movl	%esi, %esi
	movl	%r9d, 16(%rcx)
	movl	-4(%rdx,%rsi), %r9d
	movl	%r9d, -4(%r8,%rsi)
	jmp	.L1621
.L1670:
	movabsq	$230584300921369395, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	(%rcx,%rcx,4), %r14
	salq	$3, %r14
	jmp	.L1612
.L1668:
	leaq	.LC85(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE11354:
	.size	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_, .-_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
	.section	.rodata.str1.8
	.align 8
.LC90:
	.string	"generate random float data finish"
	.section	.rodata.str1.1
.LC91:
	.string	"init float : cost %lf second\n"
	.section	.rodata.str1.8
	.align 8
.LC92:
	.string	"init float algorithm set finish"
	.section	.text.unlikely
.LCOLDB93:
	.text
.LHOTB93:
	.p2align 4
	.globl	_Z10init_floatv
	.type	_Z10init_floatv, @function
_Z10init_floatv:
.LFB10598:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10598
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movabsq	$6148914691236517205, %r15
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	gen(%rip), %r12
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movabsq	$8202884508482404352, %r14
	movabsq	$-2270628950310912, %r13
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$400000000, %edi
	movq	%rax, 8(%rsp)
	call	malloc@PLT
	movl	$400000000, %edi
	movq	%rax, %rbx
	movq	%rax, data_float(%rip)
	call	malloc@PLT
	movl	$400000000, %edi
	movq	%rax, dec_float(%rip)
	call	malloc@PLT
	leaq	400000000(%rbx), %rbp
	movq	2496+gen(%rip), %rdx
	movq	%rax, e10_float(%rip)
	jmp	.L1680
	.p2align 4
	.p2align 3
.L1679:
	leaq	1(%rax), %rdx
	movq	(%r12,%rax,8), %rax
	movq	%rdx, 2496+gen(%rip)
	movq	%rax, %rsi
	shrq	$29, %rsi
	andq	%r15, %rsi
	xorq	%rsi, %rax
	movq	%rax, %rsi
	salq	$17, %rsi
	andq	%r14, %rsi
	xorq	%rsi, %rax
	movq	%rax, %rsi
	salq	$37, %rsi
	andq	%r13, %rsi
	xorq	%rsi, %rax
	movq	%rax, %rsi
	shrq	$43, %rsi
	xorq	%rsi, %rax
	andl	$2147483647, %eax
	leal	-1(%rax), %esi
	cmpl	$2139095038, %esi
	jbe	.L1730
.L1680:
	movq	%rdx, %rax
	cmpq	$311, %rdx
	jbe	.L1679
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv
	movq	2496+gen(%rip), %rax
	jmp	.L1679
	.p2align 4
	.p2align 3
.L1730:
	movl	%eax, (%rbx)
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jne	.L1680
	leaq	.LC90(%rip), %rdi
.LEHB16:
	call	puts@PLT
	movq	dec_float(%rip), %rdi
	movl	$400000000, %edx
	xorl	%esi, %esi
	call	memset@PLT
	movq	e10_float(%rip), %rdi
	movl	$400000000, %edx
	xorl	%esi, %esi
	call	memset@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	8(%rsp), %rcx
	leaq	.LC91(%rip), %rsi
	movl	$2, %edi
	vxorps	%xmm0, %xmm0, %xmm0
	subq	%rcx, %rax
	vcvtusi2sdq	%rax, %xmm0, %xmm0
	movl	$1, %eax
	vdivsd	.LC87(%rip), %xmm0, %xmm0
	call	__printf_chk@PLT
	movq	_Z19algorithm_float_setB5cxx11(%rip), %r12
	movq	8+_Z19algorithm_float_setB5cxx11(%rip), %rbp
	cmpq	%rbp, %r12
	je	.L1682
	movq	%r12, %rbx
.L1686:
	movq	(%rbx), %rdi
	leaq	16(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L1683
	movq	16(%rbx), %rax
	addq	$40, %rbx
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	cmpq	%rbx, %rbp
	jne	.L1686
.L1685:
	movq	%r12, %rbp
	movq	%r12, 8+_Z19algorithm_float_setB5cxx11(%rip)
.L1682:
	movb	$50, 36(%rsp)
	movb	$0, 37(%rsp)
	movzwl	36(%rsp), %eax
	cmpq	%rbp, 16+_Z19algorithm_float_setB5cxx11(%rip)
	leaq	32(%rsp), %r13
	leaq	64(%rsp), %rbx
	movl	$862087800, 32(%rsp)
	movl	$862087800, 64(%rsp)
	leaq	48(%rsp), %r12
	leaq	_Z19algorithm_float_setB5cxx11(%rip), %r14
	movq	%rbx, 48(%rsp)
	movq	$5, 56(%rsp)
	movq	%r13, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movw	%ax, 68(%rsp)
	leaq	_ZL14xjb_f32_to_decfPjPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1687
	leaq	16(%rbp), %rax
	movq	%rax, 0(%rbp)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1688
	movq	%rdx, 0(%rbp)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rbp)
.L1689:
	movq	80(%rsp), %rax
	movq	$5, 8(%rbp)
	addq	$40, %rbp
	movq	%rax, -8(%rbp)
	movq	%rbp, 8+_Z19algorithm_float_setB5cxx11(%rip)
.L1690:
	movq	16(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L1691
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1691:
	movabsq	$7161117455558402931, %rax
	movq	8+_Z19algorithm_float_setB5cxx11(%rip), %rsi
	movb	$0, 47(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rax, 32(%rsp)
	movabsq	$7091612913507723363, %rax
	cmpq	16+_Z19algorithm_float_setB5cxx11(%rip), %rsi
	movq	$15, 56(%rsp)
	movq	%rax, 39(%rsp)
	vmovdqa	32(%rsp), %xmm1
	leaq	_Z24schubfach_xjb_f32_to_decfPjPi(%rip), %rax
	movq	%r13, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movq	%rax, 80(%rsp)
	vmovdqa	%xmm1, 64(%rsp)
	je	.L1692
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rax
	cmpq	%rbx, %rax
	je	.L1693
	movq	%rax, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1694:
	movq	80(%rsp), %rax
	movq	$15, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z19algorithm_float_setB5cxx11(%rip)
.L1695:
	movq	16(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L1696
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1696:
	movabsq	$7161117455558402931, %rax
	movq	8+_Z19algorithm_float_setB5cxx11(%rip), %rsi
	movb	$0, 43(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$842229859, 39(%rsp)
	movq	32(%rsp), %rax
	cmpq	16+_Z19algorithm_float_setB5cxx11(%rip), %rsi
	movq	$11, 56(%rsp)
	movq	%r13, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movq	%rax, 64(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, 72(%rsp)
	leaq	_Z20schubfach_f32_to_decfPjPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1697
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1698
	movq	%rdx, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1699:
	movq	80(%rsp), %rax
	movq	$11, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z19algorithm_float_setB5cxx11(%rip)
.L1700:
	movq	16(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L1701
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1701:
	movq	8+_Z19algorithm_float_setB5cxx11(%rip), %rsi
	movb	$50, 36(%rsp)
	movb	$0, 37(%rsp)
	movzwl	36(%rsp), %eax
	cmpq	16+_Z19algorithm_float_setB5cxx11(%rip), %rsi
	movl	$863336818, 32(%rsp)
	movq	%rbx, 48(%rsp)
	movl	$863336818, 64(%rsp)
	movq	$5, 56(%rsp)
	movq	%r13, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
	movw	%ax, 68(%rsp)
	leaq	_Z14ryu_f32_to_decfPjPi(%rip), %rax
	movq	%rax, 80(%rsp)
	je	.L1702
	leaq	16(%rsi), %rax
	movq	%rax, (%rsi)
	movq	48(%rsp), %rdx
	cmpq	%rbx, %rdx
	je	.L1703
	movq	%rdx, (%rsi)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsi)
.L1704:
	movq	80(%rsp), %rax
	movq	$5, 8(%rsi)
	addq	$40, %rsi
	movq	%rax, -8(%rsi)
	movq	%rsi, 8+_Z19algorithm_float_setB5cxx11(%rip)
.L1705:
	movq	16(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L1706
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1706:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1731
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	.LC92(%rip), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	puts@PLT
.LEHE16:
.L1683:
	.cfi_restore_state
	addq	$40, %rbx
	cmpq	%rbx, %rbp
	jne	.L1686
	jmp	.L1685
.L1687:
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
.LEHB17:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE17:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1690
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1690
.L1702:
	movq	%r12, %rdx
	movq	%r14, %rdi
.LEHB18:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE18:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1705
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1705
.L1697:
	movq	%r12, %rdx
	movq	%r14, %rdi
.LEHB19:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE19:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1700
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1700
.L1692:
	movq	%r12, %rdx
	movq	%r14, %rdi
.LEHB20:
	call	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_
.LEHE20:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1695
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1695
.L1688:
	movl	(%rbx), %edx
	movl	%edx, 16(%rbp)
	movzwl	4(%rbx), %edx
	movw	%dx, 4(%rax)
	jmp	.L1689
.L1693:
	vmovdqa	64(%rsp), %xmm2
	vmovdqu	%xmm2, 16(%rsi)
	jmp	.L1694
.L1698:
	movq	(%rbx), %rdx
	movq	%rdx, 16(%rsi)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	jmp	.L1699
.L1703:
	movl	(%rbx), %edx
	movl	%edx, 16(%rsi)
	movzwl	4(%rbx), %edx
	movw	%dx, 4(%rax)
	jmp	.L1704
.L1731:
	call	__stack_chk_fail@PLT
.L1718:
	endbr64
	movq	%rax, %rbx
	jmp	.L1714
.L1721:
	endbr64
	movq	%rax, %rbx
	jmp	.L1714
.L1720:
	endbr64
	movq	%rax, %rbx
	jmp	.L1714
.L1719:
	endbr64
	movq	%rax, %rbx
	jmp	.L1714
	.section	.gcc_except_table
.LLSDA10598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10598-.LLSDACSB10598
.LLSDACSB10598:
	.uleb128 .LEHB16-.LFB10598
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB10598
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L1718-.LFB10598
	.uleb128 0
	.uleb128 .LEHB18-.LFB10598
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L1721-.LFB10598
	.uleb128 0
	.uleb128 .LEHB19-.LFB10598
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L1720-.LFB10598
	.uleb128 0
	.uleb128 .LEHB20-.LFB10598
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L1719-.LFB10598
	.uleb128 0
.LLSDACSE10598:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC10598
	.type	_Z10init_floatv.cold, @function
_Z10init_floatv.cold:
.LFSB10598:
.L1714:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	leaq	16(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1732
	movq	%rbx, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.LEHE21:
.L1732:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10598:
	.section	.gcc_except_table
.LLSDAC10598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC10598-.LLSDACSBC10598
.LLSDACSBC10598:
	.uleb128 .LEHB21-.LCOLDB93
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSEC10598:
	.section	.text.unlikely
	.text
	.size	_Z10init_floatv, .-_Z10init_floatv
	.section	.text.unlikely
	.size	_Z10init_floatv.cold, .-_Z10init_floatv.cold
.LCOLDE93:
	.text
.LHOTE93:
	.p2align 4
	.globl	_Z11bench_floatv
	.type	_Z11bench_floatv, @function
_Z11bench_floatv:
.LFB10620:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	_Z10init_floatv
	leaq	.LC64(%rip), %rdi
	call	puts@PLT
	movq	_Z19algorithm_float_setB5cxx11(%rip), %rax
	cmpq	%rax, 8+_Z19algorithm_float_setB5cxx11(%rip)
	je	.L1734
	xorl	%r12d, %r12d
	leaq	_Z19algorithm_float_setB5cxx11(%rip), %rbp
	movabsq	$-3689348814741910323, %rbx
	.p2align 4
	.p2align 3
.L1735:
	movl	%r12d, %edi
	incq	%r12
	call	_Z23bench_float_single_impli
	movq	8+_Z19algorithm_float_setB5cxx11(%rip), %rax
	subq	0(%rbp), %rax
	sarq	$3, %rax
	imulq	%rbx, %rax
	cmpq	%rax, %r12
	jb	.L1735
.L1734:
	leaq	.LC65(%rip), %rdi
	call	puts@PLT
	movq	data_float(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1736
	call	free@PLT
.L1736:
	movq	dec_float(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1737
	call	free@PLT
.L1737:
	movq	e10_float(%rip), %rdi
	testq	%rdi, %rdi
	je	.L1738
	call	free@PLT
.L1738:
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	$0, data_float(%rip)
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	$0, dec_float(%rip)
	popq	%r12
	.cfi_def_cfa_offset 8
	movq	$0, e10_float(%rip)
	ret
	.cfi_endproc
.LFE10620:
	.size	_Z11bench_floatv, .-_Z11bench_floatv
	.section	.rodata.str1.1
.LC94:
	.string	"exit main"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB10621:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_Z10init_floatv
	call	_Z25bench_float_all_algorithmv
	call	_Z10free_floatv
	call	_Z11init_doublev
	call	_Z26bench_double_all_algorithmv
	call	_Z11free_doublev
	leaq	.LC94(%rip), %rdi
	call	puts@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10621:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDB95:
	.section	.text.startup
.LHOTB95:
	.p2align 4
	.type	_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd, @function
_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd:
.LFB11545:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11545
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	__dso_handle(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rbp, %rdx
	leaq	_Z13algorithm_setB5cxx11(%rip), %rsi
	leaq	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvdPyPiEESaISB_EED1Ev(%rip), %rdi
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	leaq	rd(%rip), %rbx
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	$0, _Z13algorithm_setB5cxx11(%rip)
	movq	$0, 8+_Z13algorithm_setB5cxx11(%rip)
	movq	$0, 16+_Z13algorithm_setB5cxx11(%rip)
	movq	%rsp, %r13
	call	__cxa_atexit@PLT
	leaq	_Z19algorithm_float_setB5cxx11(%rip), %rsi
	leaq	_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvfPjPiEESaISB_EED1Ev(%rip), %rdi
	movq	%rbp, %rdx
	leaq	16(%rsp), %r12
	movq	$0, _Z19algorithm_float_setB5cxx11(%rip)
	movq	$0, 8+_Z19algorithm_float_setB5cxx11(%rip)
	movq	$0, 16+_Z19algorithm_float_setB5cxx11(%rip)
	call	__cxa_atexit@PLT
	movq	%r13, %rsi
	movq	%rbx, %rdi
	movl	$1634100580, 16(%rsp)
	movq	%r12, (%rsp)
	movl	$1953264993, 19(%rsp)
	movq	$7, 8(%rsp)
	movb	$0, 23(%rsp)
.LEHB22:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE22:
	movq	(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L1753
	movq	16(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1753:
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	leaq	_ZNSt13random_deviceD1Ev(%rip), %rdi
	call	__cxa_atexit@PLT
	movq	%rbx, %rdi
.LEHB23:
	call	_ZNSt13random_device9_M_getvalEv@PLT
.LEHE23:
	movl	$1, %edx
	leaq	gen(%rip), %rdi
	movabsq	$6364136223846793005, %rsi
	movl	%eax, %ecx
	movq	%rcx, gen(%rip)
	.p2align 4
	.p2align 3
.L1754:
	movq	%rcx, %rax
	shrq	$62, %rax
	xorq	%rcx, %rax
	imulq	%rsi, %rax
	leaq	(%rax,%rdx), %rcx
	movq	%rcx, (%rdi,%rdx,8)
	incq	%rdx
	cmpq	$312, %rdx
	jne	.L1754
	movq	$312, 2496+gen(%rip)
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1762
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L1762:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L1758:
	endbr64
	movq	%rax, %rbx
	jmp	.L1755
	.section	.gcc_except_table
.LLSDA11545:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11545-.LLSDACSB11545
.LLSDACSB11545:
	.uleb128 .LEHB22-.LFB11545
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L1758-.LFB11545
	.uleb128 0
	.uleb128 .LEHB23-.LFB11545
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE11545:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC11545
	.type	_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd.cold, @function
_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd.cold:
.LFSB11545:
.L1755:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1763
	movq	%rbx, %rdi
.LEHB24:
	call	_Unwind_Resume@PLT
.LEHE24:
.L1763:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE11545:
	.section	.gcc_except_table
.LLSDAC11545:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC11545-.LLSDACSBC11545
.LLSDACSBC11545:
	.uleb128 .LEHB24-.LCOLDB95
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSEC11545:
	.section	.text.unlikely
	.section	.text.startup
	.size	_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd, .-_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd
	.section	.text.unlikely
	.size	_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd.cold, .-_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd.cold
.LCOLDE95:
	.section	.text.startup
.LHOTE95:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN9schubfach4DtoaEPcd
	.globl	gen
	.bss
	.align 32
	.type	gen, @object
	.size	gen, 2504
gen:
	.zero	2504
	.globl	rd
	.align 32
	.type	rd, @object
	.size	rd, 5000
rd:
	.zero	5000
	.globl	_Z19algorithm_float_setB5cxx11
	.align 16
	.type	_Z19algorithm_float_setB5cxx11, @object
	.size	_Z19algorithm_float_setB5cxx11, 24
_Z19algorithm_float_setB5cxx11:
	.zero	24
	.globl	_Z13algorithm_setB5cxx11
	.align 16
	.type	_Z13algorithm_setB5cxx11, @object
	.size	_Z13algorithm_setB5cxx11, 24
_Z13algorithm_setB5cxx11:
	.zero	24
	.globl	e10_float
	.align 8
	.type	e10_float, @object
	.size	e10_float, 8
e10_float:
	.zero	8
	.globl	dec_float
	.align 8
	.type	dec_float, @object
	.size	dec_float, 8
dec_float:
	.zero	8
	.globl	data_float
	.align 8
	.type	data_float, @object
	.size	data_float, 8
data_float:
	.zero	8
	.globl	e10
	.align 8
	.type	e10, @object
	.size	e10, 8
e10:
	.zero	8
	.globl	dec
	.align 8
	.type	dec, @object
	.size	dec, 8
dec:
	.zero	8
	.globl	data
	.align 8
	.type	data, @object
	.size	data, 8
data:
	.zero	8
	.section	.rodata
	.align 32
	.type	_ZZL29ldouble_convert_no_normalizedRyRiiE8mul_luts, @object
	.size	_ZZL29ldouble_convert_no_normalizedRyRiiE8mul_luts, 144
_ZZL29ldouble_convert_no_normalizedRyRiiE8mul_luts:
	.long	1179047063
	.long	1013386997
	.long	-774749268
	.long	1009939037
	.long	1337381548
	.long	1006470089
	.long	210911779
	.long	1002937505
	.long	168729423
	.long	999482292
	.long	269967078
	.long	996030752
	.long	1074967121
	.long	992488883
	.long	-1717006681
	.long	989026242
	.long	-170230311
	.long	985592528
	.long	-995177708
	.long	982041152
	.long	921844752
	.long	978570906
	.long	-1102028775
	.long	975155446
	.long	-22629561
	.long	971594334
	.long	-18103648
	.long	968116299
	.long	1703504000
	.long	964704726
	.long	-710367437
	.long	961148451
	.long	2008686428
	.long	957662441
	.long	-1829024695
	.long	954244487
	.align 32
	.type	_ZZL29ldouble_convert_no_normalizedRyRiiE8add_luts, @object
	.size	_ZZL29ldouble_convert_no_normalizedRyRiiE8add_luts, 144
_ZZL29ldouble_convert_no_normalizedRyRiiE8add_luts:
	.long	-2049400832
	.long	1130771543
	.long	1733216256
	.long	1134281069
	.long	1620131072
	.long	1137793252
	.long	2025163840
	.long	1141223197
	.long	-689770672
	.long	1144724196
	.long	105764242
	.long	1148252367
	.long	-941536522
	.long	1151675650
	.long	2044304820
	.long	1155168323
	.long	740819601
	.long	1158712106
	.long	-1221459147
	.long	1162128884
	.long	-453082110
	.long	1165613425
	.long	790565505
	.long	1169172455
	.long	-85534943
	.long	1172582880
	.long	966823146
	.long	1176059481
	.long	-2012696540
	.long	1179618799
	.long	-1257935337
	.long	1183037621
	.long	575064476
	.long	1186506467
	.long	-354911229
	.long	1190056091
	.align 32
	.type	_ZL10digits_lut, @object
	.size	_ZL10digits_lut, 53
_ZL10digits_lut:
	.string	""
	.string	""
	.string	""
	.ascii	"\001\001\001\002\002\002\003\003\003\003\004\004\004\005\005"
	.ascii	"\005\006\006\006\006\007\007\007\b\b\b\t\t\t\t\n\n\n\013\013"
	.ascii	"\013\f\f\f\f\r\r\r\016\016\016\017\017\017\017"
	.align 32
	.type	_ZZL15negative_diy_fpiE18negative_index_lut, @object
	.size	_ZZL15negative_diy_fpiE18negative_index_lut, 286
_ZZL15negative_diy_fpiE18negative_index_lut:
	.ascii	"\021\022\022\022\022\023\023\023\023\023\024\024\024\024\024"
	.ascii	"\025\025\025\025\025\026\026\026\026\026\027\027\027\027\027"
	.ascii	"\030\030\030\030\030\031\031\031\031\031\032\032\032\032\032"
	.ascii	"\033\033\033\033\034\034\034\034\034\035\035\035\035\035\036"
	.ascii	"\036\036\036\036\037\037\037\037\037     !!!!!\"\"\"\"\"####"
	.ascii	"#$$$$$%%%%&&&&&'''''((((()))))*****+++++,,,,,-----.....////0"
	.ascii	"000011111222223333344444555556666677777888889999:::::;;;;;<<"
	.ascii	"<<<=====>>>>>?????@@@@@AAAAABBBBBCCCCDDDDDEEEEEFFFFFGGGGGHHH"
	.ascii	"HHIIIIIJJJJJKKKKKL"
	.align 32
	.type	_ZZL15negative_diy_fpiE17negative_base_lut, @object
	.size	_ZZL15negative_diy_fpiE17negative_base_lut, 2288
_ZZL15negative_diy_fpiE17negative_base_lut:
	.quad	100000000000000000
	.quad	625000000000000000
	.quad	390625000000000000
	.quad	244140625000000000
	.quad	152587890625000000
	.quad	953674316406250000
	.quad	596046447753906250
	.quad	372529029846191407
	.quad	232830643653869629
	.quad	145519152283668519
	.quad	909494701772928238
	.quad	568434188608080149
	.quad	355271367880050093
	.quad	222044604925031309
	.quad	138777878078144568
	.quad	867361737988403548
	.quad	542101086242752218
	.quad	338813178901720136
	.quad	211758236813575085
	.quad	132348898008484428
	.quad	827180612553027675
	.quad	516987882845642297
	.quad	323117426778526436
	.quad	201948391736579023
	.quad	126217744835361889
	.quad	788860905221011806
	.quad	493038065763132379
	.quad	308148791101957737
	.quad	192592994438723586
	.quad	120370621524202241
	.quad	752316384526264006
	.quad	470197740328915004
	.quad	293873587705571877
	.quad	183670992315982424
	.quad	114794370197489015
	.quad	717464813734306341
	.quad	448415508583941463
	.quad	280259692864963415
	.quad	175162308040602134
	.quad	109476442525376334
	.quad	684227765783602086
	.quad	427642353614751304
	.quad	267276471009219565
	.quad	167047794380762228
	.quad	104404871487976393
	.quad	652530446799852453
	.quad	407831529249907783
	.quad	254894705781192365
	.quad	159309191113245228
	.quad	995682444457782674
	.quad	622301527786114171
	.quad	388938454866321357
	.quad	243086534291450848
	.quad	151929083932156780
	.quad	949556774575979875
	.quad	593472984109987422
	.quad	370920615068742139
	.quad	231825384417963837
	.quad	144890865261227398
	.quad	905567907882671237
	.quad	565979942426669523
	.quad	353737464016668452
	.quad	221085915010417783
	.quad	138178696881511115
	.quad	863616855509444463
	.quad	539760534693402790
	.quad	337350334183376744
	.quad	210843958864610465
	.quad	131777474290381541
	.quad	823609214314884627
	.quad	514755758946802892
	.quad	321722349341751808
	.quad	201076468338594880
	.quad	125672792711621800
	.quad	785454954447636249
	.quad	490909346529772656
	.quad	306818341581107910
	.quad	191761463488192444
	.quad	119850914680120278
	.quad	749068216750751733
	.quad	468167635469219833
	.quad	292604772168262396
	.quad	182877982605163998
	.quad	114298739128227499
	.quad	714367119551421864
	.quad	446479449719638665
	.quad	279049656074774166
	.quad	174406035046733854
	.quad	109003771904208659
	.quad	681273574401304116
	.quad	425795984000815072
	.quad	266122490000509420
	.quad	166326556250318388
	.quad	103954097656448993
	.quad	649713110352806202
	.quad	406070693970503876
	.quad	253794183731564923
	.quad	158621364832228077
	.quad	991383530201425478
	.quad	619614706375890924
	.quad	387259191484931828
	.quad	242036994678082393
	.quad	151273121673801496
	.quad	945457010461259344
	.quad	590910631538287090
	.quad	369319144711429432
	.quad	230824465444643395
	.quad	144265290902902122
	.quad	901658068143138260
	.quad	563536292589461413
	.quad	352210182868413383
	.quad	220131364292758365
	.quad	137582102682973978
	.quad	859888141768587361
	.quad	537430088605367101
	.quad	335893805378354438
	.quad	209933628361471524
	.quad	131208517725919703
	.quad	820053235786998139
	.quad	512533272366873837
	.quad	320333295229296148
	.quad	200208309518310093
	.quad	125130193448943808
	.quad	782063709055898799
	.quad	488789818159936750
	.quad	305493636349960469
	.quad	190933522718725293
	.quad	119333451699203308
	.quad	745834073120020675
	.quad	466146295700012922
	.quad	291341434812508076
	.quad	182088396757817548
	.quad	113805247973635968
	.quad	711282799835224795
	.quad	444551749897015497
	.quad	277844843685634686
	.quad	173653027303521679
	.quad	108533142064701049
	.quad	678332137904381557
	.quad	423957586190238473
	.quad	264973491368899046
	.quad	165608432105561904
	.quad	103505270065976190
	.quad	646907937912351186
	.quad	404317461195219491
	.quad	252698413247012182
	.quad	157936508279382614
	.quad	987103176746141335
	.quad	616939485466338335
	.quad	385587178416461459
	.quad	240991986510288412
	.quad	150619991568930258
	.quad	941374947305814109
	.quad	588359342066133818
	.quad	367724588791333637
	.quad	229827867994583523
	.quad	143642417496614702
	.quad	897765109353841886
	.quad	561103193346151179
	.quad	350689495841344487
	.quad	219180934900840304
	.quad	136988084313025190
	.quad	856175526956407438
	.quad	535109704347754649
	.quad	334443565217346656
	.quad	209027228260841660
	.quad	130642017663026038
	.quad	816512610393912733
	.quad	510320381496195458
	.quad	318950238435122162
	.quad	199343899021951351
	.quad	124589936888719595
	.quad	778687105554497464
	.quad	486679440971560915
	.quad	304174650607225572
	.quad	190109156629515983
	.quad	118818222893447489
	.quad	742613893084046807
	.quad	464133683177529254
	.quad	290083551985955784
	.quad	181302219991222365
	.quad	113313887494513978
	.quad	708211796840712363
	.quad	442632373025445227
	.quad	276645233140903267
	.quad	172903270713064542
	.quad	108064544195665339
	.quad	675403401222908366
	.quad	422127125764317729
	.quad	263829453602698581
	.quad	164893408501686613
	.quad	103058380313554133
	.quad	644114876959713331
	.quad	402571798099820832
	.quad	251607373812388020
	.quad	157254608632742513
	.quad	982841303954640703
	.quad	614275814971650440
	.quad	383922384357281525
	.quad	239951490223300953
	.quad	149969681389563096
	.quad	937310508684769347
	.quad	585819067927980842
	.quad	366136917454988027
	.quad	228835573409367517
	.quad	143022233380854698
	.quad	893888958630341861
	.quad	558680599143963663
	.quad	349175374464977290
	.quad	218234609040610806
	.quad	136396630650381754
	.quad	852478941564885961
	.quad	532799338478053726
	.quad	332999586548783579
	.quad	208124741592989737
	.quad	130077963495618586
	.quad	812987271847616158
	.quad	508117044904760099
	.quad	317573153065475062
	.quad	198483220665921914
	.quad	124052012916201196
	.quad	775325080726257475
	.quad	484578175453910922
	.quad	302861359658694327
	.quad	189288349786683954
	.quad	118305218616677472
	.quad	739407616354234195
	.quad	462129760221396372
	.quad	288831100138372733
	.quad	180519437586482958
	.quad	112824648491551849
	.quad	705154053072199054
	.quad	440721283170124409
	.quad	275450801981327756
	.quad	172156751238329847
	.quad	107597969523956155
	.quad	672487309524725965
	.quad	420304568452953728
	.quad	262690355283096080
	.quad	164181472051935050
	.quad	102613420032459407
	.quad	641333875202871289
	.quad	400833672001794556
	.quad	250521045001121598
	.quad	156575653125700999
	.quad	978597832035631240
	.quad	611623645022269525
	.quad	382264778138918453
	.quad	238915486336824034
	.quad	149322178960515021
	.quad	933263618503218879
	.quad	583289761564511800
	.quad	364556100977819875
	.quad	227847563111137422
	.quad	142404726944460889
	.quad	890029543402880554
	.quad	556268464626800346
	.quad	347667790391750217
	.quad	217292368994843886
	.quad	135807730621777429
	.quad	848798316386108927
	.quad	530498947741318079
	.quad	331561842338323800
	.quad	207226151461452375
	.quad	129516344663407735
	.quad	809477154146298338
	.quad	505923221341436462
	.quad	316202013338397789
	.quad	197626258336498618
	.quad	123516411460311637
	.quad	771977571626947726
	.quad	482485982266842329
	.quad	301553738916776456
	.quad	188471086822985285
	.quad	117794429264365803
	.quad	736215182902286268
	.quad	460134489313928918
	.quad	287584055821205574
	.quad	179740034888253484
	.quad	112337521805158428
	.quad	702109511282240170
	.quad	438818444551400106
	.quad	274261527844625067
	.quad	171413454902890667
	.quad	107133409314306667
	.quad	669583808214416666
	.align 32
	.type	_ZZL15positive_diy_fpiE18positive_index_lut, @object
	.size	_ZZL15positive_diy_fpiE18positive_index_lut, 244
_ZZL15positive_diy_fpiE18positive_index_lut:
	.string	"\021\021\021\021\021\020\020\020\020\020\017\017\017\017\017\016\016\016\016\016\r\r\r\r\r\f\f\f\f\f\013\013\013\013\013\n\n\n\n\n\t\t\t\t\t\b\b\b\b\007\007\007\007\007\006\006\006\006\006\005\005\005\005\005\004\004\004\004\004\003\003\003\003\003\002\002\002\002\002\001\001\001\001\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\377\377\377\377\377\376\376\376\376\375\375\375\375\375\374"
	.ascii	"\374\374\374\374\373\373\373\373\373\372\372\372\372\372\371"
	.ascii	"\371\371\371\371\370\370\370\370\370\367\367\367\367\367\366"
	.ascii	"\366\366\366\366\365\365\365\365\365\364\364\364\364\363\363"
	.ascii	"\363\363\363\362\362\362\362\362\361\361\361\361\361\360\360"
	.ascii	"\360\360\360\357\357\357\357\357\356\356\356\356\356\355\355"
	.ascii	"\355\355\355\354\354\354\354\354\353\353\353\353\353\352\352"
	.ascii	"\352\352\351\351\351\351\351\350\350\350\350\350\347\347\347"
	.ascii	"\347\347\346\346\346\346\346\345\345\345\345\345\344\344\344"
	.ascii	"\344\344\343\343\343\343\343\342\342\342\342\342\341\341\341"
	.ascii	"\341\341\340\340\340"
	.align 32
	.type	_ZZL15positive_diy_fpiE17positive_base_lut, @object
	.size	_ZZL15positive_diy_fpiE17positive_base_lut, 1952
_ZZL15positive_diy_fpiE17positive_base_lut:
	.quad	100000000000000000
	.quad	160000000000000000
	.quad	256000000000000000
	.quad	409600000000000000
	.quad	655360000000000000
	.quad	104857600000000000
	.quad	167772160000000000
	.quad	268435456000000000
	.quad	429496729600000000
	.quad	687194767360000000
	.quad	109951162777600000
	.quad	175921860444160000
	.quad	281474976710656000
	.quad	450359962737049600
	.quad	720575940379279360
	.quad	115292150460684698
	.quad	184467440737095517
	.quad	295147905179352826
	.quad	472236648286964522
	.quad	755578637259143235
	.quad	120892581961462918
	.quad	193428131138340668
	.quad	309485009821345069
	.quad	495176015714152110
	.quad	792281625142643376
	.quad	126765060022822941
	.quad	202824096036516705
	.quad	324518553658426727
	.quad	519229685853482763
	.quad	830767497365572421
	.quad	132922799578491588
	.quad	212676479325586540
	.quad	340282366920938464
	.quad	544451787073501542
	.quad	871122859317602467
	.quad	139379657490816395
	.quad	223007451985306232
	.quad	356811923176489971
	.quad	570899077082383953
	.quad	913438523331814324
	.quad	146150163733090292
	.quad	233840261972944467
	.quad	374144419156711148
	.quad	598631070650737836
	.quad	957809713041180537
	.quad	153249554086588886
	.quad	245199286538542218
	.quad	392318858461667548
	.quad	627710173538668077
	.quad	100433627766186893
	.quad	160693804425899028
	.quad	257110087081438445
	.quad	411376139330301511
	.quad	658201822928482417
	.quad	105312291668557187
	.quad	168499666669691499
	.quad	269599466671506398
	.quad	431359146674410237
	.quad	690174634679056379
	.quad	110427941548649021
	.quad	176684706477838433
	.quad	282695530364541493
	.quad	452312848583266389
	.quad	723700557733226222
	.quad	115792089237316196
	.quad	185267342779705913
	.quad	296427748447529461
	.quad	474284397516047137
	.quad	758855036025675419
	.quad	121416805764108067
	.quad	194266889222572908
	.quad	310827022756116652
	.quad	497323236409786643
	.quad	795717178255658628
	.quad	127314748520905381
	.quad	203703597633448609
	.quad	325925756213517774
	.quad	521481209941628439
	.quad	834369935906605501
	.quad	133499189745056881
	.quad	213598703592091009
	.quad	341757925747345614
	.quad	546812681195752982
	.quad	874900289913204770
	.quad	139984046386112764
	.quad	223974474217780422
	.quad	358359158748448674
	.quad	573374653997517878
	.quad	917399446396028605
	.quad	146783911423364577
	.quad	234854258277383323
	.quad	375766813243813317
	.quad	601226901190101307
	.quad	961963041904162091
	.quad	153914086704665935
	.quad	246262538727465496
	.quad	394020061963944793
	.quad	630432099142311668
	.quad	100869135862769867
	.quad	161390617380431787
	.quad	258224987808690859
	.quad	413159980493905375
	.quad	661055968790248599
	.quad	105768955006439776
	.quad	169230328010303642
	.quad	270768524816485827
	.quad	433229639706377322
	.quad	693167423530203715
	.quad	110906787764832595
	.quad	177450860423732152
	.quad	283921376677971442
	.quad	454274202684754307
	.quad	726838724295606891
	.quad	116294195887297103
	.quad	186070713419675364
	.quad	297713141471480583
	.quad	476341026354368932
	.quad	762145642166990291
	.quad	121943302746718447
	.quad	195109284394749515
	.quad	312174855031599224
	.quad	499479768050558758
	.quad	799167628880894012
	.quad	127866820620943042
	.quad	204586912993508867
	.quad	327339060789614188
	.quad	523742497263382700
	.quad	837987995621412319
	.quad	134078079299425971
	.quad	214524926879081554
	.quad	343239883006530486
	.quad	549183812810448778
	.quad	878694100496718044
	.quad	140591056079474887
	.quad	224945689727159820
	.quad	359913103563455711
	.quad	575860965701529137
	.quad	921377545122446620
	.quad	147420407219591460
	.quad	235872651551346335
	.quad	377396242482154136
	.quad	603833987971446617
	.quad	966134380754314587
	.quad	154581500920690334
	.quad	247330401473104535
	.quad	395728642356967255
	.quad	633165827771147608
	.quad	101306532443383618
	.quad	162090451909413788
	.quad	259344723055062060
	.quad	414951556888099296
	.quad	663922491020958874
	.quad	106227598563353420
	.quad	169964157701365472
	.quad	271942652322184755
	.quad	435108243715495608
	.quad	696173189944792972
	.quad	111387710391166876
	.quad	178220336625867001
	.quad	285152538601387202
	.quad	456244061762219522
	.quad	729990498819551235
	.quad	116798479811128198
	.quad	186877567697805117
	.quad	299004108316488186
	.quad	478406573306381098
	.quad	765450517290209756
	.quad	122472082766433561
	.quad	195955332426293698
	.quad	313528531882069916
	.quad	501645651011311866
	.quad	802633041618098985
	.quad	128421286658895838
	.quad	205474058654233341
	.quad	328758493846773345
	.quad	526013590154837351
	.quad	841621744247739762
	.quad	134659479079638362
	.quad	215455166527421379
	.quad	344728266443874207
	.quad	551565226310198730
	.quad	882504362096317968
	.quad	141200697935410875
	.quad	225921116696657400
	.quad	361473786714651840
	.quad	578358058743442944
	.quad	925372893989508710
	.quad	148059663038321394
	.quad	236895460861314230
	.quad	379032737378102768
	.quad	606452379804964428
	.quad	970323807687943085
	.quad	155251809230070894
	.quad	248402894768113430
	.quad	397444631628981488
	.quad	635911410606370380
	.quad	101745825697019261
	.quad	162793321115230818
	.quad	260469313784369308
	.quad	416750902054990893
	.quad	666801443287985428
	.quad	106688230926077669
	.quad	170701169481724270
	.quad	273121871170758832
	.quad	436994993873214130
	.quad	699191990197142608
	.quad	111870718431542818
	.quad	178993149490468508
	.quad	286389039184749613
	.quad	458222462695599380
	.quad	733155940312959007
	.quad	117304950450073442
	.quad	187687920720117506
	.quad	300300673152188010
	.quad	480481077043500815
	.quad	768769723269601304
	.quad	123003155723136209
	.quad	196805049157017934
	.quad	314888078651228694
	.quad	503820925841965911
	.quad	806113481347145457
	.quad	128978157015543274
	.quad	206365051224869237
	.quad	330184081959790779
	.quad	528294531135665247
	.quad	845271249817064395
	.quad	135243399970730304
	.quad	216389439953168485
	.quad	346223103925069576
	.quad	553956966280111322
	.quad	886331146048178115
	.quad	141812983367708499
	.quad	226900773388333598
	.quad	363041237421333756
	.quad	580865979874134009
	.quad	929385567798614415
	.quad	148701690847778307
	.quad	237922705356445291
	.quad	380676328570312465
	.quad	609082125712499943
	.quad	974531401139999909
	.quad	155925024182399986
	.quad	249480038691839977
	.quad	399168061906943963
	.align 32
	.type	_ZZL16xjb64_f64_to_decdPyPiE1g, @object
	.size	_ZZL16xjb64_f64_to_decdPyPiE1g, 9872
_ZZL16xjb64_f64_to_decdPyPiE1g:
	.quad	-3720041912917459700
	.quad	2185351144835019465
	.quad	-38366372719436721
	.quad	2731688931043774331
	.quad	-6941508010590729807
	.quad	8624834609543440813
	.quad	-4065198994811024355
	.quad	-3054014793352862696
	.quad	-469812725086392539
	.quad	5405853545163697438
	.quad	-7211161980820077193
	.quad	5684501474941004851
	.quad	-4402266457597708587
	.quad	2493940825248868160
	.quad	-891147053569747830
	.quad	7729112049988473104
	.quad	-7474495936122174250
	.quad	-9004363024039368022
	.quad	-4731433901725329908
	.quad	2579604275232953684
	.quad	-1302606358729274481
	.quad	3224505344041192105
	.quad	-7731658001846878407
	.quad	8932844867666826922
	.quad	-5052886483881210105
	.quad	-2669001970698630060
	.quad	-1704422086424124727
	.quad	-3336252463373287575
	.quad	-7982792831656159810
	.quad	2526528228819083170
	.quad	-5366805021142811859
	.quad	-6065211750830921845
	.quad	-2096820258001126919
	.quad	1641857348316123501
	.quad	-8228041688891786181
	.quad	-5891368184943504668
	.quad	-5673366092687344822
	.quad	-7364210231179380835
	.quad	-2480021597431793123
	.quad	4629795266307937668
	.quad	-8467542526035952558
	.quad	5199465050656154995
	.quad	-5972742139117552794
	.quad	-2724040723534582064
	.quad	-2854241655469553088
	.quad	-8016736922845615485
	.quad	-8701430062309552536
	.quad	6518754469289960082
	.quad	-6265101559459552766
	.quad	8148443086612450103
	.quad	-3219690930897053053
	.quad	962181821410786820
	.quad	-8929835859451740015
	.quad	-1704479370831952189
	.quad	-6550608805887287114
	.quad	7092772823314835571
	.quad	-3576574988931720989
	.quad	-357406007711231344
	.quad	-9152888395723407474
	.quad	8999993282035256218
	.quad	-6829424476226871438
	.quad	2026619565689294465
	.quad	-3925094576856201394
	.quad	-6690097579743157727
	.quad	-294682202642863838
	.quad	5472436080603216553
	.quad	-7101705404292871755
	.quad	8031958568804398250
	.quad	-4265445736938701790
	.quad	-3795109844276665900
	.quad	-720121152745989333
	.quad	9091170749936331337
	.quad	-7367604748107325189
	.quad	3376138709496513134
	.quad	-4597819916706768583
	.quad	-391512631556746487
	.quad	-1135588877456072824
	.quad	8733981247408842699
	.quad	-7627272076051127371
	.quad	5458738279630526687
	.quad	-4922404076636521310
	.quad	-7011635205744005353
	.quad	-1541319077368263733
	.quad	5070514048102157021
	.quad	-7880853450996246689
	.quad	863228270850154186
	.quad	-5239380795317920458
	.quad	-3532650679864695172
	.quad	-1937539975720012668
	.quad	-9027499368258256869
	.quad	-8128491512466089774
	.quad	-3336344095947716591
	.quad	-5548928372155224313
	.quad	-8782116138362033642
	.quad	-2324474446766642487
	.quad	7469098900757009563
	.quad	-8370325556870233411
	.quad	-2249342214667950879
	.quad	-5851220927660403859
	.quad	6411694268519837209
	.quad	-2702340141148116920
	.quad	-5820440219632367201
	.quad	-8606491615858654931
	.quad	7891439908798240260
	.quad	-6146428501395930760
	.quad	-3970758169284363388
	.quad	-3071349608317525546
	.quad	-351761693178066331
	.quad	-8837122532839535322
	.quad	6697677969404790400
	.quad	-6434717147622031249
	.quad	-851274575098787809
	.quad	-3431710416100151157
	.quad	-1064093218873484761
	.quad	-9062348037703676329
	.quad	8558313775058847833
	.quad	-6716249028702207507
	.quad	6086206200396171887
	.quad	-3783625267450371480
	.quad	-6227300304786948854
	.quad	-117845565885576446
	.quad	-3172439362556298163
	.quad	-6991182506319567135
	.quad	-4288617610811380304
	.quad	-4127292114472071014
	.quad	3862600023340550428
	.quad	-547429124662700864
	.quad	-4395122007679087773
	.quad	-7259672230555269896
	.quad	8782263791269039902
	.quad	-4462904269766699466
	.quad	-7468914334623251739
	.quad	-966944318780986428
	.quad	4498915137003099038
	.quad	-7521869226879198374
	.quad	-6411550076227838909
	.quad	-4790650515171610063
	.quad	5820620459997365076
	.quad	-1376627125537124675
	.quad	-6559282480285457367
	.quad	-7777920981101784778
	.quad	-8711237568605798758
	.quad	-5110715207949843068
	.quad	2946011094524915264
	.quad	-1776707991509915931
	.quad	3682513868156144080
	.quad	-8027971522334779313
	.quad	4607414176811284002
	.quad	-5423278384491086237
	.quad	1147581702586717098
	.quad	-2167411962186469893
	.quad	-3177208890193991531
	.quad	-8272161504007625539
	.quad	7237616480483531101
	.quad	-5728515861582144020
	.quad	-4788037454677749836
	.quad	-2548958808550292121
	.quad	-1373360799919799391
	.quad	-8510628282985014432
	.quad	-858350499949874619
	.quad	-6026599335303880135
	.quad	3538747893490044630
	.quad	-2921563150702462265
	.quad	9035120885289943692
	.quad	-8743505996830120772
	.quad	-5882264492762254952
	.quad	-6317696477610263061
	.quad	-2741144597525430787
	.quad	-3285434578585440922
	.quad	-3426430746906788484
	.quad	-8970925639256982432
	.quad	4776009810824339054
	.quad	-6601971030643840136
	.quad	5970012263530423817
	.quad	-3640777769877412266
	.quad	7462515329413029772
	.quad	-9193015133814464522
	.quad	52386062455755703
	.quad	-6879582898840692749
	.quad	-9157889458785081179
	.quad	-3987792605123478032
	.quad	6999382250228200142
	.quad	-373054737976959636
	.quad	8749227812785250178
	.quad	-7150688238876681629
	.quad	-3755104653863994447
	.quad	-4326674280168464132
	.quad	-4693880817329993059
	.quad	-796656831783192261
	.quad	-1255665003235103419
	.quad	-7415439547505577019
	.quad	8438581409832836171
	.quad	-4657613415954583370
	.quad	-3286831292991118498
	.quad	-1210330751515841308
	.quad	-8720225134666286027
	.quad	-7673985747338482674
	.quad	-3144297699952734815
	.quad	-4980796165745715438
	.quad	-8542058143368306422
	.quad	-1614309188754756393
	.quad	3157485376071780684
	.quad	-7926472270612804602
	.quad	8890957387685944784
	.quad	-5296404319838617848
	.quad	1890324697752655171
	.quad	-2008819381370884406
	.quad	2362905872190818964
	.quad	-8173041140997884610
	.quad	6088502188546649757
	.quad	-5604615407819967859
	.quad	-1612744301171463612
	.quad	-2394083241347571919
	.quad	7207441660390446293
	.quad	-8413831053483314306
	.quad	-2412877989897052923
	.quad	-5905602798426754978
	.quad	-7627783505798704058
	.quad	-2770317479606055818
	.quad	4300328673033783640
	.quad	-8648977452394866743
	.quad	-1923980597781273129
	.quad	-6199535797066195524
	.quad	6818396289628184397
	.quad	-3137733727905356501
	.quad	8522995362035230496
	.quad	-8878612607581929669
	.quad	3021029092058325108
	.quad	-6486579741050024183
	.quad	-835399653354481519
	.quad	-3496538657885142324
	.quad	8179122470161673909
	.quad	-9102865688819295809
	.quad	-4111420493003729615
	.quad	-6766896092596731857
	.quad	-5139275616254662019
	.quad	-3846934097318526917
	.quad	-6424094520318327523
	.quad	-196981603220770742
	.quad	-8030118150397909404
	.quad	-7040642529654063570
	.quad	-7324666853212387329
	.quad	-4189117143640191558
	.quad	4679224488766679550
	.quad	-624710411122851544
	.quad	-3374341425896426371
	.quad	-7307973034592864071
	.quad	-9026492418826348337
	.quad	-4523280274813692185
	.quad	-2059743486678159614
	.quad	-1042414325089727327
	.quad	-2574679358347699518
	.quad	-7569037980822161435
	.quad	3002511419460075706
	.quad	-4849611457600313890
	.quad	8364825292752482536
	.quad	-1450328303573004458
	.quad	1232659579085827362
	.quad	-7823984217374209643
	.quad	-3841273781498745803
	.quad	-5168294253290374149
	.quad	4421779809981343555
	.quad	-1848681798185579782
	.quad	915538744049291539
	.quad	-8072955151507069220
	.quad	5183897733458195116
	.quad	-5479507920956448621
	.quad	6479872166822743895
	.quad	-2237698882768172872
	.quad	3488154190101041965
	.quad	-8316090829371189901
	.quad	2180096368813151228
	.quad	-5783427518286599473
	.quad	-1886565557410948869
	.quad	-2617598379430861437
	.quad	-2358206946763686086
	.quad	-8553528014785370254
	.quad	7749492695127472004
	.quad	-6080224000054324913
	.quad	463493832054564197
	.quad	-2988593981640518238
	.quad	-4032318728359182658
	.quad	-8785400266166405755
	.quad	-4826042214438183113
	.quad	-6370064314280619289
	.quad	3190819268807046917
	.quad	-3350894374423386208
	.quad	-623161932418579258
	.quad	-9011838011655698236
	.quad	-7307005235402693892
	.quad	-6653111496142234891
	.quad	-4522070525825979461
	.quad	-3704703351750405709
	.quad	3570783879572301481
	.quad	-19193171260619233
	.quad	-148206168962011053
	.quad	-6929524759678968877
	.quad	-92628855601256908
	.quad	-4050219931171323192
	.quad	-115786069501571135
	.quad	-451088895536766085
	.quad	4466953431550423985
	.quad	-7199459587351560659
	.quad	486002885505321039
	.quad	-4387638465762062920
	.quad	5219189625309039203
	.quad	-872862063775190746
	.quad	6523987031636299003
	.quad	-7463067817500576073
	.quad	-534194123654701027
	.quad	-4717148753448332187
	.quad	-667742654568376284
	.quad	-1284749923383027329
	.quad	8388693718644305453
	.quad	-7720497729755473937
	.quad	-6286281471915778851
	.quad	-5038936143766954517
	.quad	-7857851839894723564
	.quad	-1686984161281305242
	.quad	8624429273841147160
	.quad	-7971894128441897632
	.quad	778582277723329071
	.quad	-5353181642124984136
	.quad	973227847154161339
	.quad	-2079791034228842266
	.quad	1216534808942701674
	.quad	-8217398424034108273
	.quad	-3851351762838199358
	.quad	-5660062011615247437
	.quad	-4814189703547749197
	.quad	-2463391496091671392
	.quad	-6017737129434686497
	.quad	-8457148712698376476
	.quad	7768129340171790700
	.quad	-5959749872445582691
	.quad	-8736582398494813241
	.quad	-2838001322129590460
	.quad	-1697355961263740744
	.quad	-8691279853972075893
	.quad	1244995533423855987
	.quad	-6252413799037706963
	.quad	-3055441601647567920
	.quad	-3203831230369745799
	.quad	5404070034795315908
	.quad	-8919923546622172981
	.quad	-3539985255894009413
	.quad	-6538218414850328322
	.quad	-4424981569867511767
	.quad	-3561087000135522498
	.quad	8303831092947774003
	.quad	-9143208402725783417
	.quad	578208414664970848
	.quad	-6817324484979841368
	.quad	-3888925500096174344
	.quad	-3909969587797413806
	.quad	-249470856692830026
	.quad	-275775966319379353
	.quad	-4923524589293425437
	.quad	-7089889006590693952
	.quad	-3077202868308390898
	.quad	-4250675239810979535
	.quad	765182433041899282
	.quad	-701658031336336515
	.quad	5568164059729762006
	.quad	-7356065297226292178
	.quad	5785945546544795206
	.quad	-4583395603105477319
	.quad	-1990940103673781801
	.quad	-1117558485454458744
	.quad	6734696907262548557
	.quad	-7616003081050118571
	.quad	4209185567039092848
	.quad	-4908317832885260310
	.quad	-8573576096483297652
	.quad	-1523711272679187483
	.quad	3118087934678041647
	.quad	-7869848573065574033
	.quad	4254647968387469982
	.quad	-5225624697904579637
	.quad	706623942056949573
	.quad	-1920344853953336643
	.quad	-3728406090856200938
	.quad	-8117744561361917258
	.quad	-6941939825212513490
	.quad	-5535494683275008668
	.quad	5157633273766521850
	.quad	-2307682335666372931
	.quad	6447041592208152312
	.quad	-8359830487432564938
	.quad	6335244004343789147
	.quad	-5838102090863318269
	.quad	-1304317031425039374
	.quad	-2685941595151759932
	.quad	-1630396289281299218
	.quad	-8596242524610931813
	.quad	1286845328412881941
	.quad	-6133617137336276863
	.quad	-3003129357911285478
	.quad	-3055335403242958174
	.quad	5469460339465668960
	.quad	-8827113654667930715
	.quad	8030098730593431004
	.quad	-6422206049907525490
	.quad	-3797434642040374957
	.quad	-3416071543957018958
	.quad	9088264752731695016
	.quad	-9052573742614218705
	.quad	-8154892584824854327
	.quad	-6704031159840385477
	.quad	8253128342678483707
	.quad	-3768352931373093942
	.quad	5704724409920716730
	.quad	-98755145788979524
	.quad	-2092466524453879895
	.quad	-6979250993759194058
	.quad	998051431430019018
	.quad	-4112377723771604669
	.quad	-7975807747567252036
	.quad	-528786136287117932
	.quad	8476984389250486571
	.quad	-7248020362820530564
	.quad	-3925256793573221701
	.quad	-4448339435098275301
	.quad	-294884973539139223
	.quad	-948738275445456222
	.quad	-368606216923924028
	.quad	-7510490449794491995
	.quad	-2536221894791146469
	.quad	-4776427043815727089
	.quad	6053094668365842721
	.quad	-1358847786342270957
	.quad	2954682317029915497
	.quad	-7766808894105001205
	.quad	-459166561069996766
	.quad	-5096825099203863602
	.quad	-573958201337495958
	.quad	-1759345355577441598
	.quad	-5329133770099257851
	.quad	-8017119874876982855
	.quad	-5636551615525730109
	.quad	-5409713825168840664
	.quad	2177682517447613172
	.quad	-2150456263033662926
	.quad	2722103146809516465
	.quad	-8261564192037121185
	.quad	6313000485183335695
	.quad	-5715269221619013577
	.quad	3279564588051781714
	.quad	-2532400508596379068
	.quad	-512230283362660762
	.quad	-8500279345513818773
	.quad	1985699082112030976
	.quad	-6013663163464885563
	.quad	-2129562165787349184
	.quad	-2905392935903719049
	.quad	6561419329620589328
	.quad	-8733399612580906262
	.quad	-7428327965055601430
	.quad	-6305063497298744923
	.quad	4549648098962661925
	.quad	-3269643353196043250
	.quad	-8147997931578836306
	.quad	-8961056123388608887
	.quad	1825030320404309165
	.quad	-6589634135808373205
	.quad	6892973918932774360
	.quad	-3625356651333078602
	.quad	4004531380238580046
	.quad	-9183376934724255983
	.quad	-2108853905778275375
	.quad	-6867535149977932074
	.quad	6587304654631931589
	.quad	-3972732919045027189
	.quad	-989241218564861322
	.quad	-354230130378896082
	.quad	-1236551523206076653
	.quad	-7138922859127891907
	.quad	6144684325637283948
	.quad	-4311967555482476980
	.quad	-6154202648235558777
	.quad	-778273425925708321
	.quad	-3081067291867060567
	.quad	-7403949918844649557
	.quad	-1925667057416912854
	.quad	-4643251380128424042
	.quad	-2407083821771141068
	.quad	-1192378206733142148
	.quad	-7620540795641314239
	.quad	-7662765406849295699
	.quad	-2456994988062127447
	.quad	-4966770740134231719
	.quad	6152128301777116499
	.quad	-1596777406740401745
	.quad	-6144897678060768089
	.quad	-7915514906853832947
	.quad	-3840561048787980055
	.quad	-5282707615139903279
	.quad	4422670725869800739
	.quad	-1991698500497491195
	.quad	-8306719647944912789
	.quad	-8162340590452013853
	.quad	8643358275316593219
	.quad	-5591239719637629412
	.quad	6192511825718353620
	.quad	-2377363631119648861
	.quad	7740639782147942025
	.quad	-8403381297090862394
	.quad	2532056854628769814
	.quad	-5892540602936190089
	.quad	-6058300968568813541
	.quad	-2753989735242849707
	.quad	-7572876210711016926
	.quad	-8638772612167862923
	.quad	9102010423587778133
	.quad	-6186779746782440750
	.quad	-2457545025797441046
	.quad	-3121788665050663033
	.quad	-7683617300674189211
	.quad	-8868646943297746252
	.quad	-4802260812921368257
	.quad	-6474122660694794911
	.quad	-1391139997724322417
	.quad	-3480967307441105734
	.quad	7484447039699372787
	.quad	-9093133594791772940
	.quad	-9157278655470055720
	.quad	-6754730975062328271
	.quad	-6834912300910181746
	.quad	-3831727700400522434
	.quad	679731660717048625
	.quad	-177973607073265139
	.quad	-8373707460958465027
	.quad	-7028762532061872568
	.quad	8601490892183123070
	.quad	-4174267146649952806
	.quad	-7694880458480647778
	.quad	-606147914885053103
	.quad	4216457482181353989
	.quad	-7296371474444240046
	.quad	-4282243101277735613
	.quad	-4508778324627912153
	.quad	8482254178684994196
	.quad	-1024286887357502287
	.quad	5991131704928854841
	.quad	-7557708332239520786
	.quad	-3173071712060547580
	.quad	-4835449396872013078
	.quad	-8578025658503072379
	.quad	-1432625727662628443
	.quad	3112525982153323238
	.quad	-7812920107430224633
	.quad	4251171748059520976
	.quad	-5154464115860392887
	.quad	702278666647013315
	.quad	-1831394126398103205
	.quad	5489534351736154548
	.quad	-8062150356639896359
	.quad	1125115960621402641
	.quad	-5466001927372482545
	.quad	6018080969204141205
	.quad	-2220816390788215277
	.quad	2910915193077788602
	.quad	-8305539271883716405
	.quad	-486521013540076076
	.quad	-5770238071427257602
	.quad	-608151266925095095
	.quad	-2601111570856684098
	.quad	-5371875102083756772
	.quad	-8543223759426509417
	.quad	3560107088838733873
	.quad	-6067343680855748868
	.quad	-161552157378970562
	.quad	-2972493582642298180
	.quad	4409745821703674701
	.quad	-8775337516792518219
	.quad	-6467280898289979120
	.quad	-6357485877563259869
	.quad	1139270913992301908
	.quad	-3335171328526686933
	.quad	-3187597375937010519
	.quad	-9002011107970261189
	.quad	7231123676894144234
	.quad	-6640827866535438582
	.quad	4427218577690292388
	.quad	-3689348814741910324
	.quad	-3689348814741910323
	.quad	-9223372036854775808
	.quad	0
	.quad	-6917529027641081856
	.quad	0
	.quad	-4035225266123964416
	.quad	0
	.quad	-432345564227567616
	.quad	0
	.quad	-7187745005283311616
	.quad	0
	.quad	-4372995238176751616
	.quad	0
	.quad	-854558029293551616
	.quad	0
	.quad	-7451627795949551616
	.quad	0
	.quad	-4702848726509551616
	.quad	0
	.quad	-1266874889709551616
	.quad	0
	.quad	-7709325833709551616
	.quad	0
	.quad	-5024971273709551616
	.quad	0
	.quad	-1669528073709551616
	.quad	0
	.quad	-7960984073709551616
	.quad	0
	.quad	-5339544073709551616
	.quad	0
	.quad	-2062744073709551616
	.quad	0
	.quad	-8206744073709551616
	.quad	0
	.quad	-5646744073709551616
	.quad	0
	.quad	-2446744073709551616
	.quad	0
	.quad	-8446744073709551616
	.quad	0
	.quad	-5946744073709551616
	.quad	0
	.quad	-2821744073709551616
	.quad	0
	.quad	-8681119073709551616
	.quad	0
	.quad	-6239712823709551616
	.quad	0
	.quad	-3187955011209551616
	.quad	0
	.quad	-8910000909647051616
	.quad	0
	.quad	-6525815118631426616
	.quad	0
	.quad	-3545582879861895366
	.quad	0
	.quad	-9133518327554766460
	.quad	4611686018427387904
	.quad	-6805211891016070171
	.quad	5764607523034234880
	.quad	-3894828845342699810
	.quad	-6629298651489370112
	.quad	-256850038250986858
	.quad	5548434740920451072
	.quad	-7078060301547948643
	.quad	-1143914305352105984
	.quad	-4235889358507547899
	.quad	7793479155164643328
	.quad	-683175679707046970
	.quad	-4093209111326359552
	.quad	-7344513827457986212
	.quad	4359273333062107136
	.quad	-4568956265895094861
	.quad	5449091666327633920
	.quad	-1099509313941480672
	.quad	2199678564482154496
	.quad	-7604722348854507276
	.quad	1374799102801346560
	.quad	-4894216917640746191
	.quad	1718498878501683200
	.quad	-1506085128623544835
	.quad	6759809616554491904
	.quad	-7858832233030797378
	.quad	6530724019560251392
	.quad	-5211854272861108819
	.quad	-1059967012404461568
	.quad	-1903131822648998119
	.quad	7898413271349198848
	.quad	-8106986416796705681
	.quad	-1981020733047832576
	.quad	-5522047002568494197
	.quad	-2476275916309790720
	.quad	-2290872734783229842
	.quad	-3095344895387238400
	.quad	-8349324486880600507
	.quad	4982938468024057856
	.quad	-5824969590173362730
	.quad	-7606384970252091392
	.quad	-2669525969289315508
	.quad	4327076842467049472
	.quad	-8585982758446904049
	.quad	-6518949010312869888
	.quad	-6120792429631242157
	.quad	-8148686262891087360
	.quad	-3039304518611664792
	.quad	8260886245095692416
	.quad	-8817094351773372351
	.quad	5163053903184807760
	.quad	-6409681921289327535
	.quad	-7381240676301154012
	.quad	-3400416383184271515
	.quad	-3178808521666707
	.quad	-9042789267131251553
	.quad	-4613672773753429595
	.quad	-6691800565486676537
	.quad	-5767090967191786994
	.quad	-3753064688430957767
	.quad	-7208863708989733743
	.quad	-79644842111309304
	.quad	212292400617608629
	.quad	-6967307053960650171
	.quad	132682750386005393
	.quad	-4097447799023424810
	.quad	4777539456409894646
	.quad	-510123730351893109
	.quad	-3251447716342407501
	.quad	-7236356359111015049
	.quad	7191217214140771120
	.quad	-4433759430461380907
	.quad	4377335499248575996
	.quad	-930513269649338230
	.quad	-8363388681221443717
	.quad	-7499099821171918250
	.quad	-7532960934977096275
	.quad	-4762188758037509908
	.quad	4418856886560793368
	.quad	-1341049929119499481
	.quad	5523571108200991710
	.quad	-7755685233340769032
	.quad	-8076983103442849941
	.quad	-5082920523248573386
	.quad	-5484542860876174523
	.quad	-1741964635633328828
	.quad	6979379479186945559
	.quad	-8006256924911912374
	.quad	-4861259862362934834
	.quad	-5396135137712502563
	.quad	7758483227328495170
	.quad	-2133482903713240300
	.quad	-4136954021121544750
	.quad	-8250955842461857044
	.quad	-279753253987271517
	.quad	-5702008784649933400
	.quad	4261994450943298508
	.quad	-2515824962385028846
	.quad	5327493063679123135
	.quad	-8489919629131724885
	.quad	7941369183226839864
	.quad	-6000713517987268202
	.quad	5315025460606161925
	.quad	-2889205879056697349
	.quad	-2579590211097073401
	.quad	-8723282702051517699
	.quad	7611128154919104932
	.quad	-6292417359137009220
	.quad	-4321147861633282547
	.quad	-3253835680493873621
	.quad	-789748808614215279
	.quad	-8951176327949752869
	.quad	8729779031470891259
	.quad	-6577284391509803182
	.quad	6300537770911226169
	.quad	-3609919470959866074
	.quad	-1347699823215743097
	.quad	-9173728696990998152
	.quad	6075216638131242421
	.quad	-6855474852811359786
	.quad	7594020797664053026
	.quad	-3957657547586811828
	.quad	269153960225290474
	.quad	-335385916056126881
	.quad	336442450281613092
	.quad	-7127145225176161157
	.quad	7127805559067090039
	.quad	-4297245513042813542
	.quad	4298070930406474645
	.quad	-759870872876129024
	.quad	-3850783373846682502
	.quad	-7392448323188662496
	.quad	9122475437414293196
	.quad	-4628874385558440216
	.quad	-7043649776941685121
	.quad	-1174406963520662366
	.quad	-4192876202749718497
	.quad	-7651533379841495835
	.quad	-4926390635932268013
	.quad	-4952730706374481889
	.quad	3065383741939440792
	.quad	-1579227364540714458
	.quad	-779956341003086914
	.quad	-7904546130479028392
	.quad	6430056314514152535
	.quad	-5268996644671397586
	.quad	8037570393142690669
	.quad	-1974559787411859078
	.quad	823590954573587528
	.quad	-8151628894773493780
	.quad	5126430365035880109
	.quad	-5577850100039479321
	.quad	6408037956294850136
	.quad	-2360626606621961247
	.quad	3398361426941174766
	.quad	-8392920656779807636
	.quad	-4793553135802847627
	.quad	-5879464802547371641
	.quad	-1380255401326171630
	.quad	-2737644984756826647
	.quad	-1725319251657714538
	.quad	-8628557143114098510
	.quad	3533361486141316318
	.quad	-6174010410465235234
	.quad	-4806670179178130410
	.quad	-3105826994654156138
	.quad	7826720331309500699
	.quad	-8858670899299929442
	.quad	280014188641050033
	.quad	-6461652605697523899
	.quad	-8873354301053463267
	.quad	-3465379738694516970
	.quad	-1868320839462053276
	.quad	-9083391364325154962
	.quad	5749828502977298559
	.quad	-6742553186979055799
	.quad	-2036086408133152610
	.quad	-3816505465296431844
	.quad	6678264026688335046
	.quad	-158945813193151901
	.quad	8347830033360418807
	.quad	-7016870160886801794
	.quad	2911550761636567803
	.quad	-4159401682681114339
	.quad	-5583933584809066055
	.quad	-587566084924005019
	.quad	2243455055843443239
	.quad	-7284757830718584993
	.quad	3708002419115845977
	.quad	-4494261269970843337
	.quad	23317005467419567
	.quad	-1006140569036166268
	.quad	-4582539761593113445
	.quad	-7546366883288685774
	.quad	-558244341782001951
	.quad	-4821272585683469313
	.quad	-5309491445654890343
	.quad	-1414904713676948737
	.quad	-6636864307068612929
	.quad	-7801844473689174817
	.quad	-4148040191917883080
	.quad	-5140619573684080617
	.quad	-5185050239897353851
	.quad	-1814088448677712867
	.quad	-6481312799871692314
	.quad	-8051334308064652398
	.quad	-8662506518347195600
	.quad	-5452481866653427593
	.quad	3006924907348169212
	.quad	-2203916314889396588
	.quad	-853029884242176389
	.quad	-8294976724446954723
	.quad	1772699331562333709
	.quad	-5757034887131305500
	.quad	6827560182880305040
	.quad	-2584607590486743971
	.quad	8534450228600381300
	.quad	-8532908771695296838
	.quad	7639874402088932265
	.quad	-6054449946191733143
	.quad	326470965756389523
	.quad	-2956376414312278525
	.quad	5019774725622874807
	.quad	-8765264286586255934
	.quad	831516194300602803
	.quad	-6344894339805432014
	.quad	-8183976793979022305
	.quad	-3319431906329402113
	.quad	3605087062808385831
	.quad	-8992173969096958177
	.quad	9170708441896323001
	.quad	-6628531442943809817
	.quad	6851699533943015847
	.quad	-3673978285252374367
	.quad	3952938399001381904
	.quad	-9213765455923815836
	.quad	-4446942528265218166
	.quad	-6905520801477381891
	.quad	-946992141904134803
	.quad	-4020214983419339459
	.quad	8039631859474607304
	.quad	-413582710846786420
	.quad	-3785518230938904582
	.quad	-7176018221920323369
	.quad	-60105885123121412
	.quad	-4358336758973016307
	.quad	-75132356403901765
	.quad	-836234930288882479
	.quad	9129456591349898602
	.quad	-7440175859071633406
	.quad	-1211618658047395230
	.quad	-4688533805412153853
	.quad	-6126209340986631941
	.quad	-1248981238337804412
	.quad	-7657761676233289927
	.quad	-7698142301602209614
	.quad	-2480258038432112252
	.quad	-5010991858575374113
	.quad	-7712008566467528219
	.quad	-1652053804791829737
	.quad	8806733365625141342
	.quad	-7950062655635975442
	.quad	-6025006692552756421
	.quad	-5325892301117581398
	.quad	6303799689591218186
	.quad	-2045679357969588844
	.quad	-1343622424865753076
	.quad	-8196078626372074883
	.quad	1466078993672598280
	.quad	-5633412264537705700
	.quad	6444284760518135753
	.quad	-2430079312244744221
	.quad	8055355950647669692
	.quad	-8436328597794046994
	.quad	2728754459941099605
	.quad	-5933724728815170839
	.quad	-5812428961928401301
	.quad	-2805469892591575644
	.quad	1957835834444274181
	.quad	-8670947710510816634
	.quad	-7999724640327104445
	.quad	-6226998619711132888
	.quad	3835402254873283156
	.quad	-3172062256211528206
	.quad	4794252818591603945
	.quad	-8900067937773286985
	.quad	7608094030047140370
	.quad	-6513398903789220827
	.quad	4898431519131537558
	.quad	-3530062611309138130
	.quad	-7712018656367741764
	.quad	-9123818159709293187
	.quad	2097517367411243254
	.quad	-6793086681209228580
	.quad	7233582727691441971
	.quad	-3879672333084147821
	.quad	9041978409614302463
	.quad	-237904397927796872
	.quad	6690786993590490175
	.quad	-7066219276345954901
	.quad	4181741870994056360
	.quad	-4221088077005055722
	.quad	615491320315182545
	.quad	-664674077828931749
	.quad	-8454007886460797626
	.quad	-7332950326284164199
	.quad	3939617107816777292
	.quad	-4554501889427817345
	.quad	-8910536670511192098
	.quad	-1081441343357383777
	.quad	7308573235570561494
	.quad	-7593429867239446717
	.quad	-6961356773836868826
	.quad	-4880101315621920492
	.quad	-8701695967296086033
	.quad	-1488440626100012711
	.quad	-6265433940692719637
	.quad	-7847804418953589800
	.quad	695789805494438131
	.quad	-5198069505264599346
	.quad	869737256868047664
	.quad	-1885900863153361279
	.quad	-8136200465769716229
	.quad	-8096217067111932656
	.quad	-473439272678684739
	.quad	-5508585315462527915
	.quad	4019886927579031981
	.quad	-2274045625900771990
	.quad	-8810199395808373736
	.quad	-8338807543829064350
	.quad	-7812217631593927537
	.quad	-5811823411358942533
	.quad	4069786015789754291
	.quad	-2653093245771290262
	.quad	475546501309804959
	.quad	-8575712306248138270
	.quad	4908902581746016004
	.quad	-6107954364382784934
	.quad	-3087243809672255804
	.quad	-3023256937051093263
	.quad	-8470740780517707659
	.quad	-8807064613298015146
	.quad	-682526969396179382
	.quad	-6397144748195131028
	.quad	-5464844730172612132
	.quad	-3384744916816525881
	.quad	-2219369894288377261
	.quad	-9032994600651410532
	.quad	-1387106183930235788
	.quad	-6679557232386875260
	.quad	2877803288514593169
	.quad	-3737760522056206171
	.quad	3597254110643241461
	.quad	-60514634142869810
	.quad	9108253656731439730
	.quad	-6955350673980375487
	.quad	1080972517029761927
	.quad	-4082502324048081455
	.quad	5962901664714590313
	.quad	-491441886632713915
	.quad	-6381430974388925821
	.quad	-7224680206786528053
	.quad	-8600080377420466542
	.quad	-4419164240055772162
	.quad	7696643601933968438
	.quad	-912269281642327298
	.quad	397432465562684740
	.quad	-7487697328667536418
	.quad	-4363290727450709941
	.quad	-4747935642407032618
	.quad	8380944645968776285
	.quad	-1323233534581402868
	.quad	1252808770606194548
	.quad	-7744549986754458649
	.quad	-8440366555225904215
	.quad	-5069001465015685407
	.quad	7896285879677171347
	.quad	-1724565812842218855
	.quad	-3964700705685699528
	.quad	-7995382660667468640
	.quad	2133748077373825699
	.quad	-5382542307406947896
	.quad	2667185096717282124
	.quad	-2116491865831296966
	.quad	3333981370896602654
	.quad	-8240336443785642460
	.quad	6695424375237764563
	.quad	-5688734536304665171
	.quad	8369280469047205704
	.quad	-2499232151953443560
	.quad	-3373457468973156582
	.quad	-8479549122611984081
	.quad	-9025939945749304720
	.quad	-5987750384837592197
	.quad	7164319141522920716
	.quad	-2873001962619602342
	.quad	4343712908476262991
	.quad	-8713155254278333320
	.quad	7326506586225052274
	.quad	-6279758049420528746
	.quad	9158133232781315342
	.quad	-3238011543348273028
	.quad	2224294504121868369
	.quad	-8941286242233752499
	.quad	-7833187971778608077
	.quad	-6564921784364802720
	.quad	-568112927868484288
	.quad	-3594466212028615495
	.quad	3901544858591782543
	.quad	-9164070410158966541
	.quad	-4479063491021217766
	.quad	-6843401994271320272
	.quad	-5598829363776522208
	.quad	-3942566474411762436
	.quad	-2386850686293264856
	.quad	-316522074587315140
	.quad	1628122660560806834
	.quad	-7115355324258153819
	.quad	-8205795374004271537
	.quad	-4282508136895304370
	.quad	-1033872180650563613
	.quad	-741449152691742558
	.quad	-5904026244240592420
	.quad	-7380934748073420955
	.quad	-5995859411864064214
	.quad	-4614482416664388289
	.quad	1728547772024695540
	.quad	-1156417002403097458
	.quad	-2451001303396518479
	.quad	-7640289654143017767
	.quad	5385653213018257807
	.quad	-4938676049251384305
	.quad	-7102991539009341454
	.quad	-1561659043136842477
	.quad	-8878739423761676818
	.quad	-7893565929601608404
	.quad	3674159897003727797
	.quad	-5255271393574622601
	.quad	4592699871254659746
	.quad	-1957403223540890347
	.quad	1129188820640936779
	.quad	-8140906042354138323
	.quad	3011586022114279439
	.quad	-5564446534515285000
	.quad	8376168546070237203
	.quad	-2343872149716718346
	.quad	-7976533391121755113
	.quad	-8382449121214030822
	.quad	1932195658189984911
	.quad	-5866375383090150624
	.quad	-6808127464117294670
	.quad	-2721283210435300376
	.quad	-3898473311719230433
	.quad	-8618331034163144591
	.quad	9092669226243950739
	.quad	-6161227774276542835
	.quad	-2469221522477225288
	.quad	-3089848699418290639
	.quad	6136845133758244198
	.quad	-8848684464777513506
	.quad	-3082000819042179232
	.quad	-6449169562544503978
	.quad	-8464187042230111944
	.quad	-3449775934753242068
	.quad	3254824252494523782
	.quad	-9073638986861858149
	.quad	-7189106879045698444
	.quad	-6730362715149934782
	.quad	-8986383598807123056
	.quad	-3801267375510030573
	.quad	2602078556773259892
	.quad	-139898200960150313
	.quad	-1359087822460813039
	.quad	-7004965403241175802
	.quad	-849429889038008149
	.quad	-4144520735624081848
	.quad	-5673473379724898090
	.quad	-568964901102714406
	.quad	-2480155706228734709
	.quad	-7273132090830278360
	.quad	-3855940325606653145
	.quad	-4479729095110460046
	.quad	-208239388580928527
	.quad	-987975350460687153
	.quad	-4871985254153548563
	.quad	-7535013621679011327
	.quad	-3044990783845967852
	.quad	-4807081008671376254
	.quad	5417133557047315993
	.quad	-1397165242411832414
	.quad	-2451955090545630817
	.quad	-7790757304148477115
	.quad	-3838314940804713212
	.quad	-5126760611758208489
	.quad	4425478360848884292
	.quad	-1796764746270372707
	.quad	920161932633717461
	.quad	-8040506994060064798
	.quad	2880944217109767366
	.quad	-5438947724147693094
	.quad	-5622191765467566601
	.quad	-2186998636757228463
	.quad	6807318348447705460
	.quad	-8284403175614349646
	.quad	-2662955059861265943
	.quad	-5743817951090549153
	.quad	-7940379843253970333
	.quad	-2568086420435798537
	.quad	8521269269642088700
	.quad	-8522583040413455942
	.quad	-6203421752542164322
	.quad	-6041542782089432023
	.quad	6080780864604458309
	.quad	-2940242459184402125
	.quad	-6234081974526590826
	.quad	-8755180564631333184
	.quad	5327070802775656542
	.quad	-6332289687361778576
	.quad	6658838503469570677
	.quad	-3303676090774835316
	.quad	8323548129336963346
	.quad	-8982326584375353929
	.quad	-4021154456019173716
	.quad	-6616222212041804507
	.quad	-5026443070023967146
	.quad	-3658591746624867729
	.quad	2940318199324816876
	.quad	-9204148869281624187
	.quad	8755227902219092404
	.quad	-6893500068174642330
	.quad	-2891023177508298208
	.quad	-4005189066790915008
	.quad	-8225464990312760664
	.quad	-394800315061255856
	.quad	-5670145219463562926
	.quad	-7164279224554366766
	.quad	7985374283903742932
	.quad	-4343663012265570553
	.quad	758345818024902857
	.quad	-817892746904575288
	.quad	-3663753745896259333
	.quad	-7428711994456441411
	.quad	-9207375118826243939
	.quad	-4674203974643163860
	.quad	-2285846861678029116
	.quad	-1231068949876566920
	.quad	1754377441329851509
	.quad	-7686947121313936181
	.quad	1096485900831157193
	.quad	-4996997883215032323
	.quad	-3241078642388441413
	.quad	-1634561335591402499
	.quad	5172023733869224042
	.quad	-7939129862385708418
	.quad	5538357842881958978
	.quad	-5312226309554747619
	.quad	-2300424733252327085
	.quad	-2028596868516046619
	.quad	6347841120289366951
	.quad	-8185402070463610993
	.quad	6273243709394548297
	.quad	-5620066569652125837
	.quad	3229868618315797467
	.quad	-2413397193637769393
	.quad	-574350245532641070
	.quad	-8425902273664687727
	.quad	-358968903457900669
	.quad	-5920691823653471754
	.quad	8774660907532399972
	.quad	-2789178761139451788
	.quad	1744954097560724157
	.quad	-8660765753353239224
	.quad	-8132775725879323210
	.quad	-6214271173264161126
	.quad	-5554283638921766109
	.quad	-3156152948152813503
	.quad	6892203506629956076
	.quad	-8890124620236590296
	.quad	-2609901835997359308
	.quad	-6500969756868349965
	.quad	1349308723430688769
	.quad	-3514526177658049553
	.quad	-2925050114139026943
	.quad	-9114107888677362827
	.quad	-1828156321336891839
	.quad	-6780948842419315629
	.quad	6938176635183661009
	.quad	-3864500034596756632
	.quad	4061034775552188357
	.quad	-218939024818557886
	.quad	5076293469440235446
	.align 32
	.type	_ZL10exp_result, @object
	.size	_ZL10exp_result, 5064
_ZL10exp_result:
	.quad	5721738653029
	.quad	5717443685733
	.quad	5713148718437
	.quad	5708853751141
	.quad	5704558783845
	.quad	5743196712293
	.quad	5738901744997
	.quad	5734606777701
	.quad	5730311810405
	.quad	5726016843109
	.quad	5721721875813
	.quad	5717426908517
	.quad	5713131941221
	.quad	5708836973925
	.quad	5704542006629
	.quad	5743179935077
	.quad	5738884967781
	.quad	5734590000485
	.quad	5730295033189
	.quad	5726000065893
	.quad	5721705098597
	.quad	5717410131301
	.quad	5713115164005
	.quad	5708820196709
	.quad	5704525229413
	.quad	5743330864485
	.quad	5739035897189
	.quad	5734740929893
	.quad	5730445962597
	.quad	5726150995301
	.quad	5721856028005
	.quad	5717561060709
	.quad	5713266093413
	.quad	5708971126117
	.quad	5704676158821
	.quad	5743314087269
	.quad	5739019119973
	.quad	5734724152677
	.quad	5730429185381
	.quad	5726134218085
	.quad	5721839250789
	.quad	5717544283493
	.quad	5713249316197
	.quad	5708954348901
	.quad	5704659381605
	.quad	5743297310053
	.quad	5739002342757
	.quad	5734707375461
	.quad	5730412408165
	.quad	5726117440869
	.quad	5721822473573
	.quad	5717527506277
	.quad	5713232538981
	.quad	5708937571685
	.quad	5704642604389
	.quad	5743280532837
	.quad	5738985565541
	.quad	5734690598245
	.quad	5730395630949
	.quad	5726100663653
	.quad	5721805696357
	.quad	5717510729061
	.quad	5713215761765
	.quad	5708920794469
	.quad	5704625827173
	.quad	5743263755621
	.quad	5738968788325
	.quad	5734673821029
	.quad	5730378853733
	.quad	5726083886437
	.quad	5721788919141
	.quad	5717493951845
	.quad	5713198984549
	.quad	5708904017253
	.quad	5704609049957
	.quad	5743246978405
	.quad	5738952011109
	.quad	5734657043813
	.quad	5730362076517
	.quad	5726067109221
	.quad	5721772141925
	.quad	5717477174629
	.quad	5713182207333
	.quad	5708887240037
	.quad	5704592272741
	.quad	5743230201189
	.quad	5738935233893
	.quad	5734640266597
	.quad	5730345299301
	.quad	5726050332005
	.quad	5721755364709
	.quad	5717460397413
	.quad	5713165430117
	.quad	5708870462821
	.quad	5704575495525
	.quad	5743213423973
	.quad	5738918456677
	.quad	5734623489381
	.quad	5730328522085
	.quad	5726033554789
	.quad	5721738587493
	.quad	5717443620197
	.quad	5713148652901
	.quad	5708853685605
	.quad	5704558718309
	.quad	5743196646757
	.quad	5738901679461
	.quad	5734606712165
	.quad	5730311744869
	.quad	5726016777573
	.quad	5721721810277
	.quad	5717426842981
	.quad	5713131875685
	.quad	5708836908389
	.quad	5704541941093
	.quad	5743179869541
	.quad	5738884902245
	.quad	5734589934949
	.quad	5730294967653
	.quad	5726000000357
	.quad	5721705033061
	.quad	5717410065765
	.quad	5713115098469
	.quad	5708820131173
	.quad	5704525163877
	.quad	5743330798949
	.quad	5739035831653
	.quad	5734740864357
	.quad	5730445897061
	.quad	5726150929765
	.quad	5721855962469
	.quad	5717560995173
	.quad	5713266027877
	.quad	5708971060581
	.quad	5704676093285
	.quad	5743314021733
	.quad	5739019054437
	.quad	5734724087141
	.quad	5730429119845
	.quad	5726134152549
	.quad	5721839185253
	.quad	5717544217957
	.quad	5713249250661
	.quad	5708954283365
	.quad	5704659316069
	.quad	5743297244517
	.quad	5739002277221
	.quad	5734707309925
	.quad	5730412342629
	.quad	5726117375333
	.quad	5721822408037
	.quad	5717527440741
	.quad	5713232473445
	.quad	5708937506149
	.quad	5704642538853
	.quad	5743280467301
	.quad	5738985500005
	.quad	5734690532709
	.quad	5730395565413
	.quad	5726100598117
	.quad	5721805630821
	.quad	5717510663525
	.quad	5713215696229
	.quad	5708920728933
	.quad	5704625761637
	.quad	5743263690085
	.quad	5738968722789
	.quad	5734673755493
	.quad	5730378788197
	.quad	5726083820901
	.quad	5721788853605
	.quad	5717493886309
	.quad	5713198919013
	.quad	5708903951717
	.quad	5704608984421
	.quad	5743246912869
	.quad	5738951945573
	.quad	5734656978277
	.quad	5730362010981
	.quad	5726067043685
	.quad	5721772076389
	.quad	5717477109093
	.quad	5713182141797
	.quad	5708887174501
	.quad	5704592207205
	.quad	5743230135653
	.quad	5738935168357
	.quad	5734640201061
	.quad	5730345233765
	.quad	5726050266469
	.quad	5721755299173
	.quad	5717460331877
	.quad	5713165364581
	.quad	5708870397285
	.quad	5704575429989
	.quad	5743213358437
	.quad	5738918391141
	.quad	5734623423845
	.quad	5730328456549
	.quad	5726033489253
	.quad	5721738521957
	.quad	5717443554661
	.quad	5713148587365
	.quad	5708853620069
	.quad	5704558652773
	.quad	5743196581221
	.quad	5738901613925
	.quad	5734606646629
	.quad	5730311679333
	.quad	5726016712037
	.quad	5721721744741
	.quad	5717426777445
	.quad	5713131810149
	.quad	5708836842853
	.quad	5704541875557
	.quad	5743179804005
	.quad	5738884836709
	.quad	5734589869413
	.quad	5730294902117
	.quad	5725999934821
	.quad	5721704967525
	.quad	5717410000229
	.quad	5713115032933
	.quad	5708820065637
	.quad	5704525098341
	.quad	4399006559589
	.quad	4398989782373
	.quad	4398973005157
	.quad	4398956227941
	.quad	4398939450725
	.quad	4398922673509
	.quad	4398905896293
	.quad	4398889119077
	.quad	4398872341861
	.quad	4398855564645
	.quad	4399006494053
	.quad	4398989716837
	.quad	4398972939621
	.quad	4398956162405
	.quad	4398939385189
	.quad	4398922607973
	.quad	4398905830757
	.quad	4398889053541
	.quad	4398872276325
	.quad	4398855499109
	.quad	4399006428517
	.quad	4398989651301
	.quad	4398972874085
	.quad	4398956096869
	.quad	4398939319653
	.quad	4398922542437
	.quad	4398905765221
	.quad	4398888988005
	.quad	4398872210789
	.quad	4398855433573
	.quad	4399006362981
	.quad	4398989585765
	.quad	4398972808549
	.quad	4398956031333
	.quad	4398939254117
	.quad	4398922476901
	.quad	4398905699685
	.quad	4398888922469
	.quad	4398872145253
	.quad	4398855368037
	.quad	4399006297445
	.quad	4398989520229
	.quad	4398972743013
	.quad	4398955965797
	.quad	4398939188581
	.quad	4398922411365
	.quad	4398905634149
	.quad	4398888856933
	.quad	4398872079717
	.quad	4398855302501
	.quad	4399006231909
	.quad	4398989454693
	.quad	4398972677477
	.quad	4398955900261
	.quad	4398939123045
	.quad	4398922345829
	.quad	4398905568613
	.quad	4398888791397
	.quad	4398872014181
	.quad	4398855236965
	.quad	4399006166373
	.quad	4398989389157
	.quad	4398972611941
	.quad	4398955834725
	.quad	4398939057509
	.quad	4398922280293
	.quad	4398905503077
	.quad	4398888725861
	.quad	4398871948645
	.quad	4398855171429
	.quad	4399006100837
	.quad	4398989323621
	.quad	4398972546405
	.quad	4398955769189
	.quad	4398938991973
	.quad	4398922214757
	.quad	4398905437541
	.quad	4398888660325
	.quad	4398871883109
	.quad	4398855105893
	.quad	4399006035301
	.quad	4398989258085
	.quad	4398972480869
	.quad	4398955703653
	.quad	4398938926437
	.quad	4398922149221
	.quad	4398905372005
	.quad	4398888594789
	.quad	4398871817573
	.quad	4398855040357
	.quad	3298538630501
	.quad	3298538564965
	.quad	3298538499429
	.quad	3298538433893
	.quad	3298538368357
	.quad	3298538302821
	.quad	3298538237285
	.quad	3298538171749
	.quad	3298538106213
	.quad	2199023267941
	.quad	2199023268197
	.quad	2199023268453
	.quad	2199023268709
	.quad	2199023268965
	.quad	2199023269221
	.quad	2199023269477
	.quad	2199023269733
	.quad	2199023269989
	.quad	2199023270245
	.quad	3298538041701
	.quad	3298538107237
	.quad	3298538172773
	.quad	3298538238309
	.quad	3298538303845
	.quad	3298538369381
	.quad	3298538434917
	.quad	3298538500453
	.quad	3298538565989
	.quad	3298538631525
	.quad	3298538041957
	.quad	3298538107493
	.quad	3298538173029
	.quad	3298538238565
	.quad	3298538304101
	.quad	3298538369637
	.quad	3298538435173
	.quad	3298538500709
	.quad	3298538566245
	.quad	3298538631781
	.quad	3298538042213
	.quad	3298538107749
	.quad	3298538173285
	.quad	3298538238821
	.quad	3298538304357
	.quad	3298538369893
	.quad	3298538435429
	.quad	3298538500965
	.quad	3298538566501
	.quad	3298538632037
	.quad	3298538042469
	.quad	3298538108005
	.quad	3298538173541
	.quad	3298538239077
	.quad	3298538304613
	.quad	3298538370149
	.quad	3298538435685
	.quad	3298538501221
	.quad	3298538566757
	.quad	3298538632293
	.quad	3298538042725
	.quad	3298538108261
	.quad	3298538173797
	.quad	3298538239333
	.quad	3298538304869
	.quad	3298538370405
	.quad	3298538435941
	.quad	3298538501477
	.quad	3298538567013
	.quad	3298538632549
	.quad	3298538042981
	.quad	3298538108517
	.quad	3298538174053
	.quad	3298538239589
	.quad	3298538305125
	.quad	3298538370661
	.quad	3298538436197
	.quad	3298538501733
	.quad	3298538567269
	.quad	3298538632805
	.quad	3298538043237
	.quad	3298538108773
	.quad	3298538174309
	.quad	3298538239845
	.quad	3298538305381
	.quad	3298538370917
	.quad	3298538436453
	.quad	3298538501989
	.quad	3298538567525
	.quad	3298538633061
	.quad	3298538043493
	.quad	3298538109029
	.quad	3298538174565
	.quad	3298538240101
	.quad	3298538305637
	.quad	3298538371173
	.quad	3298538436709
	.quad	3298538502245
	.quad	3298538567781
	.quad	3298538633317
	.quad	3298538043749
	.quad	3298538109285
	.quad	3298538174821
	.quad	3298538240357
	.quad	3298538305893
	.quad	3298538371429
	.quad	3298538436965
	.quad	3298538502501
	.quad	3298538568037
	.quad	3298538633573
	.quad	4398854975845
	.quad	4398871753061
	.quad	4398888530277
	.quad	4398905307493
	.quad	4398922084709
	.quad	4398938861925
	.quad	4398955639141
	.quad	4398972416357
	.quad	4398989193573
	.quad	4399005970789
	.quad	4398855041381
	.quad	4398871818597
	.quad	4398888595813
	.quad	4398905373029
	.quad	4398922150245
	.quad	4398938927461
	.quad	4398955704677
	.quad	4398972481893
	.quad	4398989259109
	.quad	4399006036325
	.quad	4398855106917
	.quad	4398871884133
	.quad	4398888661349
	.quad	4398905438565
	.quad	4398922215781
	.quad	4398938992997
	.quad	4398955770213
	.quad	4398972547429
	.quad	4398989324645
	.quad	4399006101861
	.quad	4398855172453
	.quad	4398871949669
	.quad	4398888726885
	.quad	4398905504101
	.quad	4398922281317
	.quad	4398939058533
	.quad	4398955835749
	.quad	4398972612965
	.quad	4398989390181
	.quad	4399006167397
	.quad	4398855237989
	.quad	4398872015205
	.quad	4398888792421
	.quad	4398905569637
	.quad	4398922346853
	.quad	4398939124069
	.quad	4398955901285
	.quad	4398972678501
	.quad	4398989455717
	.quad	4399006232933
	.quad	4398855303525
	.quad	4398872080741
	.quad	4398888857957
	.quad	4398905635173
	.quad	4398922412389
	.quad	4398939189605
	.quad	4398955966821
	.quad	4398972744037
	.quad	4398989521253
	.quad	4399006298469
	.quad	4398855369061
	.quad	4398872146277
	.quad	4398888923493
	.quad	4398905700709
	.quad	4398922477925
	.quad	4398939255141
	.quad	4398956032357
	.quad	4398972809573
	.quad	4398989586789
	.quad	4399006364005
	.quad	4398855434597
	.quad	4398872211813
	.quad	4398888989029
	.quad	4398905766245
	.quad	4398922543461
	.quad	4398939320677
	.quad	4398956097893
	.quad	4398972875109
	.quad	4398989652325
	.quad	4399006429541
	.quad	4398855500133
	.quad	4398872277349
	.quad	4398889054565
	.quad	4398905831781
	.quad	4398922608997
	.quad	4398939386213
	.quad	4398956163429
	.quad	4398972940645
	.quad	4398989717861
	.quad	4399006495077
	.quad	4398855565669
	.quad	4398872342885
	.quad	4398889120101
	.quad	4398905897317
	.quad	4398922674533
	.quad	4398939451749
	.quad	4398956228965
	.quad	4398973006181
	.quad	4398989783397
	.quad	4399006560613
	.quad	4398854976101
	.quad	4398871753317
	.quad	4398888530533
	.quad	4398905307749
	.quad	4398922084965
	.quad	4398938862181
	.quad	4398955639397
	.quad	4398972416613
	.quad	4398989193829
	.quad	4399005971045
	.quad	4398855041637
	.quad	4398871818853
	.quad	4398888596069
	.quad	4398905373285
	.quad	4398922150501
	.quad	4398938927717
	.quad	4398955704933
	.quad	4398972482149
	.quad	4398989259365
	.quad	4399006036581
	.quad	4398855107173
	.quad	4398871884389
	.quad	4398888661605
	.quad	4398905438821
	.quad	4398922216037
	.quad	4398938993253
	.quad	4398955770469
	.quad	4398972547685
	.quad	4398989324901
	.quad	4399006102117
	.quad	4398855172709
	.quad	4398871949925
	.quad	4398888727141
	.quad	4398905504357
	.quad	4398922281573
	.quad	4398939058789
	.quad	4398955836005
	.quad	4398972613221
	.quad	4398989390437
	.quad	4399006167653
	.quad	4398855238245
	.quad	4398872015461
	.quad	4398888792677
	.quad	4398905569893
	.quad	4398922347109
	.quad	4398939124325
	.quad	4398955901541
	.quad	4398972678757
	.quad	4398989455973
	.quad	4399006233189
	.quad	4398855303781
	.quad	4398872080997
	.quad	4398888858213
	.quad	4398905635429
	.quad	4398922412645
	.quad	4398939189861
	.quad	4398955967077
	.quad	4398972744293
	.quad	4398989521509
	.quad	4399006298725
	.quad	4398855369317
	.quad	4398872146533
	.quad	4398888923749
	.quad	4398905700965
	.quad	4398922478181
	.quad	4398939255397
	.quad	4398956032613
	.quad	4398972809829
	.quad	4398989587045
	.quad	4399006364261
	.quad	4398855434853
	.quad	4398872212069
	.quad	4398888989285
	.quad	4398905766501
	.quad	4398922543717
	.quad	4398939320933
	.quad	4398956098149
	.quad	4398972875365
	.quad	4398989652581
	.quad	4399006429797
	.quad	4398855500389
	.quad	4398872277605
	.quad	4398889054821
	.quad	4398905832037
	.quad	4398922609253
	.quad	4398939386469
	.quad	4398956163685
	.quad	4398972940901
	.quad	4398989718117
	.quad	4399006495333
	.quad	4398855565925
	.quad	4398872343141
	.quad	4398889120357
	.quad	4398905897573
	.quad	4398922674789
	.quad	4398939452005
	.quad	4398956229221
	.quad	4398973006437
	.quad	4398989783653
	.quad	4399006560869
	.quad	4398854976357
	.quad	4398871753573
	.quad	4398888530789
	.quad	4398905308005
	.quad	4398922085221
	.quad	4398938862437
	.quad	4398955639653
	.quad	4398972416869
	.quad	4398989194085
	.align 32
	.type	_ZL9digit1000, @object
	.size	_ZL9digit1000, 4000
_ZL9digit1000:
	.long	808464432
	.long	808529968
	.long	808595504
	.long	808661040
	.long	808726576
	.long	808792112
	.long	808857648
	.long	808923184
	.long	808988720
	.long	809054256
	.long	808464688
	.long	808530224
	.long	808595760
	.long	808661296
	.long	808726832
	.long	808792368
	.long	808857904
	.long	808923440
	.long	808988976
	.long	809054512
	.long	808464944
	.long	808530480
	.long	808596016
	.long	808661552
	.long	808727088
	.long	808792624
	.long	808858160
	.long	808923696
	.long	808989232
	.long	809054768
	.long	808465200
	.long	808530736
	.long	808596272
	.long	808661808
	.long	808727344
	.long	808792880
	.long	808858416
	.long	808923952
	.long	808989488
	.long	809055024
	.long	808465456
	.long	808530992
	.long	808596528
	.long	808662064
	.long	808727600
	.long	808793136
	.long	808858672
	.long	808924208
	.long	808989744
	.long	809055280
	.long	808465712
	.long	808531248
	.long	808596784
	.long	808662320
	.long	808727856
	.long	808793392
	.long	808858928
	.long	808924464
	.long	808990000
	.long	809055536
	.long	808465968
	.long	808531504
	.long	808597040
	.long	808662576
	.long	808728112
	.long	808793648
	.long	808859184
	.long	808924720
	.long	808990256
	.long	809055792
	.long	808466224
	.long	808531760
	.long	808597296
	.long	808662832
	.long	808728368
	.long	808793904
	.long	808859440
	.long	808924976
	.long	808990512
	.long	809056048
	.long	808466480
	.long	808532016
	.long	808597552
	.long	808663088
	.long	808728624
	.long	808794160
	.long	808859696
	.long	808925232
	.long	808990768
	.long	809056304
	.long	808466736
	.long	808532272
	.long	808597808
	.long	808663344
	.long	808728880
	.long	808794416
	.long	808859952
	.long	808925488
	.long	808991024
	.long	809056560
	.long	808464433
	.long	808529969
	.long	808595505
	.long	808661041
	.long	808726577
	.long	808792113
	.long	808857649
	.long	808923185
	.long	808988721
	.long	809054257
	.long	808464689
	.long	808530225
	.long	808595761
	.long	808661297
	.long	808726833
	.long	808792369
	.long	808857905
	.long	808923441
	.long	808988977
	.long	809054513
	.long	808464945
	.long	808530481
	.long	808596017
	.long	808661553
	.long	808727089
	.long	808792625
	.long	808858161
	.long	808923697
	.long	808989233
	.long	809054769
	.long	808465201
	.long	808530737
	.long	808596273
	.long	808661809
	.long	808727345
	.long	808792881
	.long	808858417
	.long	808923953
	.long	808989489
	.long	809055025
	.long	808465457
	.long	808530993
	.long	808596529
	.long	808662065
	.long	808727601
	.long	808793137
	.long	808858673
	.long	808924209
	.long	808989745
	.long	809055281
	.long	808465713
	.long	808531249
	.long	808596785
	.long	808662321
	.long	808727857
	.long	808793393
	.long	808858929
	.long	808924465
	.long	808990001
	.long	809055537
	.long	808465969
	.long	808531505
	.long	808597041
	.long	808662577
	.long	808728113
	.long	808793649
	.long	808859185
	.long	808924721
	.long	808990257
	.long	809055793
	.long	808466225
	.long	808531761
	.long	808597297
	.long	808662833
	.long	808728369
	.long	808793905
	.long	808859441
	.long	808924977
	.long	808990513
	.long	809056049
	.long	808466481
	.long	808532017
	.long	808597553
	.long	808663089
	.long	808728625
	.long	808794161
	.long	808859697
	.long	808925233
	.long	808990769
	.long	809056305
	.long	808466737
	.long	808532273
	.long	808597809
	.long	808663345
	.long	808728881
	.long	808794417
	.long	808859953
	.long	808925489
	.long	808991025
	.long	809056561
	.long	808464434
	.long	808529970
	.long	808595506
	.long	808661042
	.long	808726578
	.long	808792114
	.long	808857650
	.long	808923186
	.long	808988722
	.long	809054258
	.long	808464690
	.long	808530226
	.long	808595762
	.long	808661298
	.long	808726834
	.long	808792370
	.long	808857906
	.long	808923442
	.long	808988978
	.long	809054514
	.long	808464946
	.long	808530482
	.long	808596018
	.long	808661554
	.long	808727090
	.long	808792626
	.long	808858162
	.long	808923698
	.long	808989234
	.long	809054770
	.long	808465202
	.long	808530738
	.long	808596274
	.long	808661810
	.long	808727346
	.long	808792882
	.long	808858418
	.long	808923954
	.long	808989490
	.long	809055026
	.long	808465458
	.long	808530994
	.long	808596530
	.long	808662066
	.long	808727602
	.long	808793138
	.long	808858674
	.long	808924210
	.long	808989746
	.long	809055282
	.long	808465714
	.long	808531250
	.long	808596786
	.long	808662322
	.long	808727858
	.long	808793394
	.long	808858930
	.long	808924466
	.long	808990002
	.long	809055538
	.long	808465970
	.long	808531506
	.long	808597042
	.long	808662578
	.long	808728114
	.long	808793650
	.long	808859186
	.long	808924722
	.long	808990258
	.long	809055794
	.long	808466226
	.long	808531762
	.long	808597298
	.long	808662834
	.long	808728370
	.long	808793906
	.long	808859442
	.long	808924978
	.long	808990514
	.long	809056050
	.long	808466482
	.long	808532018
	.long	808597554
	.long	808663090
	.long	808728626
	.long	808794162
	.long	808859698
	.long	808925234
	.long	808990770
	.long	809056306
	.long	808466738
	.long	808532274
	.long	808597810
	.long	808663346
	.long	808728882
	.long	808794418
	.long	808859954
	.long	808925490
	.long	808991026
	.long	809056562
	.long	808464435
	.long	808529971
	.long	808595507
	.long	808661043
	.long	808726579
	.long	808792115
	.long	808857651
	.long	808923187
	.long	808988723
	.long	809054259
	.long	808464691
	.long	808530227
	.long	808595763
	.long	808661299
	.long	808726835
	.long	808792371
	.long	808857907
	.long	808923443
	.long	808988979
	.long	809054515
	.long	808464947
	.long	808530483
	.long	808596019
	.long	808661555
	.long	808727091
	.long	808792627
	.long	808858163
	.long	808923699
	.long	808989235
	.long	809054771
	.long	808465203
	.long	808530739
	.long	808596275
	.long	808661811
	.long	808727347
	.long	808792883
	.long	808858419
	.long	808923955
	.long	808989491
	.long	809055027
	.long	808465459
	.long	808530995
	.long	808596531
	.long	808662067
	.long	808727603
	.long	808793139
	.long	808858675
	.long	808924211
	.long	808989747
	.long	809055283
	.long	808465715
	.long	808531251
	.long	808596787
	.long	808662323
	.long	808727859
	.long	808793395
	.long	808858931
	.long	808924467
	.long	808990003
	.long	809055539
	.long	808465971
	.long	808531507
	.long	808597043
	.long	808662579
	.long	808728115
	.long	808793651
	.long	808859187
	.long	808924723
	.long	808990259
	.long	809055795
	.long	808466227
	.long	808531763
	.long	808597299
	.long	808662835
	.long	808728371
	.long	808793907
	.long	808859443
	.long	808924979
	.long	808990515
	.long	809056051
	.long	808466483
	.long	808532019
	.long	808597555
	.long	808663091
	.long	808728627
	.long	808794163
	.long	808859699
	.long	808925235
	.long	808990771
	.long	809056307
	.long	808466739
	.long	808532275
	.long	808597811
	.long	808663347
	.long	808728883
	.long	808794419
	.long	808859955
	.long	808925491
	.long	808991027
	.long	809056563
	.long	808464436
	.long	808529972
	.long	808595508
	.long	808661044
	.long	808726580
	.long	808792116
	.long	808857652
	.long	808923188
	.long	808988724
	.long	809054260
	.long	808464692
	.long	808530228
	.long	808595764
	.long	808661300
	.long	808726836
	.long	808792372
	.long	808857908
	.long	808923444
	.long	808988980
	.long	809054516
	.long	808464948
	.long	808530484
	.long	808596020
	.long	808661556
	.long	808727092
	.long	808792628
	.long	808858164
	.long	808923700
	.long	808989236
	.long	809054772
	.long	808465204
	.long	808530740
	.long	808596276
	.long	808661812
	.long	808727348
	.long	808792884
	.long	808858420
	.long	808923956
	.long	808989492
	.long	809055028
	.long	808465460
	.long	808530996
	.long	808596532
	.long	808662068
	.long	808727604
	.long	808793140
	.long	808858676
	.long	808924212
	.long	808989748
	.long	809055284
	.long	808465716
	.long	808531252
	.long	808596788
	.long	808662324
	.long	808727860
	.long	808793396
	.long	808858932
	.long	808924468
	.long	808990004
	.long	809055540
	.long	808465972
	.long	808531508
	.long	808597044
	.long	808662580
	.long	808728116
	.long	808793652
	.long	808859188
	.long	808924724
	.long	808990260
	.long	809055796
	.long	808466228
	.long	808531764
	.long	808597300
	.long	808662836
	.long	808728372
	.long	808793908
	.long	808859444
	.long	808924980
	.long	808990516
	.long	809056052
	.long	808466484
	.long	808532020
	.long	808597556
	.long	808663092
	.long	808728628
	.long	808794164
	.long	808859700
	.long	808925236
	.long	808990772
	.long	809056308
	.long	808466740
	.long	808532276
	.long	808597812
	.long	808663348
	.long	808728884
	.long	808794420
	.long	808859956
	.long	808925492
	.long	808991028
	.long	809056564
	.long	808464437
	.long	808529973
	.long	808595509
	.long	808661045
	.long	808726581
	.long	808792117
	.long	808857653
	.long	808923189
	.long	808988725
	.long	809054261
	.long	808464693
	.long	808530229
	.long	808595765
	.long	808661301
	.long	808726837
	.long	808792373
	.long	808857909
	.long	808923445
	.long	808988981
	.long	809054517
	.long	808464949
	.long	808530485
	.long	808596021
	.long	808661557
	.long	808727093
	.long	808792629
	.long	808858165
	.long	808923701
	.long	808989237
	.long	809054773
	.long	808465205
	.long	808530741
	.long	808596277
	.long	808661813
	.long	808727349
	.long	808792885
	.long	808858421
	.long	808923957
	.long	808989493
	.long	809055029
	.long	808465461
	.long	808530997
	.long	808596533
	.long	808662069
	.long	808727605
	.long	808793141
	.long	808858677
	.long	808924213
	.long	808989749
	.long	809055285
	.long	808465717
	.long	808531253
	.long	808596789
	.long	808662325
	.long	808727861
	.long	808793397
	.long	808858933
	.long	808924469
	.long	808990005
	.long	809055541
	.long	808465973
	.long	808531509
	.long	808597045
	.long	808662581
	.long	808728117
	.long	808793653
	.long	808859189
	.long	808924725
	.long	808990261
	.long	809055797
	.long	808466229
	.long	808531765
	.long	808597301
	.long	808662837
	.long	808728373
	.long	808793909
	.long	808859445
	.long	808924981
	.long	808990517
	.long	809056053
	.long	808466485
	.long	808532021
	.long	808597557
	.long	808663093
	.long	808728629
	.long	808794165
	.long	808859701
	.long	808925237
	.long	808990773
	.long	809056309
	.long	808466741
	.long	808532277
	.long	808597813
	.long	808663349
	.long	808728885
	.long	808794421
	.long	808859957
	.long	808925493
	.long	808991029
	.long	809056565
	.long	808464438
	.long	808529974
	.long	808595510
	.long	808661046
	.long	808726582
	.long	808792118
	.long	808857654
	.long	808923190
	.long	808988726
	.long	809054262
	.long	808464694
	.long	808530230
	.long	808595766
	.long	808661302
	.long	808726838
	.long	808792374
	.long	808857910
	.long	808923446
	.long	808988982
	.long	809054518
	.long	808464950
	.long	808530486
	.long	808596022
	.long	808661558
	.long	808727094
	.long	808792630
	.long	808858166
	.long	808923702
	.long	808989238
	.long	809054774
	.long	808465206
	.long	808530742
	.long	808596278
	.long	808661814
	.long	808727350
	.long	808792886
	.long	808858422
	.long	808923958
	.long	808989494
	.long	809055030
	.long	808465462
	.long	808530998
	.long	808596534
	.long	808662070
	.long	808727606
	.long	808793142
	.long	808858678
	.long	808924214
	.long	808989750
	.long	809055286
	.long	808465718
	.long	808531254
	.long	808596790
	.long	808662326
	.long	808727862
	.long	808793398
	.long	808858934
	.long	808924470
	.long	808990006
	.long	809055542
	.long	808465974
	.long	808531510
	.long	808597046
	.long	808662582
	.long	808728118
	.long	808793654
	.long	808859190
	.long	808924726
	.long	808990262
	.long	809055798
	.long	808466230
	.long	808531766
	.long	808597302
	.long	808662838
	.long	808728374
	.long	808793910
	.long	808859446
	.long	808924982
	.long	808990518
	.long	809056054
	.long	808466486
	.long	808532022
	.long	808597558
	.long	808663094
	.long	808728630
	.long	808794166
	.long	808859702
	.long	808925238
	.long	808990774
	.long	809056310
	.long	808466742
	.long	808532278
	.long	808597814
	.long	808663350
	.long	808728886
	.long	808794422
	.long	808859958
	.long	808925494
	.long	808991030
	.long	809056566
	.long	808464439
	.long	808529975
	.long	808595511
	.long	808661047
	.long	808726583
	.long	808792119
	.long	808857655
	.long	808923191
	.long	808988727
	.long	809054263
	.long	808464695
	.long	808530231
	.long	808595767
	.long	808661303
	.long	808726839
	.long	808792375
	.long	808857911
	.long	808923447
	.long	808988983
	.long	809054519
	.long	808464951
	.long	808530487
	.long	808596023
	.long	808661559
	.long	808727095
	.long	808792631
	.long	808858167
	.long	808923703
	.long	808989239
	.long	809054775
	.long	808465207
	.long	808530743
	.long	808596279
	.long	808661815
	.long	808727351
	.long	808792887
	.long	808858423
	.long	808923959
	.long	808989495
	.long	809055031
	.long	808465463
	.long	808530999
	.long	808596535
	.long	808662071
	.long	808727607
	.long	808793143
	.long	808858679
	.long	808924215
	.long	808989751
	.long	809055287
	.long	808465719
	.long	808531255
	.long	808596791
	.long	808662327
	.long	808727863
	.long	808793399
	.long	808858935
	.long	808924471
	.long	808990007
	.long	809055543
	.long	808465975
	.long	808531511
	.long	808597047
	.long	808662583
	.long	808728119
	.long	808793655
	.long	808859191
	.long	808924727
	.long	808990263
	.long	809055799
	.long	808466231
	.long	808531767
	.long	808597303
	.long	808662839
	.long	808728375
	.long	808793911
	.long	808859447
	.long	808924983
	.long	808990519
	.long	809056055
	.long	808466487
	.long	808532023
	.long	808597559
	.long	808663095
	.long	808728631
	.long	808794167
	.long	808859703
	.long	808925239
	.long	808990775
	.long	809056311
	.long	808466743
	.long	808532279
	.long	808597815
	.long	808663351
	.long	808728887
	.long	808794423
	.long	808859959
	.long	808925495
	.long	808991031
	.long	809056567
	.long	808464440
	.long	808529976
	.long	808595512
	.long	808661048
	.long	808726584
	.long	808792120
	.long	808857656
	.long	808923192
	.long	808988728
	.long	809054264
	.long	808464696
	.long	808530232
	.long	808595768
	.long	808661304
	.long	808726840
	.long	808792376
	.long	808857912
	.long	808923448
	.long	808988984
	.long	809054520
	.long	808464952
	.long	808530488
	.long	808596024
	.long	808661560
	.long	808727096
	.long	808792632
	.long	808858168
	.long	808923704
	.long	808989240
	.long	809054776
	.long	808465208
	.long	808530744
	.long	808596280
	.long	808661816
	.long	808727352
	.long	808792888
	.long	808858424
	.long	808923960
	.long	808989496
	.long	809055032
	.long	808465464
	.long	808531000
	.long	808596536
	.long	808662072
	.long	808727608
	.long	808793144
	.long	808858680
	.long	808924216
	.long	808989752
	.long	809055288
	.long	808465720
	.long	808531256
	.long	808596792
	.long	808662328
	.long	808727864
	.long	808793400
	.long	808858936
	.long	808924472
	.long	808990008
	.long	809055544
	.long	808465976
	.long	808531512
	.long	808597048
	.long	808662584
	.long	808728120
	.long	808793656
	.long	808859192
	.long	808924728
	.long	808990264
	.long	809055800
	.long	808466232
	.long	808531768
	.long	808597304
	.long	808662840
	.long	808728376
	.long	808793912
	.long	808859448
	.long	808924984
	.long	808990520
	.long	809056056
	.long	808466488
	.long	808532024
	.long	808597560
	.long	808663096
	.long	808728632
	.long	808794168
	.long	808859704
	.long	808925240
	.long	808990776
	.long	809056312
	.long	808466744
	.long	808532280
	.long	808597816
	.long	808663352
	.long	808728888
	.long	808794424
	.long	808859960
	.long	808925496
	.long	808991032
	.long	809056568
	.long	808464441
	.long	808529977
	.long	808595513
	.long	808661049
	.long	808726585
	.long	808792121
	.long	808857657
	.long	808923193
	.long	808988729
	.long	809054265
	.long	808464697
	.long	808530233
	.long	808595769
	.long	808661305
	.long	808726841
	.long	808792377
	.long	808857913
	.long	808923449
	.long	808988985
	.long	809054521
	.long	808464953
	.long	808530489
	.long	808596025
	.long	808661561
	.long	808727097
	.long	808792633
	.long	808858169
	.long	808923705
	.long	808989241
	.long	809054777
	.long	808465209
	.long	808530745
	.long	808596281
	.long	808661817
	.long	808727353
	.long	808792889
	.long	808858425
	.long	808923961
	.long	808989497
	.long	809055033
	.long	808465465
	.long	808531001
	.long	808596537
	.long	808662073
	.long	808727609
	.long	808793145
	.long	808858681
	.long	808924217
	.long	808989753
	.long	809055289
	.long	808465721
	.long	808531257
	.long	808596793
	.long	808662329
	.long	808727865
	.long	808793401
	.long	808858937
	.long	808924473
	.long	808990009
	.long	809055545
	.long	808465977
	.long	808531513
	.long	808597049
	.long	808662585
	.long	808728121
	.long	808793657
	.long	808859193
	.long	808924729
	.long	808990265
	.long	809055801
	.long	808466233
	.long	808531769
	.long	808597305
	.long	808662841
	.long	808728377
	.long	808793913
	.long	808859449
	.long	808924985
	.long	808990521
	.long	809056057
	.long	808466489
	.long	808532025
	.long	808597561
	.long	808663097
	.long	808728633
	.long	808794169
	.long	808859705
	.long	808925241
	.long	808990777
	.long	809056313
	.long	808466745
	.long	808532281
	.long	808597817
	.long	808663353
	.long	808728889
	.long	808794425
	.long	808859961
	.long	808925497
	.long	808991033
	.long	809056569
	.align 2
	.type	_ZL11digit_table, @object
	.size	_ZL11digit_table, 200
_ZL11digit_table:
	.ascii	"000102030405060708091011121314151617181920212223242526272829"
	.ascii	"303132333435363738394041424344454647484950515253545556575859"
	.ascii	"606162636465666768697071727374757677787980818283848586878889"
	.ascii	"90919293949596979899"
	.align 32
	.type	_ZL15pow10_sig_table, @object
	.size	_ZL15pow10_sig_table, 10688
_ZL15pow10_sig_table:
	.quad	-4671960508600951122
	.quad	8373016921771146291
	.quad	-1228264617323800998
	.quad	1242899115359157055
	.quad	-7685194413468457480
	.quad	5388497965526861063
	.quad	-4994806998408183946
	.quad	6735622456908576329
	.quad	-1631822729582842029
	.quad	-803843965719055396
	.quad	-7937418233630358124
	.quad	8720969558280366185
	.quad	-5310086773610559751
	.quad	-7545532125859093884
	.quad	-2025922448585811785
	.quad	-208543120469091547
	.quad	-8183730558007214222
	.quad	-130339450293182217
	.quad	-5617977179081629873
	.quad	-4774610331293865675
	.quad	-2410785455424649437
	.quad	-5968262914117332094
	.quad	-8424269937281487754
	.quad	5493207715531443249
	.quad	-5918651403174471789
	.quad	-2356862392440471747
	.quad	-2786628235540701832
	.quad	-2946077990550589683
	.quad	-8659171674854020501
	.quad	-8758827771735200408
	.quad	-6212278575140137722
	.quad	7498209359040551106
	.quad	-3153662200497784248
	.quad	149389661945913074
	.quad	-8888567902952197011
	.quad	93368538716195671
	.quad	-6499023860262858360
	.quad	4728396691822632493
	.quad	-3512093806901185046
	.quad	5910495864778290617
	.quad	-9112587656954322510
	.quad	8305745933913819539
	.quad	-6779048552765515233
	.quad	1158810380537498616
	.quad	-3862124672529506138
	.quad	-3163173042755514634
	.quad	-215969822234494768
	.quad	-8565652321871781196
	.quad	-7052510166537641086
	.quad	6175682344898606512
	.quad	-4203951689744663454
	.quad	-1503769105731517667
	.quad	-643253593753441413
	.quad	-6491397400591784988
	.quad	-7319562523736982739
	.quad	5166248661484910190
	.quad	-4537767136243840520
	.quad	-7377247228426025974
	.quad	-1060522901877412746
	.quad	-4609873017105144563
	.quad	-7580355841314464822
	.quad	4036358391950366504
	.quad	-4863758783215693124
	.quad	-4177924046916817678
	.quad	-1468012460592228501
	.quad	-610719040218634194
	.quad	-7835036815511224669
	.quad	8841672636718129437
	.quad	-5182110000961642932
	.quad	6440404777470273892
	.quad	-1865951482774665761
	.quad	8050505971837842365
	.quad	-8083748704375247957
	.quad	-6497648813669818282
	.quad	-5492999862041672042
	.quad	-8122061017087272852
	.quad	-2254563809124702148
	.quad	3682481783923072647
	.quad	-8326631408344020699
	.quad	-6921820921902855404
	.quad	-5796603242002637969
	.quad	571095884476206553
	.quad	-2634068034075909558
	.quad	-3897816162832129712
	.quad	-8563821548938525330
	.quad	-4741978110983775022
	.quad	-6093090917745768758
	.quad	7907585416552444934
	.quad	-3004677628754823043
	.quad	661109733835780360
	.quad	-8795452545612846258
	.quad	2719036592861056677
	.quad	-6382629663588669919
	.quad	-5824576295778454962
	.quad	-3366601061058449494
	.quad	1942651667131707105
	.quad	-9021654690802612790
	.quad	5825843310384704845
	.quad	-6665382345075878084
	.quad	-1941067898873894752
	.quad	-3720041912917459700
	.quad	2185351144835019464
	.quad	-38366372719436721
	.quad	2731688931043774330
	.quad	-6941508010590729807
	.quad	8624834609543440812
	.quad	-4065198994811024355
	.quad	-3054014793352862697
	.quad	-469812725086392539
	.quad	5405853545163697437
	.quad	-7211161980820077193
	.quad	5684501474941004850
	.quad	-4402266457597708587
	.quad	2493940825248868159
	.quad	-891147053569747830
	.quad	7729112049988473103
	.quad	-7474495936122174250
	.quad	-9004363024039368023
	.quad	-4731433901725329908
	.quad	2579604275232953683
	.quad	-1302606358729274481
	.quad	3224505344041192104
	.quad	-7731658001846878407
	.quad	8932844867666826921
	.quad	-5052886483881210105
	.quad	-2669001970698630061
	.quad	-1704422086424124727
	.quad	-3336252463373287576
	.quad	-7982792831656159810
	.quad	2526528228819083169
	.quad	-5366805021142811859
	.quad	-6065211750830921846
	.quad	-2096820258001126919
	.quad	1641857348316123500
	.quad	-8228041688891786181
	.quad	-5891368184943504669
	.quad	-5673366092687344822
	.quad	-7364210231179380836
	.quad	-2480021597431793123
	.quad	4629795266307937667
	.quad	-8467542526035952558
	.quad	5199465050656154994
	.quad	-5972742139117552794
	.quad	-2724040723534582065
	.quad	-2854241655469553088
	.quad	-8016736922845615486
	.quad	-8701430062309552536
	.quad	6518754469289960081
	.quad	-6265101559459552766
	.quad	8148443086612450102
	.quad	-3219690930897053053
	.quad	962181821410786819
	.quad	-8929835859451740015
	.quad	-1704479370831952190
	.quad	-6550608805887287114
	.quad	7092772823314835570
	.quad	-3576574988931720989
	.quad	-357406007711231345
	.quad	-9152888395723407474
	.quad	8999993282035256217
	.quad	-6829424476226871438
	.quad	2026619565689294464
	.quad	-3925094576856201394
	.quad	-6690097579743157728
	.quad	-294682202642863838
	.quad	5472436080603216552
	.quad	-7101705404292871755
	.quad	8031958568804398249
	.quad	-4265445736938701790
	.quad	-3795109844276665901
	.quad	-720121152745989333
	.quad	9091170749936331336
	.quad	-7367604748107325189
	.quad	3376138709496513133
	.quad	-4597819916706768583
	.quad	-391512631556746488
	.quad	-1135588877456072824
	.quad	8733981247408842698
	.quad	-7627272076051127371
	.quad	5458738279630526686
	.quad	-4922404076636521310
	.quad	-7011635205744005354
	.quad	-1541319077368263733
	.quad	5070514048102157020
	.quad	-7880853450996246689
	.quad	863228270850154185
	.quad	-5239380795317920458
	.quad	-3532650679864695173
	.quad	-1937539975720012668
	.quad	-9027499368258256870
	.quad	-8128491512466089774
	.quad	-3336344095947716592
	.quad	-5548928372155224313
	.quad	-8782116138362033643
	.quad	-2324474446766642487
	.quad	7469098900757009562
	.quad	-8370325556870233411
	.quad	-2249342214667950880
	.quad	-5851220927660403859
	.quad	6411694268519837208
	.quad	-2702340141148116920
	.quad	-5820440219632367202
	.quad	-8606491615858654931
	.quad	7891439908798240259
	.quad	-6146428501395930760
	.quad	-3970758169284363389
	.quad	-3071349608317525546
	.quad	-351761693178066332
	.quad	-8837122532839535322
	.quad	6697677969404790399
	.quad	-6434717147622031249
	.quad	-851274575098787810
	.quad	-3431710416100151157
	.quad	-1064093218873484762
	.quad	-9062348037703676329
	.quad	8558313775058847832
	.quad	-6716249028702207507
	.quad	6086206200396171886
	.quad	-3783625267450371480
	.quad	-6227300304786948855
	.quad	-117845565885576446
	.quad	-3172439362556298164
	.quad	-6991182506319567135
	.quad	-4288617610811380305
	.quad	-4127292114472071014
	.quad	3862600023340550427
	.quad	-547429124662700864
	.quad	-4395122007679087774
	.quad	-7259672230555269896
	.quad	8782263791269039901
	.quad	-4462904269766699466
	.quad	-7468914334623251740
	.quad	-966944318780986428
	.quad	4498915137003099037
	.quad	-7521869226879198374
	.quad	-6411550076227838910
	.quad	-4790650515171610063
	.quad	5820620459997365075
	.quad	-1376627125537124675
	.quad	-6559282480285457368
	.quad	-7777920981101784778
	.quad	-8711237568605798759
	.quad	-5110715207949843068
	.quad	2946011094524915263
	.quad	-1776707991509915931
	.quad	3682513868156144079
	.quad	-8027971522334779313
	.quad	4607414176811284001
	.quad	-5423278384491086237
	.quad	1147581702586717097
	.quad	-2167411962186469893
	.quad	-3177208890193991532
	.quad	-8272161504007625539
	.quad	7237616480483531100
	.quad	-5728515861582144020
	.quad	-4788037454677749837
	.quad	-2548958808550292121
	.quad	-1373360799919799392
	.quad	-8510628282985014432
	.quad	-858350499949874620
	.quad	-6026599335303880135
	.quad	3538747893490044629
	.quad	-2921563150702462265
	.quad	9035120885289943691
	.quad	-8743505996830120772
	.quad	-5882264492762254953
	.quad	-6317696477610263061
	.quad	-2741144597525430788
	.quad	-3285434578585440922
	.quad	-3426430746906788485
	.quad	-8970925639256982432
	.quad	4776009810824339053
	.quad	-6601971030643840136
	.quad	5970012263530423816
	.quad	-3640777769877412266
	.quad	7462515329413029771
	.quad	-9193015133814464522
	.quad	52386062455755702
	.quad	-6879582898840692749
	.quad	-9157889458785081180
	.quad	-3987792605123478032
	.quad	6999382250228200141
	.quad	-373054737976959636
	.quad	8749227812785250177
	.quad	-7150688238876681629
	.quad	-3755104653863994448
	.quad	-4326674280168464132
	.quad	-4693880817329993060
	.quad	-796656831783192261
	.quad	-1255665003235103420
	.quad	-7415439547505577019
	.quad	8438581409832836170
	.quad	-4657613415954583370
	.quad	-3286831292991118499
	.quad	-1210330751515841308
	.quad	-8720225134666286028
	.quad	-7673985747338482674
	.quad	-3144297699952734816
	.quad	-4980796165745715438
	.quad	-8542058143368306423
	.quad	-1614309188754756393
	.quad	3157485376071780683
	.quad	-7926472270612804602
	.quad	8890957387685944783
	.quad	-5296404319838617848
	.quad	1890324697752655170
	.quad	-2008819381370884406
	.quad	2362905872190818963
	.quad	-8173041140997884610
	.quad	6088502188546649756
	.quad	-5604615407819967859
	.quad	-1612744301171463613
	.quad	-2394083241347571919
	.quad	7207441660390446292
	.quad	-8413831053483314306
	.quad	-2412877989897052924
	.quad	-5905602798426754978
	.quad	-7627783505798704059
	.quad	-2770317479606055818
	.quad	4300328673033783639
	.quad	-8648977452394866743
	.quad	-1923980597781273130
	.quad	-6199535797066195524
	.quad	6818396289628184396
	.quad	-3137733727905356501
	.quad	8522995362035230495
	.quad	-8878612607581929669
	.quad	3021029092058325107
	.quad	-6486579741050024183
	.quad	-835399653354481520
	.quad	-3496538657885142324
	.quad	8179122470161673908
	.quad	-9102865688819295809
	.quad	-4111420493003729616
	.quad	-6766896092596731857
	.quad	-5139275616254662020
	.quad	-3846934097318526917
	.quad	-6424094520318327524
	.quad	-196981603220770742
	.quad	-8030118150397909405
	.quad	-7040642529654063570
	.quad	-7324666853212387330
	.quad	-4189117143640191558
	.quad	4679224488766679549
	.quad	-624710411122851544
	.quad	-3374341425896426372
	.quad	-7307973034592864071
	.quad	-9026492418826348338
	.quad	-4523280274813692185
	.quad	-2059743486678159615
	.quad	-1042414325089727327
	.quad	-2574679358347699519
	.quad	-7569037980822161435
	.quad	3002511419460075705
	.quad	-4849611457600313890
	.quad	8364825292752482535
	.quad	-1450328303573004458
	.quad	1232659579085827361
	.quad	-7823984217374209643
	.quad	-3841273781498745804
	.quad	-5168294253290374149
	.quad	4421779809981343554
	.quad	-1848681798185579782
	.quad	915538744049291538
	.quad	-8072955151507069220
	.quad	5183897733458195115
	.quad	-5479507920956448621
	.quad	6479872166822743894
	.quad	-2237698882768172872
	.quad	3488154190101041964
	.quad	-8316090829371189901
	.quad	2180096368813151227
	.quad	-5783427518286599473
	.quad	-1886565557410948870
	.quad	-2617598379430861437
	.quad	-2358206946763686087
	.quad	-8553528014785370254
	.quad	7749492695127472003
	.quad	-6080224000054324913
	.quad	463493832054564196
	.quad	-2988593981640518238
	.quad	-4032318728359182659
	.quad	-8785400266166405755
	.quad	-4826042214438183114
	.quad	-6370064314280619289
	.quad	3190819268807046916
	.quad	-3350894374423386208
	.quad	-623161932418579259
	.quad	-9011838011655698236
	.quad	-7307005235402693893
	.quad	-6653111496142234891
	.quad	-4522070525825979462
	.quad	-3704703351750405709
	.quad	3570783879572301480
	.quad	-19193171260619233
	.quad	-148206168962011054
	.quad	-6929524759678968877
	.quad	-92628855601256909
	.quad	-4050219931171323192
	.quad	-115786069501571136
	.quad	-451088895536766085
	.quad	4466953431550423984
	.quad	-7199459587351560659
	.quad	486002885505321038
	.quad	-4387638465762062920
	.quad	5219189625309039202
	.quad	-872862063775190746
	.quad	6523987031636299002
	.quad	-7463067817500576073
	.quad	-534194123654701028
	.quad	-4717148753448332187
	.quad	-667742654568376285
	.quad	-1284749923383027329
	.quad	8388693718644305452
	.quad	-7720497729755473937
	.quad	-6286281471915778852
	.quad	-5038936143766954517
	.quad	-7857851839894723565
	.quad	-1686984161281305242
	.quad	8624429273841147159
	.quad	-7971894128441897632
	.quad	778582277723329070
	.quad	-5353181642124984136
	.quad	973227847154161338
	.quad	-2079791034228842266
	.quad	1216534808942701673
	.quad	-8217398424034108273
	.quad	-3851351762838199359
	.quad	-5660062011615247437
	.quad	-4814189703547749198
	.quad	-2463391496091671392
	.quad	-6017737129434686498
	.quad	-8457148712698376476
	.quad	7768129340171790699
	.quad	-5959749872445582691
	.quad	-8736582398494813242
	.quad	-2838001322129590460
	.quad	-1697355961263740745
	.quad	-8691279853972075893
	.quad	1244995533423855986
	.quad	-6252413799037706963
	.quad	-3055441601647567921
	.quad	-3203831230369745799
	.quad	5404070034795315907
	.quad	-8919923546622172981
	.quad	-3539985255894009414
	.quad	-6538218414850328322
	.quad	-4424981569867511768
	.quad	-3561087000135522498
	.quad	8303831092947774002
	.quad	-9143208402725783417
	.quad	578208414664970847
	.quad	-6817324484979841368
	.quad	-3888925500096174345
	.quad	-3909969587797413806
	.quad	-249470856692830027
	.quad	-275775966319379353
	.quad	-4923524589293425438
	.quad	-7089889006590693952
	.quad	-3077202868308390899
	.quad	-4250675239810979535
	.quad	765182433041899281
	.quad	-701658031336336515
	.quad	5568164059729762005
	.quad	-7356065297226292178
	.quad	5785945546544795205
	.quad	-4583395603105477319
	.quad	-1990940103673781802
	.quad	-1117558485454458744
	.quad	6734696907262548556
	.quad	-7616003081050118571
	.quad	4209185567039092847
	.quad	-4908317832885260310
	.quad	-8573576096483297653
	.quad	-1523711272679187483
	.quad	3118087934678041646
	.quad	-7869848573065574033
	.quad	4254647968387469981
	.quad	-5225624697904579637
	.quad	706623942056949572
	.quad	-1920344853953336643
	.quad	-3728406090856200939
	.quad	-8117744561361917258
	.quad	-6941939825212513491
	.quad	-5535494683275008668
	.quad	5157633273766521849
	.quad	-2307682335666372931
	.quad	6447041592208152311
	.quad	-8359830487432564938
	.quad	6335244004343789146
	.quad	-5838102090863318269
	.quad	-1304317031425039375
	.quad	-2685941595151759932
	.quad	-1630396289281299219
	.quad	-8596242524610931813
	.quad	1286845328412881940
	.quad	-6133617137336276863
	.quad	-3003129357911285479
	.quad	-3055335403242958174
	.quad	5469460339465668959
	.quad	-8827113654667930715
	.quad	8030098730593431003
	.quad	-6422206049907525490
	.quad	-3797434642040374958
	.quad	-3416071543957018958
	.quad	9088264752731695015
	.quad	-9052573742614218705
	.quad	-8154892584824854328
	.quad	-6704031159840385477
	.quad	8253128342678483706
	.quad	-3768352931373093942
	.quad	5704724409920716729
	.quad	-98755145788979524
	.quad	-2092466524453879896
	.quad	-6979250993759194058
	.quad	998051431430019017
	.quad	-4112377723771604669
	.quad	-7975807747567252037
	.quad	-528786136287117932
	.quad	8476984389250486570
	.quad	-7248020362820530564
	.quad	-3925256793573221702
	.quad	-4448339435098275301
	.quad	-294884973539139224
	.quad	-948738275445456222
	.quad	-368606216923924029
	.quad	-7510490449794491995
	.quad	-2536221894791146470
	.quad	-4776427043815727089
	.quad	6053094668365842720
	.quad	-1358847786342270957
	.quad	2954682317029915496
	.quad	-7766808894105001205
	.quad	-459166561069996767
	.quad	-5096825099203863602
	.quad	-573958201337495959
	.quad	-1759345355577441598
	.quad	-5329133770099257852
	.quad	-8017119874876982855
	.quad	-5636551615525730110
	.quad	-5409713825168840664
	.quad	2177682517447613171
	.quad	-2150456263033662926
	.quad	2722103146809516464
	.quad	-8261564192037121185
	.quad	6313000485183335694
	.quad	-5715269221619013577
	.quad	3279564588051781713
	.quad	-2532400508596379068
	.quad	-512230283362660763
	.quad	-8500279345513818773
	.quad	1985699082112030975
	.quad	-6013663163464885563
	.quad	-2129562165787349185
	.quad	-2905392935903719049
	.quad	6561419329620589327
	.quad	-8733399612580906262
	.quad	-7428327965055601431
	.quad	-6305063497298744923
	.quad	4549648098962661924
	.quad	-3269643353196043250
	.quad	-8147997931578836307
	.quad	-8961056123388608887
	.quad	1825030320404309164
	.quad	-6589634135808373205
	.quad	6892973918932774359
	.quad	-3625356651333078602
	.quad	4004531380238580045
	.quad	-9183376934724255983
	.quad	-2108853905778275376
	.quad	-6867535149977932074
	.quad	6587304654631931588
	.quad	-3972732919045027189
	.quad	-989241218564861323
	.quad	-354230130378896082
	.quad	-1236551523206076654
	.quad	-7138922859127891907
	.quad	6144684325637283947
	.quad	-4311967555482476980
	.quad	-6154202648235558778
	.quad	-778273425925708321
	.quad	-3081067291867060568
	.quad	-7403949918844649557
	.quad	-1925667057416912855
	.quad	-4643251380128424042
	.quad	-2407083821771141069
	.quad	-1192378206733142148
	.quad	-7620540795641314240
	.quad	-7662765406849295699
	.quad	-2456994988062127448
	.quad	-4966770740134231719
	.quad	6152128301777116498
	.quad	-1596777406740401745
	.quad	-6144897678060768090
	.quad	-7915514906853832947
	.quad	-3840561048787980056
	.quad	-5282707615139903279
	.quad	4422670725869800738
	.quad	-1991698500497491195
	.quad	-8306719647944912790
	.quad	-8162340590452013853
	.quad	8643358275316593218
	.quad	-5591239719637629412
	.quad	6192511825718353619
	.quad	-2377363631119648861
	.quad	7740639782147942024
	.quad	-8403381297090862394
	.quad	2532056854628769813
	.quad	-5892540602936190089
	.quad	-6058300968568813542
	.quad	-2753989735242849707
	.quad	-7572876210711016927
	.quad	-8638772612167862923
	.quad	9102010423587778132
	.quad	-6186779746782440750
	.quad	-2457545025797441047
	.quad	-3121788665050663033
	.quad	-7683617300674189212
	.quad	-8868646943297746252
	.quad	-4802260812921368258
	.quad	-6474122660694794911
	.quad	-1391139997724322418
	.quad	-3480967307441105734
	.quad	7484447039699372786
	.quad	-9093133594791772940
	.quad	-9157278655470055721
	.quad	-6754730975062328271
	.quad	-6834912300910181747
	.quad	-3831727700400522434
	.quad	679731660717048624
	.quad	-177973607073265139
	.quad	-8373707460958465028
	.quad	-7028762532061872568
	.quad	8601490892183123069
	.quad	-4174267146649952806
	.quad	-7694880458480647779
	.quad	-606147914885053103
	.quad	4216457482181353988
	.quad	-7296371474444240046
	.quad	-4282243101277735614
	.quad	-4508778324627912153
	.quad	8482254178684994195
	.quad	-1024286887357502287
	.quad	5991131704928854840
	.quad	-7557708332239520786
	.quad	-3173071712060547581
	.quad	-4835449396872013078
	.quad	-8578025658503072380
	.quad	-1432625727662628443
	.quad	3112525982153323237
	.quad	-7812920107430224633
	.quad	4251171748059520975
	.quad	-5154464115860392887
	.quad	702278666647013314
	.quad	-1831394126398103205
	.quad	5489534351736154547
	.quad	-8062150356639896359
	.quad	1125115960621402640
	.quad	-5466001927372482545
	.quad	6018080969204141204
	.quad	-2220816390788215277
	.quad	2910915193077788601
	.quad	-8305539271883716405
	.quad	-486521013540076077
	.quad	-5770238071427257602
	.quad	-608151266925095096
	.quad	-2601111570856684098
	.quad	-5371875102083756773
	.quad	-8543223759426509417
	.quad	3560107088838733872
	.quad	-6067343680855748868
	.quad	-161552157378970563
	.quad	-2972493582642298180
	.quad	4409745821703674700
	.quad	-8775337516792518219
	.quad	-6467280898289979121
	.quad	-6357485877563259869
	.quad	1139270913992301907
	.quad	-3335171328526686933
	.quad	-3187597375937010520
	.quad	-9002011107970261189
	.quad	7231123676894144233
	.quad	-6640827866535438582
	.quad	4427218577690292387
	.quad	-3689348814741910324
	.quad	-3689348814741910324
	.quad	-9223372036854775808
	.quad	0
	.quad	-6917529027641081856
	.quad	0
	.quad	-4035225266123964416
	.quad	0
	.quad	-432345564227567616
	.quad	0
	.quad	-7187745005283311616
	.quad	0
	.quad	-4372995238176751616
	.quad	0
	.quad	-854558029293551616
	.quad	0
	.quad	-7451627795949551616
	.quad	0
	.quad	-4702848726509551616
	.quad	0
	.quad	-1266874889709551616
	.quad	0
	.quad	-7709325833709551616
	.quad	0
	.quad	-5024971273709551616
	.quad	0
	.quad	-1669528073709551616
	.quad	0
	.quad	-7960984073709551616
	.quad	0
	.quad	-5339544073709551616
	.quad	0
	.quad	-2062744073709551616
	.quad	0
	.quad	-8206744073709551616
	.quad	0
	.quad	-5646744073709551616
	.quad	0
	.quad	-2446744073709551616
	.quad	0
	.quad	-8446744073709551616
	.quad	0
	.quad	-5946744073709551616
	.quad	0
	.quad	-2821744073709551616
	.quad	0
	.quad	-8681119073709551616
	.quad	0
	.quad	-6239712823709551616
	.quad	0
	.quad	-3187955011209551616
	.quad	0
	.quad	-8910000909647051616
	.quad	0
	.quad	-6525815118631426616
	.quad	0
	.quad	-3545582879861895366
	.quad	0
	.quad	-9133518327554766460
	.quad	4611686018427387904
	.quad	-6805211891016070171
	.quad	5764607523034234880
	.quad	-3894828845342699810
	.quad	-6629298651489370112
	.quad	-256850038250986858
	.quad	5548434740920451072
	.quad	-7078060301547948643
	.quad	-1143914305352105984
	.quad	-4235889358507547899
	.quad	7793479155164643328
	.quad	-683175679707046970
	.quad	-4093209111326359552
	.quad	-7344513827457986212
	.quad	4359273333062107136
	.quad	-4568956265895094861
	.quad	5449091666327633920
	.quad	-1099509313941480672
	.quad	2199678564482154496
	.quad	-7604722348854507276
	.quad	1374799102801346560
	.quad	-4894216917640746191
	.quad	1718498878501683200
	.quad	-1506085128623544835
	.quad	6759809616554491904
	.quad	-7858832233030797378
	.quad	6530724019560251392
	.quad	-5211854272861108819
	.quad	-1059967012404461568
	.quad	-1903131822648998119
	.quad	7898413271349198848
	.quad	-8106986416796705681
	.quad	-1981020733047832576
	.quad	-5522047002568494197
	.quad	-2476275916309790720
	.quad	-2290872734783229842
	.quad	-3095344895387238400
	.quad	-8349324486880600507
	.quad	4982938468024057856
	.quad	-5824969590173362730
	.quad	-7606384970252091392
	.quad	-2669525969289315508
	.quad	4327076842467049472
	.quad	-8585982758446904049
	.quad	-6518949010312869888
	.quad	-6120792429631242157
	.quad	-8148686262891087360
	.quad	-3039304518611664792
	.quad	8260886245095692416
	.quad	-8817094351773372351
	.quad	5163053903184807760
	.quad	-6409681921289327535
	.quad	-7381240676301154012
	.quad	-3400416383184271515
	.quad	-3178808521666707
	.quad	-9042789267131251553
	.quad	-4613672773753429596
	.quad	-6691800565486676537
	.quad	-5767090967191786995
	.quad	-3753064688430957767
	.quad	-7208863708989733744
	.quad	-79644842111309304
	.quad	212292400617608628
	.quad	-6967307053960650171
	.quad	132682750386005392
	.quad	-4097447799023424810
	.quad	4777539456409894645
	.quad	-510123730351893109
	.quad	-3251447716342407502
	.quad	-7236356359111015049
	.quad	7191217214140771119
	.quad	-4433759430461380907
	.quad	4377335499248575995
	.quad	-930513269649338230
	.quad	-8363388681221443718
	.quad	-7499099821171918250
	.quad	-7532960934977096276
	.quad	-4762188758037509908
	.quad	4418856886560793367
	.quad	-1341049929119499481
	.quad	5523571108200991709
	.quad	-7755685233340769032
	.quad	-8076983103442849942
	.quad	-5082920523248573386
	.quad	-5484542860876174524
	.quad	-1741964635633328828
	.quad	6979379479186945558
	.quad	-8006256924911912374
	.quad	-4861259862362934835
	.quad	-5396135137712502563
	.quad	7758483227328495169
	.quad	-2133482903713240300
	.quad	-4136954021121544751
	.quad	-8250955842461857044
	.quad	-279753253987271518
	.quad	-5702008784649933400
	.quad	4261994450943298507
	.quad	-2515824962385028846
	.quad	5327493063679123134
	.quad	-8489919629131724885
	.quad	7941369183226839863
	.quad	-6000713517987268202
	.quad	5315025460606161924
	.quad	-2889205879056697349
	.quad	-2579590211097073402
	.quad	-8723282702051517699
	.quad	7611128154919104931
	.quad	-6292417359137009220
	.quad	-4321147861633282548
	.quad	-3253835680493873621
	.quad	-789748808614215280
	.quad	-8951176327949752869
	.quad	8729779031470891258
	.quad	-6577284391509803182
	.quad	6300537770911226168
	.quad	-3609919470959866074
	.quad	-1347699823215743098
	.quad	-9173728696990998152
	.quad	6075216638131242420
	.quad	-6855474852811359786
	.quad	7594020797664053025
	.quad	-3957657547586811828
	.quad	269153960225290473
	.quad	-335385916056126881
	.quad	336442450281613091
	.quad	-7127145225176161157
	.quad	7127805559067090038
	.quad	-4297245513042813542
	.quad	4298070930406474644
	.quad	-759870872876129024
	.quad	-3850783373846682503
	.quad	-7392448323188662496
	.quad	9122475437414293195
	.quad	-4628874385558440216
	.quad	-7043649776941685122
	.quad	-1174406963520662366
	.quad	-4192876202749718498
	.quad	-7651533379841495835
	.quad	-4926390635932268014
	.quad	-4952730706374481889
	.quad	3065383741939440791
	.quad	-1579227364540714458
	.quad	-779956341003086915
	.quad	-7904546130479028392
	.quad	6430056314514152534
	.quad	-5268996644671397586
	.quad	8037570393142690668
	.quad	-1974559787411859078
	.quad	823590954573587527
	.quad	-8151628894773493780
	.quad	5126430365035880108
	.quad	-5577850100039479321
	.quad	6408037956294850135
	.quad	-2360626606621961247
	.quad	3398361426941174765
	.quad	-8392920656779807636
	.quad	-4793553135802847628
	.quad	-5879464802547371641
	.quad	-1380255401326171631
	.quad	-2737644984756826647
	.quad	-1725319251657714539
	.quad	-8628557143114098510
	.quad	3533361486141316317
	.quad	-6174010410465235234
	.quad	-4806670179178130411
	.quad	-3105826994654156138
	.quad	7826720331309500698
	.quad	-8858670899299929442
	.quad	280014188641050032
	.quad	-6461652605697523899
	.quad	-8873354301053463268
	.quad	-3465379738694516970
	.quad	-1868320839462053277
	.quad	-9083391364325154962
	.quad	5749828502977298558
	.quad	-6742553186979055799
	.quad	-2036086408133152611
	.quad	-3816505465296431844
	.quad	6678264026688335045
	.quad	-158945813193151901
	.quad	8347830033360418806
	.quad	-7016870160886801794
	.quad	2911550761636567802
	.quad	-4159401682681114339
	.quad	-5583933584809066056
	.quad	-587566084924005019
	.quad	2243455055843443238
	.quad	-7284757830718584993
	.quad	3708002419115845976
	.quad	-4494261269970843337
	.quad	23317005467419566
	.quad	-1006140569036166268
	.quad	-4582539761593113446
	.quad	-7546366883288685774
	.quad	-558244341782001952
	.quad	-4821272585683469313
	.quad	-5309491445654890344
	.quad	-1414904713676948737
	.quad	-6636864307068612930
	.quad	-7801844473689174817
	.quad	-4148040191917883081
	.quad	-5140619573684080617
	.quad	-5185050239897353852
	.quad	-1814088448677712867
	.quad	-6481312799871692315
	.quad	-8051334308064652398
	.quad	-8662506518347195601
	.quad	-5452481866653427593
	.quad	3006924907348169211
	.quad	-2203916314889396588
	.quad	-853029884242176390
	.quad	-8294976724446954723
	.quad	1772699331562333708
	.quad	-5757034887131305500
	.quad	6827560182880305039
	.quad	-2584607590486743971
	.quad	8534450228600381299
	.quad	-8532908771695296838
	.quad	7639874402088932264
	.quad	-6054449946191733143
	.quad	326470965756389522
	.quad	-2956376414312278525
	.quad	5019774725622874806
	.quad	-8765264286586255934
	.quad	831516194300602802
	.quad	-6344894339805432014
	.quad	-8183976793979022306
	.quad	-3319431906329402113
	.quad	3605087062808385830
	.quad	-8992173969096958177
	.quad	9170708441896323000
	.quad	-6628531442943809817
	.quad	6851699533943015846
	.quad	-3673978285252374367
	.quad	3952938399001381903
	.quad	-9213765455923815836
	.quad	-4446942528265218167
	.quad	-6905520801477381891
	.quad	-946992141904134804
	.quad	-4020214983419339459
	.quad	8039631859474607303
	.quad	-413582710846786420
	.quad	-3785518230938904583
	.quad	-7176018221920323369
	.quad	-60105885123121413
	.quad	-4358336758973016307
	.quad	-75132356403901766
	.quad	-836234930288882479
	.quad	9129456591349898601
	.quad	-7440175859071633406
	.quad	-1211618658047395231
	.quad	-4688533805412153853
	.quad	-6126209340986631942
	.quad	-1248981238337804412
	.quad	-7657761676233289928
	.quad	-7698142301602209614
	.quad	-2480258038432112253
	.quad	-5010991858575374113
	.quad	-7712008566467528220
	.quad	-1652053804791829737
	.quad	8806733365625141341
	.quad	-7950062655635975442
	.quad	-6025006692552756422
	.quad	-5325892301117581398
	.quad	6303799689591218185
	.quad	-2045679357969588844
	.quad	-1343622424865753077
	.quad	-8196078626372074883
	.quad	1466078993672598279
	.quad	-5633412264537705700
	.quad	6444284760518135752
	.quad	-2430079312244744221
	.quad	8055355950647669691
	.quad	-8436328597794046994
	.quad	2728754459941099604
	.quad	-5933724728815170839
	.quad	-5812428961928401302
	.quad	-2805469892591575644
	.quad	1957835834444274180
	.quad	-8670947710510816634
	.quad	-7999724640327104446
	.quad	-6226998619711132888
	.quad	3835402254873283155
	.quad	-3172062256211528206
	.quad	4794252818591603944
	.quad	-8900067937773286985
	.quad	7608094030047140369
	.quad	-6513398903789220827
	.quad	4898431519131537557
	.quad	-3530062611309138130
	.quad	-7712018656367741765
	.quad	-9123818159709293187
	.quad	2097517367411243253
	.quad	-6793086681209228580
	.quad	7233582727691441970
	.quad	-3879672333084147821
	.quad	9041978409614302462
	.quad	-237904397927796872
	.quad	6690786993590490174
	.quad	-7066219276345954901
	.quad	4181741870994056359
	.quad	-4221088077005055722
	.quad	615491320315182544
	.quad	-664674077828931749
	.quad	-8454007886460797627
	.quad	-7332950326284164199
	.quad	3939617107816777291
	.quad	-4554501889427817345
	.quad	-8910536670511192099
	.quad	-1081441343357383777
	.quad	7308573235570561493
	.quad	-7593429867239446717
	.quad	-6961356773836868827
	.quad	-4880101315621920492
	.quad	-8701695967296086034
	.quad	-1488440626100012711
	.quad	-6265433940692719638
	.quad	-7847804418953589800
	.quad	695789805494438130
	.quad	-5198069505264599346
	.quad	869737256868047663
	.quad	-1885900863153361279
	.quad	-8136200465769716230
	.quad	-8096217067111932656
	.quad	-473439272678684740
	.quad	-5508585315462527915
	.quad	4019886927579031980
	.quad	-2274045625900771990
	.quad	-8810199395808373737
	.quad	-8338807543829064350
	.quad	-7812217631593927538
	.quad	-5811823411358942533
	.quad	4069786015789754290
	.quad	-2653093245771290262
	.quad	475546501309804958
	.quad	-8575712306248138270
	.quad	4908902581746016003
	.quad	-6107954364382784934
	.quad	-3087243809672255805
	.quad	-3023256937051093263
	.quad	-8470740780517707660
	.quad	-8807064613298015146
	.quad	-682526969396179383
	.quad	-6397144748195131028
	.quad	-5464844730172612133
	.quad	-3384744916816525881
	.quad	-2219369894288377262
	.quad	-9032994600651410532
	.quad	-1387106183930235789
	.quad	-6679557232386875260
	.quad	2877803288514593168
	.quad	-3737760522056206171
	.quad	3597254110643241460
	.quad	-60514634142869810
	.quad	9108253656731439729
	.quad	-6955350673980375487
	.quad	1080972517029761926
	.quad	-4082502324048081455
	.quad	5962901664714590312
	.quad	-491441886632713915
	.quad	-6381430974388925822
	.quad	-7224680206786528053
	.quad	-8600080377420466543
	.quad	-4419164240055772162
	.quad	7696643601933968437
	.quad	-912269281642327298
	.quad	397432465562684739
	.quad	-7487697328667536418
	.quad	-4363290727450709942
	.quad	-4747935642407032618
	.quad	8380944645968776284
	.quad	-1323233534581402868
	.quad	1252808770606194547
	.quad	-7744549986754458649
	.quad	-8440366555225904216
	.quad	-5069001465015685407
	.quad	7896285879677171346
	.quad	-1724565812842218855
	.quad	-3964700705685699529
	.quad	-7995382660667468640
	.quad	2133748077373825698
	.quad	-5382542307406947896
	.quad	2667185096717282123
	.quad	-2116491865831296966
	.quad	3333981370896602653
	.quad	-8240336443785642460
	.quad	6695424375237764562
	.quad	-5688734536304665171
	.quad	8369280469047205703
	.quad	-2499232151953443560
	.quad	-3373457468973156583
	.quad	-8479549122611984081
	.quad	-9025939945749304721
	.quad	-5987750384837592197
	.quad	7164319141522920715
	.quad	-2873001962619602342
	.quad	4343712908476262990
	.quad	-8713155254278333320
	.quad	7326506586225052273
	.quad	-6279758049420528746
	.quad	9158133232781315341
	.quad	-3238011543348273028
	.quad	2224294504121868368
	.quad	-8941286242233752499
	.quad	-7833187971778608078
	.quad	-6564921784364802720
	.quad	-568112927868484289
	.quad	-3594466212028615495
	.quad	3901544858591782542
	.quad	-9164070410158966541
	.quad	-4479063491021217767
	.quad	-6843401994271320272
	.quad	-5598829363776522209
	.quad	-3942566474411762436
	.quad	-2386850686293264857
	.quad	-316522074587315140
	.quad	1628122660560806833
	.quad	-7115355324258153819
	.quad	-8205795374004271538
	.quad	-4282508136895304370
	.quad	-1033872180650563614
	.quad	-741449152691742558
	.quad	-5904026244240592421
	.quad	-7380934748073420955
	.quad	-5995859411864064215
	.quad	-4614482416664388289
	.quad	1728547772024695539
	.quad	-1156417002403097458
	.quad	-2451001303396518480
	.quad	-7640289654143017767
	.quad	5385653213018257806
	.quad	-4938676049251384305
	.quad	-7102991539009341455
	.quad	-1561659043136842477
	.quad	-8878739423761676819
	.quad	-7893565929601608404
	.quad	3674159897003727796
	.quad	-5255271393574622601
	.quad	4592699871254659745
	.quad	-1957403223540890347
	.quad	1129188820640936778
	.quad	-8140906042354138323
	.quad	3011586022114279438
	.quad	-5564446534515285000
	.quad	8376168546070237202
	.quad	-2343872149716718346
	.quad	-7976533391121755114
	.quad	-8382449121214030822
	.quad	1932195658189984910
	.quad	-5866375383090150624
	.quad	-6808127464117294671
	.quad	-2721283210435300376
	.quad	-3898473311719230434
	.quad	-8618331034163144591
	.quad	9092669226243950738
	.quad	-6161227774276542835
	.quad	-2469221522477225289
	.quad	-3089848699418290639
	.quad	6136845133758244197
	.quad	-8848684464777513506
	.quad	-3082000819042179233
	.quad	-6449169562544503978
	.quad	-8464187042230111945
	.quad	-3449775934753242068
	.quad	3254824252494523781
	.quad	-9073638986861858149
	.quad	-7189106879045698445
	.quad	-6730362715149934782
	.quad	-8986383598807123057
	.quad	-3801267375510030573
	.quad	2602078556773259891
	.quad	-139898200960150313
	.quad	-1359087822460813040
	.quad	-7004965403241175802
	.quad	-849429889038008150
	.quad	-4144520735624081848
	.quad	-5673473379724898091
	.quad	-568964901102714406
	.quad	-2480155706228734710
	.quad	-7273132090830278360
	.quad	-3855940325606653146
	.quad	-4479729095110460046
	.quad	-208239388580928528
	.quad	-987975350460687153
	.quad	-4871985254153548564
	.quad	-7535013621679011327
	.quad	-3044990783845967853
	.quad	-4807081008671376254
	.quad	5417133557047315992
	.quad	-1397165242411832414
	.quad	-2451955090545630818
	.quad	-7790757304148477115
	.quad	-3838314940804713213
	.quad	-5126760611758208489
	.quad	4425478360848884291
	.quad	-1796764746270372707
	.quad	920161932633717460
	.quad	-8040506994060064798
	.quad	2880944217109767365
	.quad	-5438947724147693094
	.quad	-5622191765467566602
	.quad	-2186998636757228463
	.quad	6807318348447705459
	.quad	-8284403175614349646
	.quad	-2662955059861265944
	.quad	-5743817951090549153
	.quad	-7940379843253970334
	.quad	-2568086420435798537
	.quad	8521269269642088699
	.quad	-8522583040413455942
	.quad	-6203421752542164323
	.quad	-6041542782089432023
	.quad	6080780864604458308
	.quad	-2940242459184402125
	.quad	-6234081974526590827
	.quad	-8755180564631333184
	.quad	5327070802775656541
	.quad	-6332289687361778576
	.quad	6658838503469570676
	.quad	-3303676090774835316
	.quad	8323548129336963345
	.quad	-8982326584375353929
	.quad	-4021154456019173717
	.quad	-6616222212041804507
	.quad	-5026443070023967147
	.quad	-3658591746624867729
	.quad	2940318199324816875
	.quad	-9204148869281624187
	.quad	8755227902219092403
	.quad	-6893500068174642330
	.quad	-2891023177508298209
	.quad	-4005189066790915008
	.quad	-8225464990312760665
	.quad	-394800315061255856
	.quad	-5670145219463562927
	.quad	-7164279224554366766
	.quad	7985374283903742931
	.quad	-4343663012265570553
	.quad	758345818024902856
	.quad	-817892746904575288
	.quad	-3663753745896259334
	.quad	-7428711994456441411
	.quad	-9207375118826243940
	.quad	-4674203974643163860
	.quad	-2285846861678029117
	.quad	-1231068949876566920
	.quad	1754377441329851508
	.quad	-7686947121313936181
	.quad	1096485900831157192
	.quad	-4996997883215032323
	.quad	-3241078642388441414
	.quad	-1634561335591402499
	.quad	5172023733869224041
	.quad	-7939129862385708418
	.quad	5538357842881958977
	.quad	-5312226309554747619
	.quad	-2300424733252327086
	.quad	-2028596868516046619
	.quad	6347841120289366950
	.quad	-8185402070463610993
	.quad	6273243709394548296
	.quad	-5620066569652125837
	.quad	3229868618315797466
	.quad	-2413397193637769393
	.quad	-574350245532641071
	.quad	-8425902273664687727
	.quad	-358968903457900670
	.quad	-5920691823653471754
	.quad	8774660907532399971
	.quad	-2789178761139451788
	.quad	1744954097560724156
	.quad	-8660765753353239224
	.quad	-8132775725879323211
	.quad	-6214271173264161126
	.quad	-5554283638921766110
	.quad	-3156152948152813503
	.quad	6892203506629956075
	.quad	-8890124620236590296
	.quad	-2609901835997359309
	.quad	-6500969756868349965
	.quad	1349308723430688768
	.quad	-3514526177658049553
	.quad	-2925050114139026944
	.quad	-9114107888677362827
	.quad	-1828156321336891840
	.quad	-6780948842419315629
	.quad	6938176635183661008
	.quad	-3864500034596756632
	.quad	4061034775552188356
	.quad	-218939024818557886
	.quad	5076293469440235445
	.quad	-7054365918152680535
	.quad	7784369436827535057
	.align 32
	.type	_ZL8minverse, @object
	.size	_ZL8minverse, 432
_ZL8minverse:
	.quad	1
	.quad	-1
	.quad	-3689348814741910323
	.quad	3689348814741910323
	.quad	-8116567392432202711
	.quad	737869762948382064
	.quad	2066035336255469781
	.quad	147573952589676412
	.quad	-3276141747490816367
	.quad	29514790517935282
	.quad	6723469279985657373
	.quad	5902958103587056
	.quad	8723391485480952121
	.quad	1180591620717411
	.quad	-1944670517645719899
	.quad	236118324143482
	.quad	-4078282918271054303
	.quad	47223664828696
	.quad	-8194354213138031507
	.quad	9444732965739
	.quad	5739826786856214345
	.quad	1888946593147
	.quad	1147965357371242869
	.quad	377789318629
	.quad	3918941886216158897
	.quad	75557863725
	.quad	-6594909252240588867
	.quad	15111572745
	.quad	6059715779035702873
	.quad	3022314549
	.quad	8590640785290961221
	.quad	604462909
	.quad	-1971220657683718079
	.quad	120892581
	.quad	-4083592946278653939
	.quad	24178516
	.quad	-4506067403997641111
	.quad	4835703
	.quad	2788135333942382101
	.quad	967140
	.quad	-3131721747953433903
	.quad	193428
	.quad	-8005041979074507427
	.quad	38685
	.quad	5777689233668919161
	.quad	7737
	.quad	-2533810968008126491
	.quad	1547
	.quad	3182586621140285025
	.quad	309
	.quad	636517324228057005
	.quad	61
	.quad	127303464845611401
	.quad	12
	.align 32
	.type	_ZL11multipliers, @object
	.size	_ZL11multipliers, 9872
_ZL11multipliers:
	.quad	-7054365918152680535
	.quad	7784369436827535058
	.quad	-218939024818557886
	.quad	5076293469440235446
	.quad	-3864500034596756632
	.quad	4061034775552188357
	.quad	-6780948842419315629
	.quad	6938176635183661009
	.quad	-9114107888677362827
	.quad	-1828156321336891839
	.quad	-3514526177658049553
	.quad	-2925050114139026943
	.quad	-6500969756868349965
	.quad	1349308723430688769
	.quad	-8890124620236590296
	.quad	-2609901835997359308
	.quad	-3156152948152813503
	.quad	6892203506629956076
	.quad	-6214271173264161126
	.quad	-5554283638921766109
	.quad	-8660765753353239224
	.quad	-8132775725879323210
	.quad	-2789178761139451788
	.quad	1744954097560724157
	.quad	-5920691823653471754
	.quad	8774660907532399972
	.quad	-8425902273664687727
	.quad	-358968903457900669
	.quad	-2413397193637769393
	.quad	-574350245532641070
	.quad	-5620066569652125837
	.quad	3229868618315797467
	.quad	-8185402070463610993
	.quad	6273243709394548297
	.quad	-2028596868516046619
	.quad	6347841120289366951
	.quad	-5312226309554747619
	.quad	-2300424733252327085
	.quad	-7939129862385708418
	.quad	5538357842881958978
	.quad	-1634561335591402499
	.quad	5172023733869224042
	.quad	-4996997883215032323
	.quad	-3241078642388441413
	.quad	-7686947121313936181
	.quad	1096485900831157193
	.quad	-1231068949876566920
	.quad	1754377441329851509
	.quad	-4674203974643163860
	.quad	-2285846861678029116
	.quad	-7428711994456441411
	.quad	-9207375118826243939
	.quad	-817892746904575288
	.quad	-3663753745896259333
	.quad	-4343663012265570553
	.quad	758345818024902857
	.quad	-7164279224554366766
	.quad	7985374283903742932
	.quad	-394800315061255856
	.quad	-5670145219463562926
	.quad	-4005189066790915008
	.quad	-8225464990312760664
	.quad	-6893500068174642330
	.quad	-2891023177508298208
	.quad	-9204148869281624187
	.quad	8755227902219092404
	.quad	-3658591746624867729
	.quad	2940318199324816876
	.quad	-6616222212041804507
	.quad	-5026443070023967146
	.quad	-8982326584375353929
	.quad	-4021154456019173716
	.quad	-3303676090774835316
	.quad	8323548129336963346
	.quad	-6332289687361778576
	.quad	6658838503469570677
	.quad	-8755180564631333184
	.quad	5327070802775656542
	.quad	-2940242459184402125
	.quad	-6234081974526590826
	.quad	-6041542782089432023
	.quad	6080780864604458309
	.quad	-8522583040413455942
	.quad	-6203421752542164322
	.quad	-2568086420435798537
	.quad	8521269269642088700
	.quad	-5743817951090549153
	.quad	-7940379843253970333
	.quad	-8284403175614349646
	.quad	-2662955059861265943
	.quad	-2186998636757228463
	.quad	6807318348447705460
	.quad	-5438947724147693094
	.quad	-5622191765467566601
	.quad	-8040506994060064798
	.quad	2880944217109767366
	.quad	-1796764746270372707
	.quad	920161932633717461
	.quad	-5126760611758208489
	.quad	4425478360848884292
	.quad	-7790757304148477115
	.quad	-3838314940804713212
	.quad	-1397165242411832414
	.quad	-2451955090545630817
	.quad	-4807081008671376254
	.quad	5417133557047315993
	.quad	-7535013621679011327
	.quad	-3044990783845967852
	.quad	-987975350460687153
	.quad	-4871985254153548563
	.quad	-4479729095110460046
	.quad	-208239388580928527
	.quad	-7273132090830278360
	.quad	-3855940325606653145
	.quad	-568964901102714406
	.quad	-2480155706228734709
	.quad	-4144520735624081848
	.quad	-5673473379724898090
	.quad	-7004965403241175802
	.quad	-849429889038008149
	.quad	-139898200960150313
	.quad	-1359087822460813039
	.quad	-3801267375510030573
	.quad	2602078556773259892
	.quad	-6730362715149934782
	.quad	-8986383598807123056
	.quad	-9073638986861858149
	.quad	-7189106879045698444
	.quad	-3449775934753242068
	.quad	3254824252494523782
	.quad	-6449169562544503978
	.quad	-8464187042230111944
	.quad	-8848684464777513506
	.quad	-3082000819042179232
	.quad	-3089848699418290639
	.quad	6136845133758244198
	.quad	-6161227774276542835
	.quad	-2469221522477225288
	.quad	-8618331034163144591
	.quad	9092669226243950739
	.quad	-2721283210435300376
	.quad	-3898473311719230433
	.quad	-5866375383090150624
	.quad	-6808127464117294670
	.quad	-8382449121214030822
	.quad	1932195658189984911
	.quad	-2343872149716718346
	.quad	-7976533391121755113
	.quad	-5564446534515285000
	.quad	8376168546070237203
	.quad	-8140906042354138323
	.quad	3011586022114279439
	.quad	-1957403223540890347
	.quad	1129188820640936779
	.quad	-5255271393574622601
	.quad	4592699871254659746
	.quad	-7893565929601608404
	.quad	3674159897003727797
	.quad	-1561659043136842477
	.quad	-8878739423761676818
	.quad	-4938676049251384305
	.quad	-7102991539009341454
	.quad	-7640289654143017767
	.quad	5385653213018257807
	.quad	-1156417002403097458
	.quad	-2451001303396518479
	.quad	-4614482416664388289
	.quad	1728547772024695540
	.quad	-7380934748073420955
	.quad	-5995859411864064214
	.quad	-741449152691742558
	.quad	-5904026244240592420
	.quad	-4282508136895304370
	.quad	-1033872180650563613
	.quad	-7115355324258153819
	.quad	-8205795374004271537
	.quad	-316522074587315140
	.quad	1628122660560806834
	.quad	-3942566474411762436
	.quad	-2386850686293264856
	.quad	-6843401994271320272
	.quad	-5598829363776522208
	.quad	-9164070410158966541
	.quad	-4479063491021217766
	.quad	-3594466212028615495
	.quad	3901544858591782543
	.quad	-6564921784364802720
	.quad	-568112927868484288
	.quad	-8941286242233752499
	.quad	-7833187971778608077
	.quad	-3238011543348273028
	.quad	2224294504121868369
	.quad	-6279758049420528746
	.quad	9158133232781315342
	.quad	-8713155254278333320
	.quad	7326506586225052274
	.quad	-2873001962619602342
	.quad	4343712908476262991
	.quad	-5987750384837592197
	.quad	7164319141522920716
	.quad	-8479549122611984081
	.quad	-9025939945749304720
	.quad	-2499232151953443560
	.quad	-3373457468973156582
	.quad	-5688734536304665171
	.quad	8369280469047205704
	.quad	-8240336443785642460
	.quad	6695424375237764563
	.quad	-2116491865831296966
	.quad	3333981370896602654
	.quad	-5382542307406947896
	.quad	2667185096717282124
	.quad	-7995382660667468640
	.quad	2133748077373825699
	.quad	-1724565812842218855
	.quad	-3964700705685699528
	.quad	-5069001465015685407
	.quad	7896285879677171347
	.quad	-7744549986754458649
	.quad	-8440366555225904215
	.quad	-1323233534581402868
	.quad	1252808770606194548
	.quad	-4747935642407032618
	.quad	8380944645968776285
	.quad	-7487697328667536418
	.quad	-4363290727450709941
	.quad	-912269281642327298
	.quad	397432465562684740
	.quad	-4419164240055772162
	.quad	7696643601933968438
	.quad	-7224680206786528053
	.quad	-8600080377420466542
	.quad	-491441886632713915
	.quad	-6381430974388925821
	.quad	-4082502324048081455
	.quad	5962901664714590313
	.quad	-6955350673980375487
	.quad	1080972517029761927
	.quad	-60514634142869810
	.quad	9108253656731439730
	.quad	-3737760522056206171
	.quad	3597254110643241461
	.quad	-6679557232386875260
	.quad	2877803288514593169
	.quad	-9032994600651410532
	.quad	-1387106183930235788
	.quad	-3384744916816525881
	.quad	-2219369894288377261
	.quad	-6397144748195131028
	.quad	-5464844730172612132
	.quad	-8807064613298015146
	.quad	-682526969396179382
	.quad	-3023256937051093263
	.quad	-8470740780517707659
	.quad	-6107954364382784934
	.quad	-3087243809672255804
	.quad	-8575712306248138270
	.quad	4908902581746016004
	.quad	-2653093245771290262
	.quad	475546501309804959
	.quad	-5811823411358942533
	.quad	4069786015789754291
	.quad	-8338807543829064350
	.quad	-7812217631593927537
	.quad	-2274045625900771990
	.quad	-8810199395808373736
	.quad	-5508585315462527915
	.quad	4019886927579031981
	.quad	-8096217067111932656
	.quad	-473439272678684739
	.quad	-1885900863153361279
	.quad	-8136200465769716229
	.quad	-5198069505264599346
	.quad	869737256868047664
	.quad	-7847804418953589800
	.quad	695789805494438131
	.quad	-1488440626100012711
	.quad	-6265433940692719637
	.quad	-4880101315621920492
	.quad	-8701695967296086033
	.quad	-7593429867239446717
	.quad	-6961356773836868826
	.quad	-1081441343357383777
	.quad	7308573235570561494
	.quad	-4554501889427817345
	.quad	-8910536670511192098
	.quad	-7332950326284164199
	.quad	3939617107816777292
	.quad	-664674077828931749
	.quad	-8454007886460797626
	.quad	-4221088077005055722
	.quad	615491320315182545
	.quad	-7066219276345954901
	.quad	4181741870994056360
	.quad	-237904397927796872
	.quad	6690786993590490175
	.quad	-3879672333084147821
	.quad	9041978409614302463
	.quad	-6793086681209228580
	.quad	7233582727691441971
	.quad	-9123818159709293187
	.quad	2097517367411243254
	.quad	-3530062611309138130
	.quad	-7712018656367741764
	.quad	-6513398903789220827
	.quad	4898431519131537558
	.quad	-8900067937773286985
	.quad	7608094030047140370
	.quad	-3172062256211528206
	.quad	4794252818591603945
	.quad	-6226998619711132888
	.quad	3835402254873283156
	.quad	-8670947710510816634
	.quad	-7999724640327104445
	.quad	-2805469892591575644
	.quad	1957835834444274181
	.quad	-5933724728815170839
	.quad	-5812428961928401301
	.quad	-8436328597794046994
	.quad	2728754459941099605
	.quad	-2430079312244744221
	.quad	8055355950647669692
	.quad	-5633412264537705700
	.quad	6444284760518135753
	.quad	-8196078626372074883
	.quad	1466078993672598280
	.quad	-2045679357969588844
	.quad	-1343622424865753076
	.quad	-5325892301117581398
	.quad	6303799689591218186
	.quad	-7950062655635975442
	.quad	-6025006692552756421
	.quad	-1652053804791829737
	.quad	8806733365625141342
	.quad	-5010991858575374113
	.quad	-7712008566467528219
	.quad	-7698142301602209614
	.quad	-2480258038432112252
	.quad	-1248981238337804412
	.quad	-7657761676233289927
	.quad	-4688533805412153853
	.quad	-6126209340986631941
	.quad	-7440175859071633406
	.quad	-1211618658047395230
	.quad	-836234930288882479
	.quad	9129456591349898602
	.quad	-4358336758973016307
	.quad	-75132356403901765
	.quad	-7176018221920323369
	.quad	-60105885123121412
	.quad	-413582710846786420
	.quad	-3785518230938904582
	.quad	-4020214983419339459
	.quad	8039631859474607304
	.quad	-6905520801477381891
	.quad	-946992141904134803
	.quad	-9213765455923815836
	.quad	-4446942528265218166
	.quad	-3673978285252374367
	.quad	3952938399001381904
	.quad	-6628531442943809817
	.quad	6851699533943015847
	.quad	-8992173969096958177
	.quad	9170708441896323001
	.quad	-3319431906329402113
	.quad	3605087062808385831
	.quad	-6344894339805432014
	.quad	-8183976793979022305
	.quad	-8765264286586255934
	.quad	831516194300602803
	.quad	-2956376414312278525
	.quad	5019774725622874807
	.quad	-6054449946191733143
	.quad	326470965756389523
	.quad	-8532908771695296838
	.quad	7639874402088932265
	.quad	-2584607590486743971
	.quad	8534450228600381300
	.quad	-5757034887131305500
	.quad	6827560182880305040
	.quad	-8294976724446954723
	.quad	1772699331562333709
	.quad	-2203916314889396588
	.quad	-853029884242176389
	.quad	-5452481866653427593
	.quad	3006924907348169212
	.quad	-8051334308064652398
	.quad	-8662506518347195600
	.quad	-1814088448677712867
	.quad	-6481312799871692314
	.quad	-5140619573684080617
	.quad	-5185050239897353851
	.quad	-7801844473689174817
	.quad	-4148040191917883080
	.quad	-1414904713676948737
	.quad	-6636864307068612929
	.quad	-4821272585683469313
	.quad	-5309491445654890343
	.quad	-7546366883288685774
	.quad	-558244341782001951
	.quad	-1006140569036166268
	.quad	-4582539761593113445
	.quad	-4494261269970843337
	.quad	23317005467419567
	.quad	-7284757830718584993
	.quad	3708002419115845977
	.quad	-587566084924005019
	.quad	2243455055843443239
	.quad	-4159401682681114339
	.quad	-5583933584809066055
	.quad	-7016870160886801794
	.quad	2911550761636567803
	.quad	-158945813193151901
	.quad	8347830033360418807
	.quad	-3816505465296431844
	.quad	6678264026688335046
	.quad	-6742553186979055799
	.quad	-2036086408133152610
	.quad	-9083391364325154962
	.quad	5749828502977298559
	.quad	-3465379738694516970
	.quad	-1868320839462053276
	.quad	-6461652605697523899
	.quad	-8873354301053463267
	.quad	-8858670899299929442
	.quad	280014188641050033
	.quad	-3105826994654156138
	.quad	7826720331309500699
	.quad	-6174010410465235234
	.quad	-4806670179178130410
	.quad	-8628557143114098510
	.quad	3533361486141316318
	.quad	-2737644984756826647
	.quad	-1725319251657714538
	.quad	-5879464802547371641
	.quad	-1380255401326171630
	.quad	-8392920656779807636
	.quad	-4793553135802847627
	.quad	-2360626606621961247
	.quad	3398361426941174766
	.quad	-5577850100039479321
	.quad	6408037956294850136
	.quad	-8151628894773493780
	.quad	5126430365035880109
	.quad	-1974559787411859078
	.quad	823590954573587528
	.quad	-5268996644671397586
	.quad	8037570393142690669
	.quad	-7904546130479028392
	.quad	6430056314514152535
	.quad	-1579227364540714458
	.quad	-779956341003086914
	.quad	-4952730706374481889
	.quad	3065383741939440792
	.quad	-7651533379841495835
	.quad	-4926390635932268013
	.quad	-1174406963520662366
	.quad	-4192876202749718497
	.quad	-4628874385558440216
	.quad	-7043649776941685121
	.quad	-7392448323188662496
	.quad	9122475437414293196
	.quad	-759870872876129024
	.quad	-3850783373846682502
	.quad	-4297245513042813542
	.quad	4298070930406474645
	.quad	-7127145225176161157
	.quad	7127805559067090039
	.quad	-335385916056126881
	.quad	336442450281613092
	.quad	-3957657547586811828
	.quad	269153960225290474
	.quad	-6855474852811359786
	.quad	7594020797664053026
	.quad	-9173728696990998152
	.quad	6075216638131242421
	.quad	-3609919470959866074
	.quad	-1347699823215743097
	.quad	-6577284391509803182
	.quad	6300537770911226169
	.quad	-8951176327949752869
	.quad	8729779031470891259
	.quad	-3253835680493873621
	.quad	-789748808614215279
	.quad	-6292417359137009220
	.quad	-4321147861633282547
	.quad	-8723282702051517699
	.quad	7611128154919104932
	.quad	-2889205879056697349
	.quad	-2579590211097073401
	.quad	-6000713517987268202
	.quad	5315025460606161925
	.quad	-8489919629131724885
	.quad	7941369183226839864
	.quad	-2515824962385028846
	.quad	5327493063679123135
	.quad	-5702008784649933400
	.quad	4261994450943298508
	.quad	-8250955842461857044
	.quad	-279753253987271517
	.quad	-2133482903713240300
	.quad	-4136954021121544750
	.quad	-5396135137712502563
	.quad	7758483227328495170
	.quad	-8006256924911912374
	.quad	-4861259862362934834
	.quad	-1741964635633328828
	.quad	6979379479186945559
	.quad	-5082920523248573386
	.quad	-5484542860876174523
	.quad	-7755685233340769032
	.quad	-8076983103442849941
	.quad	-1341049929119499481
	.quad	5523571108200991710
	.quad	-4762188758037509908
	.quad	4418856886560793368
	.quad	-7499099821171918250
	.quad	-7532960934977096275
	.quad	-930513269649338230
	.quad	-8363388681221443717
	.quad	-4433759430461380907
	.quad	4377335499248575996
	.quad	-7236356359111015049
	.quad	7191217214140771120
	.quad	-510123730351893109
	.quad	-3251447716342407501
	.quad	-4097447799023424810
	.quad	4777539456409894646
	.quad	-6967307053960650171
	.quad	132682750386005393
	.quad	-79644842111309304
	.quad	212292400617608629
	.quad	-3753064688430957767
	.quad	-7208863708989733743
	.quad	-6691800565486676537
	.quad	-5767090967191786994
	.quad	-9042789267131251553
	.quad	-4613672773753429595
	.quad	-3400416383184271515
	.quad	-3178808521666706
	.quad	-6409681921289327535
	.quad	-7381240676301154011
	.quad	-8817094351773372351
	.quad	5163053903184807761
	.quad	-3039304518611664792
	.quad	8260886245095692417
	.quad	-6120792429631242157
	.quad	-8148686262891087359
	.quad	-8585982758446904049
	.quad	-6518949010312869887
	.quad	-2669525969289315508
	.quad	4327076842467049473
	.quad	-5824969590173362730
	.quad	-7606384970252091391
	.quad	-8349324486880600507
	.quad	4982938468024057857
	.quad	-2290872734783229842
	.quad	-3095344895387238399
	.quad	-5522047002568494197
	.quad	-2476275916309790719
	.quad	-8106986416796705681
	.quad	-1981020733047832575
	.quad	-1903131822648998119
	.quad	7898413271349198849
	.quad	-5211854272861108819
	.quad	-1059967012404461567
	.quad	-7858832233030797378
	.quad	6530724019560251393
	.quad	-1506085128623544835
	.quad	6759809616554491905
	.quad	-4894216917640746191
	.quad	1718498878501683201
	.quad	-7604722348854507276
	.quad	1374799102801346561
	.quad	-1099509313941480672
	.quad	2199678564482154497
	.quad	-4568956265895094861
	.quad	5449091666327633921
	.quad	-7344513827457986212
	.quad	4359273333062107137
	.quad	-683175679707046970
	.quad	-4093209111326359551
	.quad	-4235889358507547899
	.quad	7793479155164643329
	.quad	-7078060301547948643
	.quad	-1143914305352105983
	.quad	-256850038250986858
	.quad	5548434740920451073
	.quad	-3894828845342699810
	.quad	-6629298651489370111
	.quad	-6805211891016070171
	.quad	5764607523034234881
	.quad	-9133518327554766460
	.quad	4611686018427387905
	.quad	-3545582879861895366
	.quad	1
	.quad	-6525815118631426616
	.quad	1
	.quad	-8910000909647051616
	.quad	1
	.quad	-3187955011209551616
	.quad	1
	.quad	-6239712823709551616
	.quad	1
	.quad	-8681119073709551616
	.quad	1
	.quad	-2821744073709551616
	.quad	1
	.quad	-5946744073709551616
	.quad	1
	.quad	-8446744073709551616
	.quad	1
	.quad	-2446744073709551616
	.quad	1
	.quad	-5646744073709551616
	.quad	1
	.quad	-8206744073709551616
	.quad	1
	.quad	-2062744073709551616
	.quad	1
	.quad	-5339544073709551616
	.quad	1
	.quad	-7960984073709551616
	.quad	1
	.quad	-1669528073709551616
	.quad	1
	.quad	-5024971273709551616
	.quad	1
	.quad	-7709325833709551616
	.quad	1
	.quad	-1266874889709551616
	.quad	1
	.quad	-4702848726509551616
	.quad	1
	.quad	-7451627795949551616
	.quad	1
	.quad	-854558029293551616
	.quad	1
	.quad	-4372995238176751616
	.quad	1
	.quad	-7187745005283311616
	.quad	1
	.quad	-432345564227567616
	.quad	1
	.quad	-4035225266123964416
	.quad	1
	.quad	-6917529027641081856
	.quad	1
	.quad	-9223372036854775808
	.quad	1
	.quad	-3689348814741910324
	.quad	-3689348814741910323
	.quad	-6640827866535438582
	.quad	4427218577690292388
	.quad	-9002011107970261189
	.quad	7231123676894144234
	.quad	-3335171328526686933
	.quad	-3187597375937010519
	.quad	-6357485877563259869
	.quad	1139270913992301908
	.quad	-8775337516792518219
	.quad	-6467280898289979120
	.quad	-2972493582642298180
	.quad	4409745821703674701
	.quad	-6067343680855748868
	.quad	-161552157378970562
	.quad	-8543223759426509417
	.quad	3560107088838733873
	.quad	-2601111570856684098
	.quad	-5371875102083756772
	.quad	-5770238071427257602
	.quad	-608151266925095095
	.quad	-8305539271883716405
	.quad	-486521013540076076
	.quad	-2220816390788215277
	.quad	2910915193077788602
	.quad	-5466001927372482545
	.quad	6018080969204141205
	.quad	-8062150356639896359
	.quad	1125115960621402641
	.quad	-1831394126398103205
	.quad	5489534351736154548
	.quad	-5154464115860392887
	.quad	702278666647013315
	.quad	-7812920107430224633
	.quad	4251171748059520976
	.quad	-1432625727662628443
	.quad	3112525982153323238
	.quad	-4835449396872013078
	.quad	-8578025658503072379
	.quad	-7557708332239520786
	.quad	-3173071712060547580
	.quad	-1024286887357502287
	.quad	5991131704928854841
	.quad	-4508778324627912153
	.quad	8482254178684994196
	.quad	-7296371474444240046
	.quad	-4282243101277735613
	.quad	-606147914885053103
	.quad	4216457482181353989
	.quad	-4174267146649952806
	.quad	-7694880458480647778
	.quad	-7028762532061872568
	.quad	8601490892183123070
	.quad	-177973607073265139
	.quad	-8373707460958465027
	.quad	-3831727700400522434
	.quad	679731660717048625
	.quad	-6754730975062328271
	.quad	-6834912300910181746
	.quad	-9093133594791772940
	.quad	-9157278655470055720
	.quad	-3480967307441105734
	.quad	7484447039699372787
	.quad	-6474122660694794911
	.quad	-1391139997724322417
	.quad	-8868646943297746252
	.quad	-4802260812921368257
	.quad	-3121788665050663033
	.quad	-7683617300674189211
	.quad	-6186779746782440750
	.quad	-2457545025797441046
	.quad	-8638772612167862923
	.quad	9102010423587778133
	.quad	-2753989735242849707
	.quad	-7572876210711016926
	.quad	-5892540602936190089
	.quad	-6058300968568813541
	.quad	-8403381297090862394
	.quad	2532056854628769814
	.quad	-2377363631119648861
	.quad	7740639782147942025
	.quad	-5591239719637629412
	.quad	6192511825718353620
	.quad	-8162340590452013853
	.quad	8643358275316593219
	.quad	-1991698500497491195
	.quad	-8306719647944912789
	.quad	-5282707615139903279
	.quad	4422670725869800739
	.quad	-7915514906853832947
	.quad	-3840561048787980055
	.quad	-1596777406740401745
	.quad	-6144897678060768089
	.quad	-4966770740134231719
	.quad	6152128301777116499
	.quad	-7662765406849295699
	.quad	-2456994988062127447
	.quad	-1192378206733142148
	.quad	-7620540795641314239
	.quad	-4643251380128424042
	.quad	-2407083821771141068
	.quad	-7403949918844649557
	.quad	-1925667057416912854
	.quad	-778273425925708321
	.quad	-3081067291867060567
	.quad	-4311967555482476980
	.quad	-6154202648235558777
	.quad	-7138922859127891907
	.quad	6144684325637283948
	.quad	-354230130378896082
	.quad	-1236551523206076653
	.quad	-3972732919045027189
	.quad	-989241218564861322
	.quad	-6867535149977932074
	.quad	6587304654631931589
	.quad	-9183376934724255983
	.quad	-2108853905778275375
	.quad	-3625356651333078602
	.quad	4004531380238580046
	.quad	-6589634135808373205
	.quad	6892973918932774360
	.quad	-8961056123388608887
	.quad	1825030320404309165
	.quad	-3269643353196043250
	.quad	-8147997931578836306
	.quad	-6305063497298744923
	.quad	4549648098962661925
	.quad	-8733399612580906262
	.quad	-7428327965055601430
	.quad	-2905392935903719049
	.quad	6561419329620589328
	.quad	-6013663163464885563
	.quad	-2129562165787349184
	.quad	-8500279345513818773
	.quad	1985699082112030976
	.quad	-2532400508596379068
	.quad	-512230283362660762
	.quad	-5715269221619013577
	.quad	3279564588051781714
	.quad	-8261564192037121185
	.quad	6313000485183335695
	.quad	-2150456263033662926
	.quad	2722103146809516465
	.quad	-5409713825168840664
	.quad	2177682517447613172
	.quad	-8017119874876982855
	.quad	-5636551615525730109
	.quad	-1759345355577441598
	.quad	-5329133770099257851
	.quad	-5096825099203863602
	.quad	-573958201337495958
	.quad	-7766808894105001205
	.quad	-459166561069996766
	.quad	-1358847786342270957
	.quad	2954682317029915497
	.quad	-4776427043815727089
	.quad	6053094668365842721
	.quad	-7510490449794491995
	.quad	-2536221894791146469
	.quad	-948738275445456222
	.quad	-368606216923924028
	.quad	-4448339435098275301
	.quad	-294884973539139223
	.quad	-7248020362820530564
	.quad	-3925256793573221701
	.quad	-528786136287117932
	.quad	8476984389250486571
	.quad	-4112377723771604669
	.quad	-7975807747567252036
	.quad	-6979250993759194058
	.quad	998051431430019018
	.quad	-98755145788979524
	.quad	-2092466524453879895
	.quad	-3768352931373093942
	.quad	5704724409920716730
	.quad	-6704031159840385477
	.quad	8253128342678483707
	.quad	-9052573742614218705
	.quad	-8154892584824854327
	.quad	-3416071543957018958
	.quad	9088264752731695016
	.quad	-6422206049907525490
	.quad	-3797434642040374957
	.quad	-8827113654667930715
	.quad	8030098730593431004
	.quad	-3055335403242958174
	.quad	5469460339465668960
	.quad	-6133617137336276863
	.quad	-3003129357911285478
	.quad	-8596242524610931813
	.quad	1286845328412881941
	.quad	-2685941595151759932
	.quad	-1630396289281299218
	.quad	-5838102090863318269
	.quad	-1304317031425039374
	.quad	-8359830487432564938
	.quad	6335244004343789147
	.quad	-2307682335666372931
	.quad	6447041592208152312
	.quad	-5535494683275008668
	.quad	5157633273766521850
	.quad	-8117744561361917258
	.quad	-6941939825212513490
	.quad	-1920344853953336643
	.quad	-3728406090856200938
	.quad	-5225624697904579637
	.quad	706623942056949573
	.quad	-7869848573065574033
	.quad	4254647968387469982
	.quad	-1523711272679187483
	.quad	3118087934678041647
	.quad	-4908317832885260310
	.quad	-8573576096483297652
	.quad	-7616003081050118571
	.quad	4209185567039092848
	.quad	-1117558485454458744
	.quad	6734696907262548557
	.quad	-4583395603105477319
	.quad	-1990940103673781801
	.quad	-7356065297226292178
	.quad	5785945546544795206
	.quad	-701658031336336515
	.quad	5568164059729762006
	.quad	-4250675239810979535
	.quad	765182433041899282
	.quad	-7089889006590693952
	.quad	-3077202868308390898
	.quad	-275775966319379353
	.quad	-4923524589293425437
	.quad	-3909969587797413806
	.quad	-249470856692830026
	.quad	-6817324484979841368
	.quad	-3888925500096174344
	.quad	-9143208402725783417
	.quad	578208414664970848
	.quad	-3561087000135522498
	.quad	8303831092947774003
	.quad	-6538218414850328322
	.quad	-4424981569867511767
	.quad	-8919923546622172981
	.quad	-3539985255894009413
	.quad	-3203831230369745799
	.quad	5404070034795315908
	.quad	-6252413799037706963
	.quad	-3055441601647567920
	.quad	-8691279853972075893
	.quad	1244995533423855987
	.quad	-2838001322129590460
	.quad	-1697355961263740744
	.quad	-5959749872445582691
	.quad	-8736582398494813241
	.quad	-8457148712698376476
	.quad	7768129340171790700
	.quad	-2463391496091671392
	.quad	-6017737129434686497
	.quad	-5660062011615247437
	.quad	-4814189703547749197
	.quad	-8217398424034108273
	.quad	-3851351762838199358
	.quad	-2079791034228842266
	.quad	1216534808942701674
	.quad	-5353181642124984136
	.quad	973227847154161339
	.quad	-7971894128441897632
	.quad	778582277723329071
	.quad	-1686984161281305242
	.quad	8624429273841147160
	.quad	-5038936143766954517
	.quad	-7857851839894723564
	.quad	-7720497729755473937
	.quad	-6286281471915778851
	.quad	-1284749923383027329
	.quad	8388693718644305453
	.quad	-4717148753448332187
	.quad	-667742654568376284
	.quad	-7463067817500576073
	.quad	-534194123654701027
	.quad	-872862063775190746
	.quad	6523987031636299003
	.quad	-4387638465762062920
	.quad	5219189625309039203
	.quad	-7199459587351560659
	.quad	486002885505321039
	.quad	-451088895536766085
	.quad	4466953431550423985
	.quad	-4050219931171323192
	.quad	-115786069501571135
	.quad	-6929524759678968877
	.quad	-92628855601256908
	.quad	-19193171260619233
	.quad	-148206168962011053
	.quad	-3704703351750405709
	.quad	3570783879572301481
	.quad	-6653111496142234891
	.quad	-4522070525825979461
	.quad	-9011838011655698236
	.quad	-7307005235402693892
	.quad	-3350894374423386208
	.quad	-623161932418579258
	.quad	-6370064314280619289
	.quad	3190819268807046917
	.quad	-8785400266166405755
	.quad	-4826042214438183113
	.quad	-2988593981640518238
	.quad	-4032318728359182658
	.quad	-6080224000054324913
	.quad	463493832054564197
	.quad	-8553528014785370254
	.quad	7749492695127472004
	.quad	-2617598379430861437
	.quad	-2358206946763686086
	.quad	-5783427518286599473
	.quad	-1886565557410948869
	.quad	-8316090829371189901
	.quad	2180096368813151228
	.quad	-2237698882768172872
	.quad	3488154190101041965
	.quad	-5479507920956448621
	.quad	6479872166822743895
	.quad	-8072955151507069220
	.quad	5183897733458195116
	.quad	-1848681798185579782
	.quad	915538744049291539
	.quad	-5168294253290374149
	.quad	4421779809981343555
	.quad	-7823984217374209643
	.quad	-3841273781498745803
	.quad	-1450328303573004458
	.quad	1232659579085827362
	.quad	-4849611457600313890
	.quad	8364825292752482536
	.quad	-7569037980822161435
	.quad	3002511419460075706
	.quad	-1042414325089727327
	.quad	-2574679358347699518
	.quad	-4523280274813692185
	.quad	-2059743486678159614
	.quad	-7307973034592864071
	.quad	-9026492418826348337
	.quad	-624710411122851544
	.quad	-3374341425896426371
	.quad	-4189117143640191558
	.quad	4679224488766679550
	.quad	-7040642529654063570
	.quad	-7324666853212387329
	.quad	-196981603220770742
	.quad	-8030118150397909404
	.quad	-3846934097318526917
	.quad	-6424094520318327523
	.quad	-6766896092596731857
	.quad	-5139275616254662019
	.quad	-9102865688819295809
	.quad	-4111420493003729615
	.quad	-3496538657885142324
	.quad	8179122470161673909
	.quad	-6486579741050024183
	.quad	-835399653354481519
	.quad	-8878612607581929669
	.quad	3021029092058325108
	.quad	-3137733727905356501
	.quad	8522995362035230496
	.quad	-6199535797066195524
	.quad	6818396289628184397
	.quad	-8648977452394866743
	.quad	-1923980597781273129
	.quad	-2770317479606055818
	.quad	4300328673033783640
	.quad	-5905602798426754978
	.quad	-7627783505798704058
	.quad	-8413831053483314306
	.quad	-2412877989897052923
	.quad	-2394083241347571919
	.quad	7207441660390446293
	.quad	-5604615407819967859
	.quad	-1612744301171463612
	.quad	-8173041140997884610
	.quad	6088502188546649757
	.quad	-2008819381370884406
	.quad	2362905872190818964
	.quad	-5296404319838617848
	.quad	1890324697752655171
	.quad	-7926472270612804602
	.quad	8890957387685944784
	.quad	-1614309188754756393
	.quad	3157485376071780684
	.quad	-4980796165745715438
	.quad	-8542058143368306422
	.quad	-7673985747338482674
	.quad	-3144297699952734815
	.quad	-1210330751515841308
	.quad	-8720225134666286027
	.quad	-4657613415954583370
	.quad	-3286831292991118498
	.quad	-7415439547505577019
	.quad	8438581409832836171
	.quad	-796656831783192261
	.quad	-1255665003235103419
	.quad	-4326674280168464132
	.quad	-4693880817329993059
	.quad	-7150688238876681629
	.quad	-3755104653863994447
	.quad	-373054737976959636
	.quad	8749227812785250178
	.quad	-3987792605123478032
	.quad	6999382250228200142
	.quad	-6879582898840692749
	.quad	-9157889458785081179
	.quad	-9193015133814464522
	.quad	52386062455755703
	.quad	-3640777769877412266
	.quad	7462515329413029772
	.quad	-6601971030643840136
	.quad	5970012263530423817
	.quad	-8970925639256982432
	.quad	4776009810824339054
	.quad	-3285434578585440922
	.quad	-3426430746906788484
	.quad	-6317696477610263061
	.quad	-2741144597525430787
	.quad	-8743505996830120772
	.quad	-5882264492762254952
	.quad	-2921563150702462265
	.quad	9035120885289943692
	.quad	-6026599335303880135
	.quad	3538747893490044630
	.quad	-8510628282985014432
	.quad	-858350499949874619
	.quad	-2548958808550292121
	.quad	-1373360799919799391
	.quad	-5728515861582144020
	.quad	-4788037454677749836
	.quad	-8272161504007625539
	.quad	7237616480483531101
	.quad	-2167411962186469893
	.quad	-3177208890193991531
	.quad	-5423278384491086237
	.quad	1147581702586717098
	.quad	-8027971522334779313
	.quad	4607414176811284002
	.quad	-1776707991509915931
	.quad	3682513868156144080
	.quad	-5110715207949843068
	.quad	2946011094524915264
	.quad	-7777920981101784778
	.quad	-8711237568605798758
	.quad	-1376627125537124675
	.quad	-6559282480285457367
	.quad	-4790650515171610063
	.quad	5820620459997365076
	.quad	-7521869226879198374
	.quad	-6411550076227838909
	.quad	-966944318780986428
	.quad	4498915137003099038
	.quad	-4462904269766699466
	.quad	-7468914334623251739
	.quad	-7259672230555269896
	.quad	8782263791269039902
	.quad	-547429124662700864
	.quad	-4395122007679087773
	.quad	-4127292114472071014
	.quad	3862600023340550428
	.quad	-6991182506319567135
	.quad	-4288617610811380304
	.quad	-117845565885576446
	.quad	-3172439362556298163
	.quad	-3783625267450371480
	.quad	-6227300304786948854
	.quad	-6716249028702207507
	.quad	6086206200396171887
	.quad	-9062348037703676329
	.quad	8558313775058847833
	.quad	-3431710416100151157
	.quad	-1064093218873484761
	.quad	-6434717147622031249
	.quad	-851274575098787809
	.quad	-8837122532839535322
	.quad	6697677969404790400
	.quad	-3071349608317525546
	.quad	-351761693178066331
	.quad	-6146428501395930760
	.quad	-3970758169284363388
	.quad	-8606491615858654931
	.quad	7891439908798240260
	.quad	-2702340141148116920
	.quad	-5820440219632367201
	.quad	-5851220927660403859
	.quad	6411694268519837209
	.quad	-8370325556870233411
	.quad	-2249342214667950879
	.quad	-2324474446766642487
	.quad	7469098900757009563
	.quad	-5548928372155224313
	.quad	-8782116138362033642
	.quad	-8128491512466089774
	.quad	-3336344095947716591
	.quad	-1937539975720012668
	.quad	-9027499368258256869
	.quad	-5239380795317920458
	.quad	-3532650679864695172
	.quad	-7880853450996246689
	.quad	863228270850154186
	.quad	-1541319077368263733
	.quad	5070514048102157021
	.quad	-4922404076636521310
	.quad	-7011635205744005353
	.quad	-7627272076051127371
	.quad	5458738279630526687
	.quad	-1135588877456072824
	.quad	8733981247408842699
	.quad	-4597819916706768583
	.quad	-391512631556746487
	.quad	-7367604748107325189
	.quad	3376138709496513134
	.quad	-720121152745989333
	.quad	9091170749936331337
	.quad	-4265445736938701790
	.quad	-3795109844276665900
	.quad	-7101705404292871755
	.quad	8031958568804398250
	.quad	-294682202642863838
	.quad	5472436080603216553
	.quad	-3925094576856201394
	.quad	-6690097579743157727
	.quad	-6829424476226871438
	.quad	2026619565689294465
	.quad	-9152888395723407474
	.quad	8999993282035256218
	.quad	-3576574988931720989
	.quad	-357406007711231344
	.quad	-6550608805887287114
	.quad	7092772823314835571
	.quad	-8929835859451740015
	.quad	-1704479370831952189
	.quad	-3219690930897053053
	.quad	962181821410786820
	.quad	-6265101559459552766
	.quad	8148443086612450103
	.quad	-8701430062309552536
	.quad	6518754469289960082
	.quad	-2854241655469553088
	.quad	-8016736922845615485
	.quad	-5972742139117552794
	.quad	-2724040723534582064
	.quad	-8467542526035952558
	.quad	5199465050656154995
	.quad	-2480021597431793123
	.quad	4629795266307937668
	.quad	-5673366092687344822
	.quad	-7364210231179380835
	.quad	-8228041688891786181
	.quad	-5891368184943504668
	.quad	-2096820258001126919
	.quad	1641857348316123501
	.quad	-5366805021142811859
	.quad	-6065211750830921845
	.quad	-7982792831656159810
	.quad	2526528228819083170
	.quad	-1704422086424124727
	.quad	-3336252463373287575
	.quad	-5052886483881210105
	.quad	-2669001970698630060
	.quad	-7731658001846878407
	.quad	8932844867666826922
	.quad	-1302606358729274481
	.quad	3224505344041192105
	.quad	-4731433901725329908
	.quad	2579604275232953684
	.quad	-7474495936122174250
	.quad	-9004363024039368022
	.quad	-891147053569747830
	.quad	7729112049988473104
	.quad	-4402266457597708587
	.quad	2493940825248868160
	.quad	-7211161980820077193
	.quad	5684501474941004851
	.quad	-469812725086392539
	.quad	5405853545163697438
	.quad	-4065198994811024355
	.quad	-3054014793352862696
	.quad	-6941508010590729807
	.quad	8624834609543440813
	.quad	-38366372719436721
	.quad	2731688931043774331
	.align 32
	.type	_ZL17DOUBLE_POW5_SPLIT, @object
	.size	_ZL17DOUBLE_POW5_SPLIT, 5216
_ZL17DOUBLE_POW5_SPLIT:
	.quad	0
	.quad	1152921504606846976
	.quad	0
	.quad	1441151880758558720
	.quad	0
	.quad	1801439850948198400
	.quad	0
	.quad	2251799813685248000
	.quad	0
	.quad	1407374883553280000
	.quad	0
	.quad	1759218604441600000
	.quad	0
	.quad	2199023255552000000
	.quad	0
	.quad	1374389534720000000
	.quad	0
	.quad	1717986918400000000
	.quad	0
	.quad	2147483648000000000
	.quad	0
	.quad	1342177280000000000
	.quad	0
	.quad	1677721600000000000
	.quad	0
	.quad	2097152000000000000
	.quad	0
	.quad	1310720000000000000
	.quad	0
	.quad	1638400000000000000
	.quad	0
	.quad	2048000000000000000
	.quad	0
	.quad	1280000000000000000
	.quad	0
	.quad	1600000000000000000
	.quad	0
	.quad	2000000000000000000
	.quad	0
	.quad	1250000000000000000
	.quad	0
	.quad	1562500000000000000
	.quad	0
	.quad	1953125000000000000
	.quad	0
	.quad	1220703125000000000
	.quad	0
	.quad	1525878906250000000
	.quad	0
	.quad	1907348632812500000
	.quad	0
	.quad	1192092895507812500
	.quad	0
	.quad	1490116119384765625
	.quad	4611686018427387904
	.quad	1862645149230957031
	.quad	-8646911284551352320
	.quad	1164153218269348144
	.quad	-6196953087261802496
	.quad	1455191522836685180
	.quad	-3134505340649865216
	.quad	1818989403545856475
	.quad	-3918131675812331520
	.quad	2273736754432320594
	.quad	-4754675306596401152
	.quad	1421085471520200371
	.quad	-5943344133245501440
	.quad	1776356839400250464
	.quad	-2817494148129488896
	.quad	2220446049250313080
	.quad	-8678462870222012416
	.quad	1387778780781445675
	.quad	7598665485932036096
	.quad	1734723475976807094
	.quad	274959820560269312
	.quad	2168404344971008868
	.quad	-9051522149004607488
	.quad	1355252715606880542
	.quad	2520655369026404352
	.quad	1694065894508600678
	.quad	-6072552825571770368
	.quad	2117582368135750847
	.quad	-3795345515982356480
	.quad	1323488980084844279
	.quad	-4744181894977945600
	.quad	1654361225106055349
	.quad	3293144668132343808
	.quad	2067951531382569187
	.quad	-247627591630979072
	.quad	1292469707114105741
	.quad	8913837547316051968
	.quad	1615587133892632177
	.quad	-2692761121137098752
	.quad	2019483917365790221
	.quad	-6294661719138074624
	.quad	1262177448353618888
	.quad	-3256641130495205376
	.quad	1577721810442023610
	.quad	-8682487431546394624
	.quad	1972152263052529513
	.quad	-814868626289108736
	.quad	1232595164407830945
	.quad	8204786253993389888
	.quad	1540743955509788682
	.quad	1032610780636961552
	.quad	1925929944387235853
	.quad	2951224747111794922
	.quad	1203706215242022408
	.quad	3689030933889743652
	.quad	1504632769052528010
	.quad	-4612083369492596243
	.quad	1880790961315660012
	.quad	-576709096719178700
	.quad	1175494350822287507
	.quad	-720886370898973375
	.quad	1469367938527859384
	.quad	3710578054803671186
	.quad	1836709923159824231
	.quad	26536550077201078
	.quad	2295887403949780289
	.quad	-6900943683842831182
	.quad	1434929627468612680
	.quad	-4014493586376151074
	.quad	1793662034335765850
	.quad	8816941072311974870
	.quad	2242077542919707313
	.quad	-1406940857446097563
	.quad	1401298464324817070
	.quad	-6370362090235009857
	.quad	1751623080406021338
	.quad	5872105442488401391
	.quad	2189528850507526673
	.quad	-3247463126085830987
	.quad	1368455531567204170
	.quad	-8671014926034676638
	.quad	1710569414459005213
	.quad	-1615396620688569989
	.quad	2138211768073756516
	.quad	1296220121283337709
	.quad	1336382355046097823
	.quad	-2991410866823215768
	.quad	1670477943807622278
	.quad	-8350949601956407614
	.quad	2088097429759527848
	.quad	6309871544845715001
	.quad	1305060893599704905
	.quad	-5947718624225019960
	.quad	1631326116999631131
	.quad	-7434648280281274950
	.quad	2039157646249538914
	.quad	-6952498184389490796
	.quad	1274473528905961821
	.quad	532749306367912313
	.quad	1593091911132452277
	.quad	5277622651387278295
	.quad	1991364888915565346
	.quad	7910200175544436838
	.quad	1244603055572228341
	.quad	-3947307835851617664
	.quad	1555753819465285426
	.quad	8900923260467641632
	.quad	1944692274331606783
	.quad	-5966138008276193740
	.quad	1215432671457254239
	.quad	-7457672510345242175
	.quad	1519290839321567799
	.quad	9124653435777998898
	.quad	1899113549151959749
	.quad	8008751406574943263
	.quad	1186945968219974843
	.quad	5399253239791291175
	.quad	1483682460274968554
	.quad	-2474305487115661840
	.quad	1854603075343710692
	.quad	759402079766405302
	.quad	1159126922089819183
	.quad	-3662433418719381276
	.quad	1448908652612273978
	.quad	-9189727791826614499
	.quad	1811135815765342473
	.quad	-2263787702928492316
	.quad	2263919769706678091
	.quad	7808504722524468110
	.quad	1414949856066673807
	.quad	5148944884728197234
	.quad	1768687320083342259
	.quad	1824495087482858639
	.quad	2210859150104177824
	.quad	1140309429676786649
	.quad	1381786968815111140
	.quad	1425386787095983311
	.quad	1727233711018888925
	.quad	6393419502297367043
	.quad	2159042138773611156
	.quad	-5227484847918921406
	.quad	1349401336733506972
	.quad	-1922670041471263854
	.quad	1686751670916883715
	.quad	-2403337551839079817
	.quad	2108439588646104644
	.quad	803757039314269066
	.quad	1317774742903815403
	.quad	-3606989719284551571
	.quad	1647218428629769253
	.quad	4714634887749086344
	.quad	2059023035787211567
	.quad	-8582568241225290795
	.quad	1286889397367007229
	.quad	-1504838264676837686
	.quad	1608611746708759036
	.quad	2730638187581340797
	.quad	2010764683385948796
	.quad	-7516723169616437810
	.quad	1256727927116217997
	.quad	-172531925165771454
	.quad	1570909908895272496
	.quad	4396021111970173586
	.quad	1963637386119090621
	.quad	5053356204195052443
	.quad	1227273366324431638
	.quad	-2906676781610960254
	.quad	1534091707905539547
	.quad	-3633345977013700317
	.quad	1917614634881924434
	.quad	-4576684244847256650
	.quad	1198509146801202771
	.quad	-5720855306059070813
	.quad	1498136433501503464
	.quad	-2539383114146450612
	.quad	1872670541876879330
	.quad	-3892957455555225585
	.quad	1170419088673049581
	.quad	4357175217410743827
	.quad	1463023860841311977
	.quad	-8388589033518733928
	.quad	1828779826051639971
	.quad	7961007781811134206
	.quad	2285974782564549964
	.quad	-4247742173222816929
	.quad	1428734239102843727
	.quad	-5309677716528521161
	.quad	1785917798878554659
	.quad	-6637097145660651452
	.quad	2232397248598193324
	.quad	-1842342706824213205
	.quad	1395248280373870827
	.quad	-2302928383530266507
	.quad	1744060350467338534
	.quad	-7490346497840221037
	.quad	2180075438084173168
	.quad	6847748484918331612
	.quad	1362547148802608230
	.quad	-663686430706861293
	.quad	1703183936003260287
	.quad	-829608038383576617
	.quad	2128979920004075359
	.quad	-518505023989735386
	.quad	1330612450002547099
	.quad	-648131279987169232
	.quad	1663265562503183874
	.quad	-5421850118411349444
	.quad	2079081953128979843
	.quad	5834715712847682405
	.quad	1299426220705612402
	.quad	-1929977395795172801
	.quad	1624282775882015502
	.quad	-7024157763171353905
	.quad	2030353469852519378
	.quad	-6695941611195790143
	.quad	1268970918657824611
	.quad	-8369927013994737679
	.quad	1586213648322280764
	.quad	-5850722749066034194
	.quad	1982767060402850955
	.quad	5566670318688504437
	.quad	1239229412751781847
	.quad	2346651879933242642
	.quad	1549036765939727309
	.quad	7545000868343941206
	.quad	1936295957424659136
	.quad	4715625542714963254
	.quad	1210184973390411960
	.quad	5894531928393704067
	.quad	1512731216738014950
	.quad	-1855207126362645724
	.quad	1890914020922518687
	.quad	-1159504453976653577
	.quad	1181821263076574179
	.quad	-1449380567470816972
	.quad	1477276578845717724
	.quad	2799960309088866689
	.quad	1846595723557147156
	.quad	-7473396843674234127
	.quad	1154122327223216972
	.quad	-4730060036165404755
	.quad	1442652909029021215
	.quad	-5912575045206755944
	.quad	1803316136286276519
	.quad	-7390718806508444929
	.quad	2254145170357845649
	.quad	-7513235640390177
	.quad	1408840731473653530
	.quad	-4621077562977875625
	.quad	1761050914342066913
	.quad	3447025083132431277
	.quad	2201313642927583642
	.quad	6766076695385157452
	.quad	1375821026829739776
	.quad	8457595869231446815
	.quad	1719776283537174720
	.quad	-7874749237170243097
	.quad	2149720354421468400
	.quad	6607496772837067824
	.quad	1343575221513417750
	.quad	-964001070808441028
	.quad	1679469026891772187
	.quad	-1205001338510551285
	.quad	2099336283614715234
	.quad	-3058968845782788505
	.quad	1312085177259197021
	.quad	5399660979626290177
	.quad	1640106471573996277
	.quad	-7085481830749300991
	.quad	2050133089467495346
	.quad	-6734269153432007072
	.quad	1281333180917184591
	.quad	-8417836441790008839
	.quad	1601666476146480739
	.quad	7924448521472040567
	.quad	2002083095183100924
	.quad	-4270591710934750454
	.quad	1251301934489438077
	.quad	3885132398186337741
	.quad	1564127418111797597
	.quad	-8978642557549241536
	.quad	1955159272639746996
	.quad	-3305808589254582008
	.quad	1221974545399841872
	.quad	479425281859160394
	.quad	1527468181749802341
	.quad	5210967620751338397
	.quad	1909335227187252926
	.quad	-1354831255457801406
	.quad	1193334516992033078
	.quad	-6305225087749639662
	.quad	1491668146240041348
	.quad	-3269845341259661673
	.quad	1864585182800051685
	.quad	-6655339356714676450
	.quad	1165365739250032303
	.quad	-8319174195893345562
	.quad	1456707174062540379
	.quad	8047776328842869663
	.quad	1820883967578175474
	.quad	836348374198811271
	.quad	2276104959472719343
	.quad	7440246761515338900
	.quad	1422565599670449589
	.quad	-4534749603387990086
	.quad	1778206999588061986
	.quad	8166621051047176104
	.quad	2222758749485077483
	.quad	2798295147690791113
	.quad	1389224218428173427
	.quad	-1113817083813899013
	.quad	1736530273035216783
	.quad	-1392271354767373766
	.quad	2170662841294020979
	.quad	8353202440125167204
	.quad	1356664275808763112
	.quad	-8005241023553092611
	.quad	1695830344760953890
	.quad	3828506775840797949
	.quad	2119787930951192363
	.quad	86973725686804766
	.quad	1324867456844495227
	.quad	-4502968861318881947
	.quad	1656084321055619033
	.quad	3594660960206173375
	.quad	2070105401319523792
	.quad	2246663100128858359
	.quad	1293815875824702370
	.quad	-6415043161693702859
	.quad	1617269844780877962
	.quad	5816254103165035138
	.quad	2021587305976097453
	.quad	5941001823691840913
	.quad	1263492066235060908
	.quad	7426252279614801142
	.quad	1579365082793826135
	.quad	4671129331091113523
	.quad	1974206353492282669
	.quad	5225298841145639904
	.quad	1233878970932676668
	.quad	6531623551432049880
	.quad	1542348713665845835
	.quad	3552843420862674446
	.quad	1927935892082307294
	.quad	-2391158880388216375
	.quad	1204959932551442058
	.quad	-7600634618912658373
	.quad	1506199915689302573
	.quad	-277421236786047158
	.quad	1882749894611628216
	.quad	-7090917300632361330
	.quad	1176718684132267635
	.quad	-8863646625790451662
	.quad	1470898355165334544
	.quad	-6467872263810676674
	.quad	1838622943956668180
	.quad	-3473154311335957938
	.quad	2298278679945835225
	.quad	2440964573842414192
	.quad	1436424174966147016
	.quad	3051205717303017741
	.quad	1795530218707683770
	.quad	-5409364890226003632
	.quad	2244412773384604712
	.quad	8148361989677217490
	.quad	1402757983365377945
	.quad	-3649605568185641850
	.quad	1753447479206722431
	.quad	-4562006960232052312
	.quad	2191809349008403039
	.quad	-2851254350145032695
	.quad	1369880843130251899
	.quad	-3564067937681290869
	.quad	1712351053912814874
	.quad	-9066770940529001490
	.quad	2140438817391018593
	.quad	-1055045819403238027
	.quad	1337774260869386620
	.quad	3292878744173340370
	.quad	1672217826086733276
	.quad	4116098430216675462
	.quad	2090272282608416595
	.quad	266718509671728212
	.quad	1306420176630260372
	.quad	333398137089660265
	.quad	1633025220787825465
	.quad	5028433689789463235
	.quad	2041281525984781831
	.quad	-8386443989950055238
	.quad	1275800953740488644
	.quad	-5871368969010181144
	.quad	1594751192175610805
	.quad	1884160825592049379
	.quad	1993438990219513507
	.quad	-1128242493218663091
	.quad	1245899368887195941
	.quad	7813068920331446945
	.quad	1557374211108994927
	.quad	5154650131986920777
	.quad	1946717763886243659
	.quad	915813323278131534
	.quad	1216698602428902287
	.quad	-3466919364329723487
	.quad	1520873253036127858
	.quad	-8945335223839542262
	.quad	1901091566295159823
	.quad	-5590834514899713914
	.quad	1188182228934474889
	.quad	2234828893230133415
	.quad	1485227786168093612
	.quad	2793536116537666769
	.quad	1856534732710117015
	.quad	8663489100477123587
	.quad	1160334207943823134
	.quad	1605989338741628675
	.quad	1450417759929778918
	.quad	-7215885363427739964
	.quad	1813022199912223647
	.quad	-9019856704284674954
	.quad	2266277749890279559
	.quad	-5637410440177921847
	.quad	1416423593681424724
	.quad	-2435077031795014404
	.quad	1770529492101780905
	.quad	6179525747111007803
	.quad	2213161865127226132
	.quad	-5361168444910395931
	.quad	1383226165704516332
	.quad	-2089774537710607010
	.quad	1729032707130645415
	.quad	-2612218172138258762
	.quad	2161290883913306769
	.quad	2979049660840976177
	.quad	1350806802445816731
	.quad	-887873942376167682
	.quad	1688508503057270913
	.quad	8113529608884566205
	.quad	2110635628821588642
	.quad	-8764102049729309834
	.quad	1319147268013492901
	.quad	-1731755525306861484
	.quad	1648934085016866126
	.quad	-6776380425060964759
	.quad	2061167606271082658
	.quad	-6541080774876796927
	.quad	1288229753919426661
	.quad	1047021068258779650
	.quad	1610287192399283327
	.quad	-3302909683103913342
	.quad	2012858990499104158
	.quad	4853210475701136017
	.quad	1258036869061940099
	.quad	1454827076199032118
	.quad	1572546086327425124
	.quad	1818533845248790147
	.quad	1965682607909281405
	.quad	3442426662494187794
	.quad	1228551629943300878
	.quad	-4920338708737041066
	.quad	1535689537429126097
	.quad	3072948650933474476
	.quad	1919611921786407622
	.quad	-2691093111593966357
	.quad	1199757451116504763
	.quad	-3363866389492457946
	.quad	1499696813895630954
	.quad	-8816519005292960336
	.quad	1874621017369538693
	.quad	8324733676974063502
	.quad	1171638135855961683
	.quad	5794231077790191473
	.quad	1464547669819952104
	.quad	7242788847237739342
	.quad	1830684587274940130
	.quad	-169885977807601630
	.quad	2288355734093675162
	.quad	-2412021745343444971
	.quad	1430222333808546976
	.quad	1596658836748081690
	.quad	1787777917260683721
	.quad	6607509564362490017
	.quad	2234722396575854651
	.quad	1823850468512862308
	.quad	1396701497859909157
	.quad	6891499104068465790
	.quad	1745876872324886446
	.quad	-608998156769193571
	.quad	2182346090406108057
	.quad	4231062170446641922
	.quad	1363966306503817536
	.quad	5288827713058302403
	.quad	1704957883129771920
	.quad	6611034641322878003
	.quad	2131197353912214900
	.quad	-5091475386027977056
	.quad	1331998346195134312
	.quad	-1752658214107583416
	.quad	1664997932743917890
	.quad	-6802508786061867174
	.quad	2081247415929897363
	.quad	4971804045566108824
	.quad	1300779634956185852
	.quad	6214755056957636030
	.quad	1625974543695232315
	.quad	3156757802769657134
	.quad	2032468179619040394
	.quad	6584659645158423613
	.quad	1270292612261900246
	.quad	-992547480406746292
	.quad	1587865765327375307
	.quad	-1240684350508432865
	.quad	1984832206659219134
	.quad	6142101308573311315
	.quad	1240520129162011959
	.quad	3065940617289251240
	.quad	1550650161452514949
	.quad	8444111790038951954
	.quad	1938312701815643686
	.quad	665883850346957067
	.quad	1211445438634777304
	.quad	832354812933696334
	.quad	1514306798293471630
	.quad	-8182928520687655390
	.quad	1892883497866839537
	.quad	-502644307002396715
	.quad	1183052186166774710
	.quad	-5239991402180383798
	.quad	1478815232708468388
	.quad	-1938303234298091843
	.quad	1848519040885585485
	.quad	-5823125539863695306
	.quad	1155324400553490928
	.quad	-2667220906402231229
	.quad	1444155500691863660
	.quad	1277659885424598868
	.quad	1805194375864829576
	.quad	1597074856780748586
	.quad	2256492969831036970
	.quad	5609857803915355770
	.quad	1410308106144398106
	.quad	-2211049781960581095
	.quad	1762885132680497632
	.quad	1847873790976661535
	.quad	2203606415850622041
	.quad	-5762607908280668397
	.quad	1377254009906638775
	.quad	-7203259885350835496
	.quad	1721567512383298469
	.quad	219297180166231438
	.quad	2151959390479123087
	.quad	7054589765244976505
	.quad	1344974619049451929
	.quad	-5016820848725943081
	.quad	1681218273811814911
	.quad	-6271026060907428851
	.quad	2101522842264768639
	.quad	-3919391288067143032
	.quad	1313451776415480399
	.quad	-4899239110083928790
	.quad	1641814720519350499
	.quad	-6124048887604910988
	.quad	2052268400649188124
	.quad	-1521687545539375415
	.quad	1282667750405742577
	.quad	7321262604930556539
	.quad	1603334688007178222
	.quad	-71793780691580134
	.quad	2004168360008972777
	.quad	4566814905495150320
	.quad	1252605225005607986
	.quad	-3514853404985837908
	.quad	1565756531257009982
	.quad	-9005252774659685289
	.quad	1957195664071262478
	.quad	1289246043478778550
	.quad	1223247290044539049
	.quad	6223243572775861092
	.quad	1529059112555673811
	.quad	3167368447542438461
	.quad	1911323890694592264
	.quad	1979605279714024038
	.quad	1194577431684120165
	.quad	7086192618069917952
	.quad	1493221789605150206
	.quad	-365631264267378368
	.quad	1866527237006437757
	.quad	-4840205558594499384
	.quad	1166579523129023598
	.quad	7784801107039039482
	.quad	1458224403911279498
	.quad	507629346944023544
	.quad	1822780504889099373
	.quad	5246222702107417334
	.quad	2278475631111374216
	.quad	3278889188817135834
	.quad	1424047269444608885
	.quad	8710297504448807696
	.quad	1780059086805761106
	.align 32
	.type	_ZL21DOUBLE_POW5_INV_SPLIT, @object
	.size	_ZL21DOUBLE_POW5_INV_SPLIT, 5472
_ZL21DOUBLE_POW5_INV_SPLIT:
	.quad	1
	.quad	2305843009213693952
	.quad	-7378697629483820646
	.quad	1844674407370955161
	.quad	5165088340638674453
	.quad	1475739525896764129
	.quad	7821419487252849886
	.quad	1180591620717411303
	.quad	8824922364862649494
	.quad	1888946593147858085
	.quad	7059937891890119595
	.quad	1511157274518286468
	.quad	-5420096130713635294
	.quad	1208925819614629174
	.quad	-8672153809141816470
	.quad	1934281311383406679
	.quad	-6937723047313453176
	.quad	1547425049106725343
	.quad	-1860829623108852217
	.quad	1237940039285380274
	.quad	-2977327396974163548
	.quad	1980704062856608439
	.quad	-2381861917579330838
	.quad	1584563250285286751
	.quad	9162556910162266299
	.quad	1267650600228229401
	.quad	7281393426775805432
	.quad	2028240960365167042
	.quad	-1553582888063176301
	.quad	1622592768292133633
	.quad	2446482504291369283
	.quad	1298074214633706907
	.quad	7603720821608101175
	.quad	2076918743413931051
	.quad	2393627842544570617
	.quad	1661534994731144841
	.quad	-1774446540706253830
	.quad	1329227995784915872
	.quad	-6528463279871916451
	.quad	2126764793255865396
	.quad	5845275820328197809
	.quad	1701411834604692317
	.quad	-2702476973221262399
	.quad	1361129467683753853
	.quad	3054734472329800808
	.quad	2177807148294006166
	.quad	-1245561236878069677
	.quad	1742245718635204932
	.quad	6382248639981364905
	.quad	1393796574908163946
	.quad	2832900194486363201
	.quad	2230074519853062314
	.quad	5955668970331000884
	.quad	1784059615882449851
	.quad	1075186361522890384
	.quad	1427247692705959881
	.quad	-5658399451047196032
	.quad	2283596308329535809
	.quad	-4526719560837756825
	.quad	1826877046663628647
	.quad	3757321980813615186
	.quad	1461501637330902918
	.quad	-8062188859574838821
	.quad	1169201309864722334
	.quad	5547241898389809503
	.quad	1870722095783555735
	.quad	4437793518711847602
	.quad	1496577676626844588
	.quad	-7517811629256252888
	.quad	1197262141301475670
	.quad	-960452162584273651
	.quad	1915619426082361072
	.quad	6610335899416401726
	.quad	1532495540865888858
	.quad	-5779777724692609589
	.quad	1225996432692711086
	.quad	-5558295544766265019
	.quad	1961594292308337738
	.quad	-757287621071101692
	.quad	1569275433846670190
	.quad	-4295178911598791677
	.quad	1255420347077336152
	.quad	7885109000409574610
	.quad	2008672555323737844
	.quad	-8449308058639981605
	.quad	1606938044258990275
	.quad	7997948812055656009
	.quad	1285550435407192220
	.quad	-5650025974420502002
	.quad	2056880696651507552
	.quad	2858676849947419045
	.quad	1645504557321206042
	.quad	-5091756149525885410
	.quad	1316403645856964833
	.quad	-768112209757596011
	.quad	2106245833371143733
	.quad	3074859046935833515
	.quad	1684996666696914987
	.quad	-4918810391935153834
	.quad	1347997333357531989
	.quad	-7870096627096246135
	.quad	2156795733372051183
	.quad	-2606728486935086585
	.quad	1725436586697640946
	.quad	8982663654677661702
	.quad	1380349269358112757
	.quad	-385133411483382570
	.quad	2208558830972980411
	.quad	-7686804358670526703
	.quad	1766847064778384329
	.quad	-6149443486936421362
	.quad	1413477651822707463
	.quad	-2460411949614453533
	.quad	2261564242916331941
	.quad	9099716884534168143
	.quad	1809251394333065553
	.quad	-3788272936598396455
	.quad	1447401115466452442
	.quad	4348079280205103483
	.quad	1157920892373161954
	.quad	-4111119595897565398
	.quad	1852673427797059126
	.quad	7779150767507678651
	.quad	1482138742237647301
	.quad	2533971799264232598
	.quad	1185710993790117841
	.quad	-3324342750661048490
	.quad	1897137590064188545
	.quad	-6348823015270749115
	.quad	1517710072051350836
	.quad	5988988032009131678
	.quad	1214168057641080669
	.quad	-1485665593011120286
	.quad	1942668892225729070
	.quad	-4877881289150806552
	.quad	1554135113780583256
	.quad	7165741412905085728
	.quad	1243308091024466605
	.quad	-6981557813061414451
	.quad	1989292945639146568
	.quad	-1895897435707221237
	.quad	1591434356511317254
	.quad	-1516717948565776990
	.quad	1273147485209053803
	.quad	4951948911778577463
	.quad	2037035976334486086
	.quad	272210314680951647
	.quad	1629628781067588869
	.quad	3907117066486671641
	.quad	1303703024854071095
	.quad	6251387306378674625
	.quad	2085924839766513752
	.quad	-2377587784380880946
	.quad	1668739871813211001
	.quad	9165976216721026213
	.quad	1334991897450568801
	.quad	7286864317269821294
	.quad	2135987035920910082
	.quad	-1549206175667963611
	.quad	1708789628736728065
	.quad	-4928713755276281212
	.quad	1367031702989382452
	.quad	6871453250525591353
	.quad	2187250724783011924
	.quad	9186511415162383406
	.quad	1749800579826409539
	.quad	-7408186126837734568
	.quad	1399840463861127631
	.quad	-8163748988198464986
	.quad	2239744742177804210
	.quad	8226396068408869304
	.quad	1791795793742243368
	.quad	-4486929589498635526
	.quad	1433436634993794694
	.quad	-7179087343197816842
	.quad	2293498615990071511
	.quad	5324776569667477496
	.quad	1834798892792057209
	.quad	7949170070475892320
	.quad	1467839114233645767
	.quad	-1019361573103106790
	.quad	1174271291386916613
	.quad	5747719112518849781
	.quad	1878834066219066582
	.quad	-2780522339468740821
	.quad	1503067252975253265
	.quad	-5913766686316902980
	.quad	1202453802380202612
	.quad	5295368560860596524
	.quad	1923926083808324180
	.quad	4236294848688477220
	.quad	1539140867046659344
	.quad	7078384693692692099
	.quad	1231312693637327475
	.quad	-7121328563801244258
	.quad	1970100309819723960
	.quad	9060332407926645887
	.quad	1576080247855779168
	.quad	-3819780517884414260
	.quad	1260864198284623334
	.quad	-6111648828615062817
	.quad	2017382717255397335
	.quad	-8578667877633960576
	.quad	1613906173804317868
	.quad	-3173585487365258138
	.quad	1291124939043454294
	.quad	-5077736779784413021
	.quad	2065799902469526871
	.quad	7005857020398200553
	.quad	1652639921975621497
	.quad	-1774012013165260204
	.quad	1322111937580497197
	.quad	-6527768035806326650
	.quad	2115379100128795516
	.quad	5845832015580669650
	.quad	1692303280103036413
	.quad	-6391380831761195250
	.quad	1353842624082429130
	.quad	841837113407818570
	.quad	2166148198531886609
	.quad	4362818505468165179
	.quad	1732918558825509287
	.quad	-3888442825109288503
	.quad	1386334847060407429
	.quad	-6221508520174861605
	.quad	2218135755296651887
	.quad	2401490813343931363
	.quad	1774508604237321510
	.quad	1921192650675145090
	.quad	1419606883389857208
	.quad	-615440573661678179
	.quad	2271371013423771532
	.quad	6886345170554478103
	.quad	1817096810739017226
	.quad	1819727321701672159
	.quad	1453677448591213781
	.quad	-2233566957380572596
	.quad	1162941958872971024
	.quad	-3573707131808916153
	.quad	1860707134196753639
	.quad	-2858965705447132922
	.quad	1488565707357402911
	.quad	8780873879868024632
	.quad	1190852565885922329
	.quad	2981351763563108441
	.quad	1905364105417475727
	.quad	-4993616218633333894
	.quad	1524291284333980581
	.quad	7073153469319063855
	.quad	1219433027467184465
	.quad	-7129698522799049449
	.quad	1951092843947495144
	.quad	-5703758818239239559
	.quad	1560874275157996115
	.quad	-8252355869333301970
	.quad	1248699420126396892
	.quad	1553625868034358140
	.quad	1997919072202235028
	.quad	8621598323911307159
	.quad	1598335257761788022
	.quad	-481418970354774919
	.quad	1278668206209430417
	.quad	-4459619167309550194
	.quad	2045869129935088668
	.quad	121653480894270168
	.quad	1636695303948070935
	.quad	97322784715416134
	.quad	1309356243158456748
	.quad	-3533632359197244509
	.quad	2094969989053530796
	.quad	8241140556867935363
	.quad	1675975991242824637
	.quad	-785785183989472356
	.quad	1340780792994259709
	.quad	-1257256294383155770
	.quad	2145249268790815535
	.quad	-4695153850248434939
	.quad	1716199415032652428
	.quad	-66774265456837628
	.quad	1372959532026121942
	.quad	-3796187639472850528
	.quad	2196735251241795108
	.quad	652398703163629901
	.quad	1757388200993436087
	.quad	-6856778666952916726
	.quad	1405910560794748869
	.quad	7475898206584884855
	.quad	2249456897271598191
	.quad	2291369750525997561
	.quad	1799565517817278553
	.quad	9211793429904618695
	.quad	1439652414253822842
	.quad	-18525771120251381
	.quad	2303443862806116547
	.quad	7363877012587619542
	.quad	1842755090244893238
	.quad	-5176944834155635336
	.quad	1474204072195914590
	.quad	-7830904682066418592
	.quad	1179363257756731672
	.quad	2227947767661371545
	.quad	1886981212410770676
	.quad	-1906990600612813087
	.quad	1509584969928616540
	.quad	-5214941295232160793
	.quad	1207667975942893232
	.quad	6413489186596184024
	.quad	1932268761508629172
	.quad	-2247906280206873427
	.quad	1545815009206903337
	.quad	5580372605318321905
	.quad	1236652007365522670
	.quad	8928596168509315048
	.quad	1978643211784836272
	.quad	-235820694676368608
	.quad	1582914569427869017
	.quad	7190041073742725760
	.quad	1266331655542295214
	.quad	436019273762630246
	.quad	2026130648867672343
	.quad	7727513048493924843
	.quad	1620904519094137874
	.quad	-8575384820172501418
	.quad	1296723615275310299
	.quad	4726128361433549347
	.quad	2074757784440496479
	.quad	7470251503888749801
	.quad	1659806227552397183
	.quad	-5091845241114731129
	.quad	1327844982041917746
	.quad	-4457603571041659483
	.quad	2124551971267068394
	.quad	-3566082856833327587
	.quad	1699641577013654715
	.quad	-6542215100208572392
	.quad	1359713261610923772
	.quad	4289851098633925465
	.quad	2175541218577478036
	.quad	-257467935834769951
	.quad	1740432974861982428
	.quad	3483374466074094362
	.quad	1392346379889585943
	.quad	1884050330976640656
	.quad	2227754207823337509
	.quad	5196589079523222848
	.quad	1782203366258670007
	.quad	-3221426365865242368
	.quad	1425762693006936005
	.quad	5913764258841343181
	.quad	2281220308811097609
	.quad	8420360221814984868
	.quad	1824976247048878087
	.quad	-642409452031832752
	.quad	1459980997639102469
	.quad	-513927561625466201
	.quad	1167984798111281975
	.quad	-8200981728084566569
	.quad	1868775676978051161
	.quad	4507261061758077715
	.quad	1495020541582440929
	.quad	7295157664148372495
	.quad	1196016433265952743
	.quad	7982903447895485668
	.quad	1913626293225524389
	.quad	-8371072500651252758
	.quad	1530901034580419511
	.quad	4371188443704728763
	.quad	1224720827664335609
	.quad	-4074144934298164949
	.quad	1959553324262936974
	.quad	-3259315947438531959
	.quad	1567642659410349579
	.quad	-2607452757950825567
	.quad	1254114127528279663
	.quad	3206773216762499739
	.quad	2006582604045247462
	.quad	-4813279056073820855
	.quad	1605266083236197969
	.quad	-3850623244859056684
	.quad	1284212866588958375
	.quad	4907049252451240275
	.quad	2054740586542333401
	.quad	236290587219081897
	.quad	1643792469233866721
	.quad	-3500316344966644806
	.quad	1315033975387093376
	.quad	-1911157337204721366
	.quad	2104054360619349402
	.quad	5849771759720043554
	.quad	1683243488495479522
	.quad	-2698880221707785803
	.quad	1346594790796383617
	.quad	-8007557169474367609
	.quad	2154551665274213788
	.quad	-2716696920837583764
	.quad	1723641332219371030
	.quad	-5862706351411977334
	.quad	1378913065775496824
	.quad	9066413911450387881
	.quad	2206260905240794919
	.quad	-7504264129807330988
	.quad	1765008724192635935
	.quad	8753983955121776503
	.quad	1412006979354108748
	.quad	-8129718560256619535
	.quad	2259211166966573997
	.quad	874922781278525018
	.quad	1807368933573259198
	.quad	8078635854506640661
	.quad	1445895146858607358
	.quad	-4605137760620418441
	.quad	1156716117486885886
	.quad	-3678871602250759182
	.quad	1850745787979017418
	.quad	746251532941302978
	.quad	1480596630383213935
	.quad	597001226353042382
	.quad	1184477304306571148
	.quad	-2734146852577042512
	.quad	1895163686890513836
	.quad	8880728962164096960
	.quad	1516130949512411069
	.quad	-7652812089236363725
	.quad	1212904759609928855
	.quad	-1176452898552450990
	.quad	1940647615375886168
	.quad	2748186495899949531
	.quad	1552518092300708935
	.quad	2198549196719959625
	.quad	1242014473840567148
	.quad	-171670099989974923
	.quad	1987223158144907436
	.quad	-7516033709475800585
	.quad	1589778526515925949
	.quad	-6012826967580640468
	.quad	1271822821212740759
	.quad	8826220925580526867
	.quad	2034916513940385215
	.quad	7060976740464421494
	.quad	1627933211152308172
	.quad	-1729916237112283451
	.quad	1302346568921846537
	.quad	-6457214794121563846
	.quad	2083754510274954460
	.quad	-8855120650039161400
	.quad	1667003608219963568
	.quad	-3394747705289418796
	.quad	1333602886575970854
	.quad	-5431596328463070074
	.quad	2133764618521553367
	.quad	3033420566713364587
	.quad	1707011694817242694
	.quad	6116085268112601993
	.quad	1365609355853794155
	.quad	-8661007644729388428
	.quad	2184974969366070648
	.quad	-3239457301041600419
	.quad	1747979975492856518
	.quad	1097782973908629988
	.quad	1398383980394285215
	.quad	1756452758253807981
	.quad	2237414368630856344
	.quad	5094511021344956708
	.quad	1789931494904685075
	.quad	4075608817075965366
	.quad	1431945195923748060
	.quad	6520974107321544586
	.quad	2291112313477996896
	.quad	1527430471115325346
	.quad	1832889850782397517
	.quad	-6156753252591560370
	.quad	1466311880625918013
	.quad	-1236053787331337972
	.quad	1173049504500734410
	.quad	9090360384495590213
	.quad	1876879207201175057
	.quad	-106409321887348476
	.quad	1501503365760940045
	.quad	-3774476272251789104
	.quad	1201202692608752036
	.quad	-2349813220860952243
	.quad	1921924308174003258
	.quad	1809498238053148529
	.quad	1537539446539202607
	.quad	-5931099039041301823
	.quad	1230031557231362085
	.quad	1578287981759648052
	.quad	1968050491570179337
	.quad	-6116067244076102204
	.quad	1574440393256143469
	.quad	-4892853795260881763
	.quad	1259552314604914775
	.quad	3239480371808320148
	.quad	2015283703367863641
	.quad	-1097764517295254205
	.quad	1612226962694290912
	.quad	6500486015647617283
	.quad	1289781570155432730
	.quad	-8045966448673363964
	.quad	2063650512248692368
	.quad	-2747424344196780848
	.quad	1650920409798953894
	.quad	-2197939475357424678
	.quad	1320736327839163115
	.quad	7551343283653851484
	.quad	2113178124542660985
	.quad	6041074626923081187
	.quad	1690542499634128788
	.quad	-6235186742687266020
	.quad	1352433999707303030
	.quad	1091747655926105338
	.quad	2163894399531684849
	.quad	4562746939482794594
	.quad	1731115519625347879
	.quad	7339546366328145998
	.quad	1384892415700278303
	.quad	8053925371383123274
	.quad	2215827865120445285
	.quad	6443140297106498619
	.quad	1772662292096356228
	.quad	-5913534206540532074
	.quad	1418129833677084982
	.quad	5295740528502789974
	.quad	2269007733883335972
	.quad	-3142105206681588667
	.quad	1815206187106668777
	.quad	4865013464138549713
	.quad	1452164949685335022
	.quad	-3486686858172980876
	.quad	1161731959748268017
	.quad	9178696285890871890
	.quad	1858771135597228828
	.quad	-3725089415513033457
	.quad	1487016908477783062
	.quad	4398626097073393881
	.quad	1189613526782226450
	.quad	7037801755317430209
	.quad	1903381642851562320
	.quad	5630241404253944167
	.quad	1522705314281249856
	.quad	814844308661245011
	.quad	1218164251424999885
	.quad	1303750893857992017
	.quad	1949062802279999816
	.quad	-2646348099655516710
	.quad	1559250241823999852
	.quad	5261619149759407279
	.quad	1247400193459199882
	.quad	-6338804619352589647
	.quad	1995840309534719811
	.quad	5997002748743659252
	.quad	1596672247627775849
	.quad	8486951013736837725
	.quad	1277337798102220679
	.quad	2511075177753209390
	.quad	2043740476963553087
	.quad	-5369837487281253134
	.quad	1634992381570842469
	.quad	-4295869989825002507
	.quad	1307993905256673975
	.quad	4194654460505726958
	.quad	2092790248410678361
	.quad	-333625246337328757
	.quad	1674232198728542688
	.quad	3422448617672047318
	.quad	1339385758982834151
	.quad	-1902779841208544938
	.quad	2143017214372534641
	.quad	-8900921502450656597
	.quad	1714413771498027713
	.quad	-3431388387218614954
	.quad	1371531017198422170
	.quad	5577825024675947042
	.quad	2194449627517475473
	.quad	-6605786424484973336
	.quad	1755559702013980378
	.quad	-1595280324846068345
	.quad	1404447761611184302
	.quad	-6241797334495619676
	.quad	2247116418577894884
	.quad	-4993437867596495741
	.quad	1797693134862315907
	.quad	3383947335406624054
	.quad	1438154507889852726
	.quad	-1964381892833222160
	.quad	2301047212623764361
	.quad	-8950203143750398374
	.quad	1840837770099011489
	.quad	-7160162515000318699
	.quad	1472670216079209191
	.quad	5339916432225476010
	.quad	1178136172863367353
	.quad	4854517476818851293
	.quad	1885017876581387765
	.quad	3883613981455081034
	.quad	1508014301265110212
	.quad	-4271806444319755819
	.quad	1206411441012088169
	.quad	-6834890310911609310
	.quad	1930258305619341071
	.quad	5600134195496443521
	.quad	1544206644495472857
	.quad	-2898590273086665829
	.quad	1235365315596378285
	.quad	6430302007287065643
	.quad	1976584504954205257
	.quad	-2234456023654168132
	.quad	1581267603963364205
	.quad	-5476913633665244829
	.quad	1265014083170691364
	.quad	-8763061813864391727
	.quad	2024022533073106183
	.quad	-3321100636349603058
	.quad	1619218026458484946
	.quad	8411165935146048523
	.quad	1295374421166787957
	.quad	-1299529762733963656
	.quad	2072599073866860731
	.quad	-8418321439670991571
	.quad	1658079259093488585
	.quad	8022738107230848036
	.quad	1326463407274790868
	.quad	9147032156827446534
	.quad	2122341451639665389
	.quad	-7439769533505684065
	.quad	1697873161311732311
	.quad	5116230817421183718
	.quad	1358298529049385849
	.quad	-2882077136351837022
	.quad	2173277646479017358
	.quad	1383687105660440706
	.quad	1738622117183213887
	.quad	-6271747944955468082
	.quad	1390897693746571109
	.quad	8411947361780802685
	.quad	2225436309994513775
	.quad	6729557889424642148
	.quad	1780349047995611020
	.quad	5383646311539713719
	.quad	1424279238396488816
	.quad	1235136468979721303
	.quad	2278846781434382106
	.quad	-2701239639558133281
	.quad	1823077425147505684
	.quad	-2160991711646506624
	.quad	1458461940118004547
	.quad	5649904260166615347
	.quad	1166769552094403638
	.quad	5350498001524674232
	.quad	1866831283351045821
	.quad	591049586477829062
	.quad	1493465026680836657
	.quad	-6905857960301557397
	.quad	1194772021344669325
	.quad	18673707743239135
	.quad	1911635234151470921
	.quad	-3674409848547319015
	.quad	1529308187321176736
	.quad	8128518565387875758
	.quad	1223446549856941389
	.quad	1937583260394870242
	.quad	1957514479771106223
	.quad	8928764237799716840
	.quad	1566011583816884978
	.quad	-3925035053985957497
	.quad	1252809267053507982
	.quad	8477339172590109297
	.quad	2004494827285612772
	.quad	-596826291411733209
	.quad	1603595861828490217
	.quad	6901236596354434079
	.quad	1282876689462792174
	.quad	-26067890058636443
	.quad	2052602703140467478
	.quad	3668494502695001169
	.quad	1642082162512373983
	.quad	-8133250842069730034
	.quad	1313665730009899186
	.quad	9122891541139893884
	.quad	2101865168015838698
	.quad	-3769733211313815862
	.quad	1681492134412670958
	.quad	673562245690857633
	.quad	1345193707530136767
	.align 32
	.type	_ZL11DIGIT_TABLE, @object
	.size	_ZL11DIGIT_TABLE, 200
_ZL11DIGIT_TABLE:
	.ascii	"000102030405060708091011121314151617181920212223242526272829"
	.ascii	"303132333435363738394041424344454647484950515253545556575859"
	.ascii	"606162636465666768697071727374757677787980818283848586878889"
	.ascii	"90919293949596979899"
	.align 32
	.type	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100, @object
	.size	_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100, 200
_ZZN14dragonbox_warpL12Utoa_2DigitsEPcjE9Digits100:
	.ascii	"000102030405060708091011121314151617181920212223242526272829"
	.ascii	"303132333435363738394041424344454647484950515253545556575859"
	.ascii	"606162636465666768697071727374757677787980818283848586878889"
	.ascii	"90919293949596979899"
	.align 32
	.type	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5, @object
	.size	_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5, 400
_ZZN14dragonbox_warpL14MultipleOfPow5EmiE4Mod5:
	.quad	1
	.quad	-1
	.quad	-3689348814741910323
	.quad	3689348814741910323
	.quad	-8116567392432202711
	.quad	737869762948382064
	.quad	2066035336255469781
	.quad	147573952589676412
	.quad	-3276141747490816367
	.quad	29514790517935282
	.quad	6723469279985657373
	.quad	5902958103587056
	.quad	8723391485480952121
	.quad	1180591620717411
	.quad	-1944670517645719899
	.quad	236118324143482
	.quad	-4078282918271054303
	.quad	47223664828696
	.quad	-8194354213138031507
	.quad	9444732965739
	.quad	5739826786856214345
	.quad	1888946593147
	.quad	1147965357371242869
	.quad	377789318629
	.quad	3918941886216158897
	.quad	75557863725
	.quad	-6594909252240588867
	.quad	15111572745
	.quad	6059715779035702873
	.quad	3022314549
	.quad	8590640785290961221
	.quad	604462909
	.quad	-1971220657683718079
	.quad	120892581
	.quad	-4083592946278653939
	.quad	24178516
	.quad	-4506067403997641111
	.quad	4835703
	.quad	2788135333942382101
	.quad	967140
	.quad	-3131721747953433903
	.quad	193428
	.quad	-8005041979074507427
	.quad	38685
	.quad	5777689233668919161
	.quad	7737
	.quad	-2533810968008126491
	.quad	1547
	.quad	3182586621140285025
	.quad	309
	.align 32
	.type	_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10, @object
	.size	_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10, 9904
_ZZN14dragonbox_warpL19ComputePow10_DoubleEiE5Pow10:
	.quad	-38366372719436721
	.quad	2731688931043774331
	.quad	-6941508010590729807
	.quad	8624834609543440813
	.quad	-4065198994811024355
	.quad	-3054014793352862696
	.quad	-469812725086392539
	.quad	5405853545163697438
	.quad	-7211161980820077193
	.quad	5684501474941004851
	.quad	-4402266457597708587
	.quad	2493940825248868160
	.quad	-891147053569747830
	.quad	7729112049988473104
	.quad	-7474495936122174250
	.quad	-9004363024039368022
	.quad	-4731433901725329908
	.quad	2579604275232953684
	.quad	-1302606358729274481
	.quad	3224505344041192105
	.quad	-7731658001846878407
	.quad	8932844867666826922
	.quad	-5052886483881210105
	.quad	-2669001970698630060
	.quad	-1704422086424124727
	.quad	-3336252463373287575
	.quad	-7982792831656159810
	.quad	2526528228819083170
	.quad	-5366805021142811859
	.quad	-6065211750830921845
	.quad	-2096820258001126919
	.quad	1641857348316123501
	.quad	-8228041688891786181
	.quad	-5891368184943504668
	.quad	-5673366092687344822
	.quad	-7364210231179380835
	.quad	-2480021597431793123
	.quad	4629795266307937668
	.quad	-8467542526035952558
	.quad	5199465050656154995
	.quad	-5972742139117552794
	.quad	-2724040723534582064
	.quad	-2854241655469553088
	.quad	-8016736922845615485
	.quad	-8701430062309552536
	.quad	6518754469289960082
	.quad	-6265101559459552766
	.quad	8148443086612450103
	.quad	-3219690930897053053
	.quad	962181821410786820
	.quad	-8929835859451740015
	.quad	-1704479370831952189
	.quad	-6550608805887287114
	.quad	7092772823314835571
	.quad	-3576574988931720989
	.quad	-357406007711231344
	.quad	-9152888395723407474
	.quad	8999993282035256218
	.quad	-6829424476226871438
	.quad	2026619565689294465
	.quad	-3925094576856201394
	.quad	-6690097579743157727
	.quad	-294682202642863838
	.quad	5472436080603216553
	.quad	-7101705404292871755
	.quad	8031958568804398250
	.quad	-4265445736938701790
	.quad	-3795109844276665900
	.quad	-720121152745989333
	.quad	9091170749936331337
	.quad	-7367604748107325189
	.quad	3376138709496513134
	.quad	-4597819916706768583
	.quad	-391512631556746487
	.quad	-1135588877456072824
	.quad	8733981247408842699
	.quad	-7627272076051127371
	.quad	5458738279630526687
	.quad	-4922404076636521310
	.quad	-7011635205744005353
	.quad	-1541319077368263733
	.quad	5070514048102157021
	.quad	-7880853450996246689
	.quad	863228270850154186
	.quad	-5239380795317920458
	.quad	-3532650679864695172
	.quad	-1937539975720012668
	.quad	-9027499368258256869
	.quad	-8128491512466089774
	.quad	-3336344095947716591
	.quad	-5548928372155224313
	.quad	-8782116138362033642
	.quad	-2324474446766642487
	.quad	7469098900757009563
	.quad	-8370325556870233411
	.quad	-2249342214667950879
	.quad	-5851220927660403859
	.quad	6411694268519837209
	.quad	-2702340141148116920
	.quad	-5820440219632367201
	.quad	-8606491615858654931
	.quad	7891439908798240260
	.quad	-6146428501395930760
	.quad	-3970758169284363388
	.quad	-3071349608317525546
	.quad	-351761693178066331
	.quad	-8837122532839535322
	.quad	6697677969404790400
	.quad	-6434717147622031249
	.quad	-851274575098787809
	.quad	-3431710416100151157
	.quad	-1064093218873484761
	.quad	-9062348037703676329
	.quad	8558313775058847833
	.quad	-6716249028702207507
	.quad	6086206200396171887
	.quad	-3783625267450371480
	.quad	-6227300304786948854
	.quad	-117845565885576446
	.quad	-3172439362556298163
	.quad	-6991182506319567135
	.quad	-4288617610811380304
	.quad	-4127292114472071014
	.quad	3862600023340550428
	.quad	-547429124662700864
	.quad	-4395122007679087773
	.quad	-7259672230555269896
	.quad	8782263791269039902
	.quad	-4462904269766699466
	.quad	-7468914334623251739
	.quad	-966944318780986428
	.quad	4498915137003099038
	.quad	-7521869226879198374
	.quad	-6411550076227838909
	.quad	-4790650515171610063
	.quad	5820620459997365076
	.quad	-1376627125537124675
	.quad	-6559282480285457367
	.quad	-7777920981101784778
	.quad	-8711237568605798758
	.quad	-5110715207949843068
	.quad	2946011094524915264
	.quad	-1776707991509915931
	.quad	3682513868156144080
	.quad	-8027971522334779313
	.quad	4607414176811284002
	.quad	-5423278384491086237
	.quad	1147581702586717098
	.quad	-2167411962186469893
	.quad	-3177208890193991531
	.quad	-8272161504007625539
	.quad	7237616480483531101
	.quad	-5728515861582144020
	.quad	-4788037454677749836
	.quad	-2548958808550292121
	.quad	-1373360799919799391
	.quad	-8510628282985014432
	.quad	-858350499949874619
	.quad	-6026599335303880135
	.quad	3538747893490044630
	.quad	-2921563150702462265
	.quad	9035120885289943692
	.quad	-8743505996830120772
	.quad	-5882264492762254952
	.quad	-6317696477610263061
	.quad	-2741144597525430787
	.quad	-3285434578585440922
	.quad	-3426430746906788484
	.quad	-8970925639256982432
	.quad	4776009810824339054
	.quad	-6601971030643840136
	.quad	5970012263530423817
	.quad	-3640777769877412266
	.quad	7462515329413029772
	.quad	-9193015133814464522
	.quad	52386062455755703
	.quad	-6879582898840692749
	.quad	-9157889458785081179
	.quad	-3987792605123478032
	.quad	6999382250228200142
	.quad	-373054737976959636
	.quad	8749227812785250178
	.quad	-7150688238876681629
	.quad	-3755104653863994447
	.quad	-4326674280168464132
	.quad	-4693880817329993059
	.quad	-796656831783192261
	.quad	-1255665003235103419
	.quad	-7415439547505577019
	.quad	8438581409832836171
	.quad	-4657613415954583370
	.quad	-3286831292991118498
	.quad	-1210330751515841308
	.quad	-8720225134666286027
	.quad	-7673985747338482674
	.quad	-3144297699952734815
	.quad	-4980796165745715438
	.quad	-8542058143368306422
	.quad	-1614309188754756393
	.quad	3157485376071780684
	.quad	-7926472270612804602
	.quad	8890957387685944784
	.quad	-5296404319838617848
	.quad	1890324697752655171
	.quad	-2008819381370884406
	.quad	2362905872190818964
	.quad	-8173041140997884610
	.quad	6088502188546649757
	.quad	-5604615407819967859
	.quad	-1612744301171463612
	.quad	-2394083241347571919
	.quad	7207441660390446293
	.quad	-8413831053483314306
	.quad	-2412877989897052923
	.quad	-5905602798426754978
	.quad	-7627783505798704058
	.quad	-2770317479606055818
	.quad	4300328673033783640
	.quad	-8648977452394866743
	.quad	-1923980597781273129
	.quad	-6199535797066195524
	.quad	6818396289628184397
	.quad	-3137733727905356501
	.quad	8522995362035230496
	.quad	-8878612607581929669
	.quad	3021029092058325108
	.quad	-6486579741050024183
	.quad	-835399653354481519
	.quad	-3496538657885142324
	.quad	8179122470161673909
	.quad	-9102865688819295809
	.quad	-4111420493003729615
	.quad	-6766896092596731857
	.quad	-5139275616254662019
	.quad	-3846934097318526917
	.quad	-6424094520318327523
	.quad	-196981603220770742
	.quad	-8030118150397909404
	.quad	-7040642529654063570
	.quad	-7324666853212387329
	.quad	-4189117143640191558
	.quad	4679224488766679550
	.quad	-624710411122851544
	.quad	-3374341425896426371
	.quad	-7307973034592864071
	.quad	-9026492418826348337
	.quad	-4523280274813692185
	.quad	-2059743486678159614
	.quad	-1042414325089727327
	.quad	-2574679358347699518
	.quad	-7569037980822161435
	.quad	3002511419460075706
	.quad	-4849611457600313890
	.quad	8364825292752482536
	.quad	-1450328303573004458
	.quad	1232659579085827362
	.quad	-7823984217374209643
	.quad	-3841273781498745803
	.quad	-5168294253290374149
	.quad	4421779809981343555
	.quad	-1848681798185579782
	.quad	915538744049291539
	.quad	-8072955151507069220
	.quad	5183897733458195116
	.quad	-5479507920956448621
	.quad	6479872166822743895
	.quad	-2237698882768172872
	.quad	3488154190101041965
	.quad	-8316090829371189901
	.quad	2180096368813151228
	.quad	-5783427518286599473
	.quad	-1886565557410948869
	.quad	-2617598379430861437
	.quad	-2358206946763686086
	.quad	-8553528014785370254
	.quad	7749492695127472004
	.quad	-6080224000054324913
	.quad	463493832054564197
	.quad	-2988593981640518238
	.quad	-4032318728359182658
	.quad	-8785400266166405755
	.quad	-4826042214438183113
	.quad	-6370064314280619289
	.quad	3190819268807046917
	.quad	-3350894374423386208
	.quad	-623161932418579258
	.quad	-9011838011655698236
	.quad	-7307005235402693892
	.quad	-6653111496142234891
	.quad	-4522070525825979461
	.quad	-3704703351750405709
	.quad	3570783879572301481
	.quad	-19193171260619233
	.quad	-148206168962011053
	.quad	-6929524759678968877
	.quad	-92628855601256908
	.quad	-4050219931171323192
	.quad	-115786069501571135
	.quad	-451088895536766085
	.quad	4466953431550423985
	.quad	-7199459587351560659
	.quad	486002885505321039
	.quad	-4387638465762062920
	.quad	5219189625309039203
	.quad	-872862063775190746
	.quad	6523987031636299003
	.quad	-7463067817500576073
	.quad	-534194123654701027
	.quad	-4717148753448332187
	.quad	-667742654568376284
	.quad	-1284749923383027329
	.quad	8388693718644305453
	.quad	-7720497729755473937
	.quad	-6286281471915778851
	.quad	-5038936143766954517
	.quad	-7857851839894723564
	.quad	-1686984161281305242
	.quad	8624429273841147160
	.quad	-7971894128441897632
	.quad	778582277723329071
	.quad	-5353181642124984136
	.quad	973227847154161339
	.quad	-2079791034228842266
	.quad	1216534808942701674
	.quad	-8217398424034108273
	.quad	-3851351762838199358
	.quad	-5660062011615247437
	.quad	-4814189703547749197
	.quad	-2463391496091671392
	.quad	-6017737129434686497
	.quad	-8457148712698376476
	.quad	7768129340171790700
	.quad	-5959749872445582691
	.quad	-8736582398494813241
	.quad	-2838001322129590460
	.quad	-1697355961263740744
	.quad	-8691279853972075893
	.quad	1244995533423855987
	.quad	-6252413799037706963
	.quad	-3055441601647567920
	.quad	-3203831230369745799
	.quad	5404070034795315908
	.quad	-8919923546622172981
	.quad	-3539985255894009413
	.quad	-6538218414850328322
	.quad	-4424981569867511767
	.quad	-3561087000135522498
	.quad	8303831092947774003
	.quad	-9143208402725783417
	.quad	578208414664970848
	.quad	-6817324484979841368
	.quad	-3888925500096174344
	.quad	-3909969587797413806
	.quad	-249470856692830026
	.quad	-275775966319379353
	.quad	-4923524589293425437
	.quad	-7089889006590693952
	.quad	-3077202868308390898
	.quad	-4250675239810979535
	.quad	765182433041899282
	.quad	-701658031336336515
	.quad	5568164059729762006
	.quad	-7356065297226292178
	.quad	5785945546544795206
	.quad	-4583395603105477319
	.quad	-1990940103673781801
	.quad	-1117558485454458744
	.quad	6734696907262548557
	.quad	-7616003081050118571
	.quad	4209185567039092848
	.quad	-4908317832885260310
	.quad	-8573576096483297652
	.quad	-1523711272679187483
	.quad	3118087934678041647
	.quad	-7869848573065574033
	.quad	4254647968387469982
	.quad	-5225624697904579637
	.quad	706623942056949573
	.quad	-1920344853953336643
	.quad	-3728406090856200938
	.quad	-8117744561361917258
	.quad	-6941939825212513490
	.quad	-5535494683275008668
	.quad	5157633273766521850
	.quad	-2307682335666372931
	.quad	6447041592208152312
	.quad	-8359830487432564938
	.quad	6335244004343789147
	.quad	-5838102090863318269
	.quad	-1304317031425039374
	.quad	-2685941595151759932
	.quad	-1630396289281299218
	.quad	-8596242524610931813
	.quad	1286845328412881941
	.quad	-6133617137336276863
	.quad	-3003129357911285478
	.quad	-3055335403242958174
	.quad	5469460339465668960
	.quad	-8827113654667930715
	.quad	8030098730593431004
	.quad	-6422206049907525490
	.quad	-3797434642040374957
	.quad	-3416071543957018958
	.quad	9088264752731695016
	.quad	-9052573742614218705
	.quad	-8154892584824854327
	.quad	-6704031159840385477
	.quad	8253128342678483707
	.quad	-3768352931373093942
	.quad	5704724409920716730
	.quad	-98755145788979524
	.quad	-2092466524453879895
	.quad	-6979250993759194058
	.quad	998051431430019018
	.quad	-4112377723771604669
	.quad	-7975807747567252036
	.quad	-528786136287117932
	.quad	8476984389250486571
	.quad	-7248020362820530564
	.quad	-3925256793573221701
	.quad	-4448339435098275301
	.quad	-294884973539139223
	.quad	-948738275445456222
	.quad	-368606216923924028
	.quad	-7510490449794491995
	.quad	-2536221894791146469
	.quad	-4776427043815727089
	.quad	6053094668365842721
	.quad	-1358847786342270957
	.quad	2954682317029915497
	.quad	-7766808894105001205
	.quad	-459166561069996766
	.quad	-5096825099203863602
	.quad	-573958201337495958
	.quad	-1759345355577441598
	.quad	-5329133770099257851
	.quad	-8017119874876982855
	.quad	-5636551615525730109
	.quad	-5409713825168840664
	.quad	2177682517447613172
	.quad	-2150456263033662926
	.quad	2722103146809516465
	.quad	-8261564192037121185
	.quad	6313000485183335695
	.quad	-5715269221619013577
	.quad	3279564588051781714
	.quad	-2532400508596379068
	.quad	-512230283362660762
	.quad	-8500279345513818773
	.quad	1985699082112030976
	.quad	-6013663163464885563
	.quad	-2129562165787349184
	.quad	-2905392935903719049
	.quad	6561419329620589328
	.quad	-8733399612580906262
	.quad	-7428327965055601430
	.quad	-6305063497298744923
	.quad	4549648098962661925
	.quad	-3269643353196043250
	.quad	-8147997931578836306
	.quad	-8961056123388608887
	.quad	1825030320404309165
	.quad	-6589634135808373205
	.quad	6892973918932774360
	.quad	-3625356651333078602
	.quad	4004531380238580046
	.quad	-9183376934724255983
	.quad	-2108853905778275375
	.quad	-6867535149977932074
	.quad	6587304654631931589
	.quad	-3972732919045027189
	.quad	-989241218564861322
	.quad	-354230130378896082
	.quad	-1236551523206076653
	.quad	-7138922859127891907
	.quad	6144684325637283948
	.quad	-4311967555482476980
	.quad	-6154202648235558777
	.quad	-778273425925708321
	.quad	-3081067291867060567
	.quad	-7403949918844649557
	.quad	-1925667057416912854
	.quad	-4643251380128424042
	.quad	-2407083821771141068
	.quad	-1192378206733142148
	.quad	-7620540795641314239
	.quad	-7662765406849295699
	.quad	-2456994988062127447
	.quad	-4966770740134231719
	.quad	6152128301777116499
	.quad	-1596777406740401745
	.quad	-6144897678060768089
	.quad	-7915514906853832947
	.quad	-3840561048787980055
	.quad	-5282707615139903279
	.quad	4422670725869800739
	.quad	-1991698500497491195
	.quad	-8306719647944912789
	.quad	-8162340590452013853
	.quad	8643358275316593219
	.quad	-5591239719637629412
	.quad	6192511825718353620
	.quad	-2377363631119648861
	.quad	7740639782147942025
	.quad	-8403381297090862394
	.quad	2532056854628769814
	.quad	-5892540602936190089
	.quad	-6058300968568813541
	.quad	-2753989735242849707
	.quad	-7572876210711016926
	.quad	-8638772612167862923
	.quad	9102010423587778133
	.quad	-6186779746782440750
	.quad	-2457545025797441046
	.quad	-3121788665050663033
	.quad	-7683617300674189211
	.quad	-8868646943297746252
	.quad	-4802260812921368257
	.quad	-6474122660694794911
	.quad	-1391139997724322417
	.quad	-3480967307441105734
	.quad	7484447039699372787
	.quad	-9093133594791772940
	.quad	-9157278655470055720
	.quad	-6754730975062328271
	.quad	-6834912300910181746
	.quad	-3831727700400522434
	.quad	679731660717048625
	.quad	-177973607073265139
	.quad	-8373707460958465027
	.quad	-7028762532061872568
	.quad	8601490892183123070
	.quad	-4174267146649952806
	.quad	-7694880458480647778
	.quad	-606147914885053103
	.quad	4216457482181353989
	.quad	-7296371474444240046
	.quad	-4282243101277735613
	.quad	-4508778324627912153
	.quad	8482254178684994196
	.quad	-1024286887357502287
	.quad	5991131704928854841
	.quad	-7557708332239520786
	.quad	-3173071712060547580
	.quad	-4835449396872013078
	.quad	-8578025658503072379
	.quad	-1432625727662628443
	.quad	3112525982153323238
	.quad	-7812920107430224633
	.quad	4251171748059520976
	.quad	-5154464115860392887
	.quad	702278666647013315
	.quad	-1831394126398103205
	.quad	5489534351736154548
	.quad	-8062150356639896359
	.quad	1125115960621402641
	.quad	-5466001927372482545
	.quad	6018080969204141205
	.quad	-2220816390788215277
	.quad	2910915193077788602
	.quad	-8305539271883716405
	.quad	-486521013540076076
	.quad	-5770238071427257602
	.quad	-608151266925095095
	.quad	-2601111570856684098
	.quad	-5371875102083756772
	.quad	-8543223759426509417
	.quad	3560107088838733873
	.quad	-6067343680855748868
	.quad	-161552157378970562
	.quad	-2972493582642298180
	.quad	4409745821703674701
	.quad	-8775337516792518219
	.quad	-6467280898289979120
	.quad	-6357485877563259869
	.quad	1139270913992301908
	.quad	-3335171328526686933
	.quad	-3187597375937010519
	.quad	-9002011107970261189
	.quad	7231123676894144234
	.quad	-6640827866535438582
	.quad	4427218577690292388
	.quad	-3689348814741910324
	.quad	-3689348814741910323
	.quad	-9223372036854775808
	.quad	0
	.quad	-6917529027641081856
	.quad	0
	.quad	-4035225266123964416
	.quad	0
	.quad	-432345564227567616
	.quad	0
	.quad	-7187745005283311616
	.quad	0
	.quad	-4372995238176751616
	.quad	0
	.quad	-854558029293551616
	.quad	0
	.quad	-7451627795949551616
	.quad	0
	.quad	-4702848726509551616
	.quad	0
	.quad	-1266874889709551616
	.quad	0
	.quad	-7709325833709551616
	.quad	0
	.quad	-5024971273709551616
	.quad	0
	.quad	-1669528073709551616
	.quad	0
	.quad	-7960984073709551616
	.quad	0
	.quad	-5339544073709551616
	.quad	0
	.quad	-2062744073709551616
	.quad	0
	.quad	-8206744073709551616
	.quad	0
	.quad	-5646744073709551616
	.quad	0
	.quad	-2446744073709551616
	.quad	0
	.quad	-8446744073709551616
	.quad	0
	.quad	-5946744073709551616
	.quad	0
	.quad	-2821744073709551616
	.quad	0
	.quad	-8681119073709551616
	.quad	0
	.quad	-6239712823709551616
	.quad	0
	.quad	-3187955011209551616
	.quad	0
	.quad	-8910000909647051616
	.quad	0
	.quad	-6525815118631426616
	.quad	0
	.quad	-3545582879861895366
	.quad	0
	.quad	-9133518327554766460
	.quad	4611686018427387904
	.quad	-6805211891016070171
	.quad	5764607523034234880
	.quad	-3894828845342699810
	.quad	-6629298651489370112
	.quad	-256850038250986858
	.quad	5548434740920451072
	.quad	-7078060301547948643
	.quad	-1143914305352105984
	.quad	-4235889358507547899
	.quad	7793479155164643328
	.quad	-683175679707046970
	.quad	-4093209111326359552
	.quad	-7344513827457986212
	.quad	4359273333062107136
	.quad	-4568956265895094861
	.quad	5449091666327633920
	.quad	-1099509313941480672
	.quad	2199678564482154496
	.quad	-7604722348854507276
	.quad	1374799102801346560
	.quad	-4894216917640746191
	.quad	1718498878501683200
	.quad	-1506085128623544835
	.quad	6759809616554491904
	.quad	-7858832233030797378
	.quad	6530724019560251392
	.quad	-5211854272861108819
	.quad	-1059967012404461568
	.quad	-1903131822648998119
	.quad	7898413271349198848
	.quad	-8106986416796705681
	.quad	-1981020733047832576
	.quad	-5522047002568494197
	.quad	-2476275916309790720
	.quad	-2290872734783229842
	.quad	-3095344895387238400
	.quad	-8349324486880600507
	.quad	4982938468024057856
	.quad	-5824969590173362730
	.quad	-7606384970252091392
	.quad	-2669525969289315508
	.quad	4327076842467049472
	.quad	-8585982758446904049
	.quad	-6518949010312869888
	.quad	-6120792429631242157
	.quad	-8148686262891087360
	.quad	-3039304518611664792
	.quad	8260886245095692416
	.quad	-8817094351773372351
	.quad	5163053903184807760
	.quad	-6409681921289327535
	.quad	-7381240676301154012
	.quad	-3400416383184271515
	.quad	-3178808521666707
	.quad	-9042789267131251553
	.quad	-4613672773753429596
	.quad	-6691800565486676537
	.quad	-5767090967191786995
	.quad	-3753064688430957767
	.quad	-7208863708989733744
	.quad	-79644842111309304
	.quad	212292400617608628
	.quad	-6967307053960650171
	.quad	132682750386005392
	.quad	-4097447799023424810
	.quad	4777539456409894645
	.quad	-510123730351893109
	.quad	-3251447716342407502
	.quad	-7236356359111015049
	.quad	7191217214140771119
	.quad	-4433759430461380907
	.quad	4377335499248575995
	.quad	-930513269649338230
	.quad	-8363388681221443718
	.quad	-7499099821171918250
	.quad	-7532960934977096276
	.quad	-4762188758037509908
	.quad	4418856886560793367
	.quad	-1341049929119499481
	.quad	5523571108200991709
	.quad	-7755685233340769032
	.quad	-8076983103442849942
	.quad	-5082920523248573386
	.quad	-5484542860876174524
	.quad	-1741964635633328828
	.quad	6979379479186945558
	.quad	-8006256924911912374
	.quad	-4861259862362934835
	.quad	-5396135137712502563
	.quad	7758483227328495169
	.quad	-2133482903713240300
	.quad	-4136954021121544751
	.quad	-8250955842461857044
	.quad	-279753253987271518
	.quad	-5702008784649933400
	.quad	4261994450943298507
	.quad	-2515824962385028846
	.quad	5327493063679123134
	.quad	-8489919629131724885
	.quad	7941369183226839863
	.quad	-6000713517987268202
	.quad	5315025460606161924
	.quad	-2889205879056697349
	.quad	-2579590211097073402
	.quad	-8723282702051517699
	.quad	7611128154919104931
	.quad	-6292417359137009220
	.quad	-4321147861633282548
	.quad	-3253835680493873621
	.quad	-789748808614215280
	.quad	-8951176327949752869
	.quad	8729779031470891258
	.quad	-6577284391509803182
	.quad	6300537770911226168
	.quad	-3609919470959866074
	.quad	-1347699823215743098
	.quad	-9173728696990998152
	.quad	6075216638131242420
	.quad	-6855474852811359786
	.quad	7594020797664053025
	.quad	-3957657547586811828
	.quad	269153960225290473
	.quad	-335385916056126881
	.quad	336442450281613091
	.quad	-7127145225176161157
	.quad	7127805559067090038
	.quad	-4297245513042813542
	.quad	4298070930406474644
	.quad	-759870872876129024
	.quad	-3850783373846682503
	.quad	-7392448323188662496
	.quad	9122475437414293195
	.quad	-4628874385558440216
	.quad	-7043649776941685122
	.quad	-1174406963520662366
	.quad	-4192876202749718498
	.quad	-7651533379841495835
	.quad	-4926390635932268014
	.quad	-4952730706374481889
	.quad	3065383741939440791
	.quad	-1579227364540714458
	.quad	-779956341003086915
	.quad	-7904546130479028392
	.quad	6430056314514152534
	.quad	-5268996644671397586
	.quad	8037570393142690668
	.quad	-1974559787411859078
	.quad	823590954573587527
	.quad	-8151628894773493780
	.quad	5126430365035880108
	.quad	-5577850100039479321
	.quad	6408037956294850135
	.quad	-2360626606621961247
	.quad	3398361426941174765
	.quad	-8392920656779807636
	.quad	-4793553135802847628
	.quad	-5879464802547371641
	.quad	-1380255401326171631
	.quad	-2737644984756826647
	.quad	-1725319251657714539
	.quad	-8628557143114098510
	.quad	3533361486141316317
	.quad	-6174010410465235234
	.quad	-4806670179178130411
	.quad	-3105826994654156138
	.quad	7826720331309500698
	.quad	-8858670899299929442
	.quad	280014188641050032
	.quad	-6461652605697523899
	.quad	-8873354301053463268
	.quad	-3465379738694516970
	.quad	-1868320839462053277
	.quad	-9083391364325154962
	.quad	5749828502977298558
	.quad	-6742553186979055799
	.quad	-2036086408133152611
	.quad	-3816505465296431844
	.quad	6678264026688335045
	.quad	-158945813193151901
	.quad	8347830033360418806
	.quad	-7016870160886801794
	.quad	2911550761636567802
	.quad	-4159401682681114339
	.quad	-5583933584809066056
	.quad	-587566084924005019
	.quad	2243455055843443238
	.quad	-7284757830718584993
	.quad	3708002419115845976
	.quad	-4494261269970843337
	.quad	23317005467419566
	.quad	-1006140569036166268
	.quad	-4582539761593113446
	.quad	-7546366883288685774
	.quad	-558244341782001952
	.quad	-4821272585683469313
	.quad	-5309491445654890344
	.quad	-1414904713676948737
	.quad	-6636864307068612930
	.quad	-7801844473689174817
	.quad	-4148040191917883081
	.quad	-5140619573684080617
	.quad	-5185050239897353852
	.quad	-1814088448677712867
	.quad	-6481312799871692315
	.quad	-8051334308064652398
	.quad	-8662506518347195601
	.quad	-5452481866653427593
	.quad	3006924907348169211
	.quad	-2203916314889396588
	.quad	-853029884242176390
	.quad	-8294976724446954723
	.quad	1772699331562333708
	.quad	-5757034887131305500
	.quad	6827560182880305039
	.quad	-2584607590486743971
	.quad	8534450228600381299
	.quad	-8532908771695296838
	.quad	7639874402088932264
	.quad	-6054449946191733143
	.quad	326470965756389522
	.quad	-2956376414312278525
	.quad	5019774725622874806
	.quad	-8765264286586255934
	.quad	831516194300602802
	.quad	-6344894339805432014
	.quad	-8183976793979022306
	.quad	-3319431906329402113
	.quad	3605087062808385830
	.quad	-8992173969096958177
	.quad	9170708441896323000
	.quad	-6628531442943809817
	.quad	6851699533943015846
	.quad	-3673978285252374367
	.quad	3952938399001381903
	.quad	-9213765455923815836
	.quad	-4446942528265218167
	.quad	-6905520801477381891
	.quad	-946992141904134804
	.quad	-4020214983419339459
	.quad	8039631859474607303
	.quad	-413582710846786420
	.quad	-3785518230938904583
	.quad	-7176018221920323369
	.quad	-60105885123121413
	.quad	-4358336758973016307
	.quad	-75132356403901766
	.quad	-836234930288882479
	.quad	9129456591349898601
	.quad	-7440175859071633406
	.quad	-1211618658047395231
	.quad	-4688533805412153853
	.quad	-6126209340986631942
	.quad	-1248981238337804412
	.quad	-7657761676233289928
	.quad	-7698142301602209614
	.quad	-2480258038432112253
	.quad	-5010991858575374113
	.quad	-7712008566467528220
	.quad	-1652053804791829737
	.quad	8806733365625141341
	.quad	-7950062655635975442
	.quad	-6025006692552756422
	.quad	-5325892301117581398
	.quad	6303799689591218185
	.quad	-2045679357969588844
	.quad	-1343622424865753077
	.quad	-8196078626372074883
	.quad	1466078993672598279
	.quad	-5633412264537705700
	.quad	6444284760518135752
	.quad	-2430079312244744221
	.quad	8055355950647669691
	.quad	-8436328597794046994
	.quad	2728754459941099604
	.quad	-5933724728815170839
	.quad	-5812428961928401302
	.quad	-2805469892591575644
	.quad	1957835834444274180
	.quad	-8670947710510816634
	.quad	-7999724640327104446
	.quad	-6226998619711132888
	.quad	3835402254873283155
	.quad	-3172062256211528206
	.quad	4794252818591603944
	.quad	-8900067937773286985
	.quad	7608094030047140369
	.quad	-6513398903789220827
	.quad	4898431519131537557
	.quad	-3530062611309138130
	.quad	-7712018656367741765
	.quad	-9123818159709293187
	.quad	2097517367411243253
	.quad	-6793086681209228580
	.quad	7233582727691441970
	.quad	-3879672333084147821
	.quad	9041978409614302462
	.quad	-237904397927796872
	.quad	6690786993590490174
	.quad	-7066219276345954901
	.quad	4181741870994056359
	.quad	-4221088077005055722
	.quad	615491320315182544
	.quad	-664674077828931749
	.quad	-8454007886460797627
	.quad	-7332950326284164199
	.quad	3939617107816777291
	.quad	-4554501889427817345
	.quad	-8910536670511192099
	.quad	-1081441343357383777
	.quad	7308573235570561493
	.quad	-7593429867239446717
	.quad	-6961356773836868827
	.quad	-4880101315621920492
	.quad	-8701695967296086034
	.quad	-1488440626100012711
	.quad	-6265433940692719638
	.quad	-7847804418953589800
	.quad	695789805494438130
	.quad	-5198069505264599346
	.quad	869737256868047663
	.quad	-1885900863153361279
	.quad	-8136200465769716230
	.quad	-8096217067111932656
	.quad	-473439272678684740
	.quad	-5508585315462527915
	.quad	4019886927579031980
	.quad	-2274045625900771990
	.quad	-8810199395808373737
	.quad	-8338807543829064350
	.quad	-7812217631593927538
	.quad	-5811823411358942533
	.quad	4069786015789754290
	.quad	-2653093245771290262
	.quad	475546501309804958
	.quad	-8575712306248138270
	.quad	4908902581746016003
	.quad	-6107954364382784934
	.quad	-3087243809672255805
	.quad	-3023256937051093263
	.quad	-8470740780517707660
	.quad	-8807064613298015146
	.quad	-682526969396179383
	.quad	-6397144748195131028
	.quad	-5464844730172612133
	.quad	-3384744916816525881
	.quad	-2219369894288377262
	.quad	-9032994600651410532
	.quad	-1387106183930235789
	.quad	-6679557232386875260
	.quad	2877803288514593168
	.quad	-3737760522056206171
	.quad	3597254110643241460
	.quad	-60514634142869810
	.quad	9108253656731439729
	.quad	-6955350673980375487
	.quad	1080972517029761926
	.quad	-4082502324048081455
	.quad	5962901664714590312
	.quad	-491441886632713915
	.quad	-6381430974388925822
	.quad	-7224680206786528053
	.quad	-8600080377420466543
	.quad	-4419164240055772162
	.quad	7696643601933968437
	.quad	-912269281642327298
	.quad	397432465562684739
	.quad	-7487697328667536418
	.quad	-4363290727450709942
	.quad	-4747935642407032618
	.quad	8380944645968776284
	.quad	-1323233534581402868
	.quad	1252808770606194547
	.quad	-7744549986754458649
	.quad	-8440366555225904216
	.quad	-5069001465015685407
	.quad	7896285879677171346
	.quad	-1724565812842218855
	.quad	-3964700705685699529
	.quad	-7995382660667468640
	.quad	2133748077373825698
	.quad	-5382542307406947896
	.quad	2667185096717282123
	.quad	-2116491865831296966
	.quad	3333981370896602653
	.quad	-8240336443785642460
	.quad	6695424375237764562
	.quad	-5688734536304665171
	.quad	8369280469047205703
	.quad	-2499232151953443560
	.quad	-3373457468973156583
	.quad	-8479549122611984081
	.quad	-9025939945749304721
	.quad	-5987750384837592197
	.quad	7164319141522920715
	.quad	-2873001962619602342
	.quad	4343712908476262990
	.quad	-8713155254278333320
	.quad	7326506586225052273
	.quad	-6279758049420528746
	.quad	9158133232781315341
	.quad	-3238011543348273028
	.quad	2224294504121868368
	.quad	-8941286242233752499
	.quad	-7833187971778608078
	.quad	-6564921784364802720
	.quad	-568112927868484289
	.quad	-3594466212028615495
	.quad	3901544858591782542
	.quad	-9164070410158966541
	.quad	-4479063491021217767
	.quad	-6843401994271320272
	.quad	-5598829363776522209
	.quad	-3942566474411762436
	.quad	-2386850686293264857
	.quad	-316522074587315140
	.quad	1628122660560806833
	.quad	-7115355324258153819
	.quad	-8205795374004271538
	.quad	-4282508136895304370
	.quad	-1033872180650563614
	.quad	-741449152691742558
	.quad	-5904026244240592421
	.quad	-7380934748073420955
	.quad	-5995859411864064215
	.quad	-4614482416664388289
	.quad	1728547772024695539
	.quad	-1156417002403097458
	.quad	-2451001303396518480
	.quad	-7640289654143017767
	.quad	5385653213018257806
	.quad	-4938676049251384305
	.quad	-7102991539009341455
	.quad	-1561659043136842477
	.quad	-8878739423761676819
	.quad	-7893565929601608404
	.quad	3674159897003727796
	.quad	-5255271393574622601
	.quad	4592699871254659745
	.quad	-1957403223540890347
	.quad	1129188820640936778
	.quad	-8140906042354138323
	.quad	3011586022114279438
	.quad	-5564446534515285000
	.quad	8376168546070237202
	.quad	-2343872149716718346
	.quad	-7976533391121755114
	.quad	-8382449121214030822
	.quad	1932195658189984910
	.quad	-5866375383090150624
	.quad	-6808127464117294671
	.quad	-2721283210435300376
	.quad	-3898473311719230434
	.quad	-8618331034163144591
	.quad	9092669226243950738
	.quad	-6161227774276542835
	.quad	-2469221522477225289
	.quad	-3089848699418290639
	.quad	6136845133758244197
	.quad	-8848684464777513506
	.quad	-3082000819042179233
	.quad	-6449169562544503978
	.quad	-8464187042230111945
	.quad	-3449775934753242068
	.quad	3254824252494523781
	.quad	-9073638986861858149
	.quad	-7189106879045698445
	.quad	-6730362715149934782
	.quad	-8986383598807123057
	.quad	-3801267375510030573
	.quad	2602078556773259891
	.quad	-139898200960150313
	.quad	-1359087822460813040
	.quad	-7004965403241175802
	.quad	-849429889038008150
	.quad	-4144520735624081848
	.quad	-5673473379724898091
	.quad	-568964901102714406
	.quad	-2480155706228734710
	.quad	-7273132090830278360
	.quad	-3855940325606653146
	.quad	-4479729095110460046
	.quad	-208239388580928528
	.quad	-987975350460687153
	.quad	-4871985254153548564
	.quad	-7535013621679011327
	.quad	-3044990783845967853
	.quad	-4807081008671376254
	.quad	5417133557047315992
	.quad	-1397165242411832414
	.quad	-2451955090545630818
	.quad	-7790757304148477115
	.quad	-3838314940804713213
	.quad	-5126760611758208489
	.quad	4425478360848884291
	.quad	-1796764746270372707
	.quad	920161932633717460
	.quad	-8040506994060064798
	.quad	2880944217109767365
	.quad	-5438947724147693094
	.quad	-5622191765467566602
	.quad	-2186998636757228463
	.quad	6807318348447705459
	.quad	-8284403175614349646
	.quad	-2662955059861265944
	.quad	-5743817951090549153
	.quad	-7940379843253970334
	.quad	-2568086420435798537
	.quad	8521269269642088699
	.quad	-8522583040413455942
	.quad	-6203421752542164323
	.quad	-6041542782089432023
	.quad	6080780864604458308
	.quad	-2940242459184402125
	.quad	-6234081974526590827
	.quad	-8755180564631333184
	.quad	5327070802775656541
	.quad	-6332289687361778576
	.quad	6658838503469570676
	.quad	-3303676090774835316
	.quad	8323548129336963345
	.quad	-8982326584375353929
	.quad	-4021154456019173717
	.quad	-6616222212041804507
	.quad	-5026443070023967147
	.quad	-3658591746624867729
	.quad	2940318199324816875
	.quad	-9204148869281624187
	.quad	8755227902219092403
	.quad	-6893500068174642330
	.quad	-2891023177508298209
	.quad	-4005189066790915008
	.quad	-8225464990312760665
	.quad	-394800315061255856
	.quad	-5670145219463562927
	.quad	-7164279224554366766
	.quad	7985374283903742931
	.quad	-4343663012265570553
	.quad	758345818024902856
	.quad	-817892746904575288
	.quad	-3663753745896259334
	.quad	-7428711994456441411
	.quad	-9207375118826243940
	.quad	-4674203974643163860
	.quad	-2285846861678029117
	.quad	-1231068949876566920
	.quad	1754377441329851508
	.quad	-7686947121313936181
	.quad	1096485900831157192
	.quad	-4996997883215032323
	.quad	-3241078642388441414
	.quad	-1634561335591402499
	.quad	5172023733869224041
	.quad	-7939129862385708418
	.quad	5538357842881958977
	.quad	-5312226309554747619
	.quad	-2300424733252327086
	.quad	-2028596868516046619
	.quad	6347841120289366950
	.quad	-8185402070463610993
	.quad	6273243709394548296
	.quad	-5620066569652125837
	.quad	3229868618315797466
	.quad	-2413397193637769393
	.quad	-574350245532641071
	.quad	-8425902273664687727
	.quad	-358968903457900670
	.quad	-5920691823653471754
	.quad	8774660907532399971
	.quad	-2789178761139451788
	.quad	1744954097560724156
	.quad	-8660765753353239224
	.quad	-8132775725879323211
	.quad	-6214271173264161126
	.quad	-5554283638921766110
	.quad	-3156152948152813503
	.quad	6892203506629956075
	.quad	-8890124620236590296
	.quad	-2609901835997359309
	.quad	-6500969756868349965
	.quad	1349308723430688768
	.quad	-3514526177658049553
	.quad	-2925050114139026944
	.quad	-9114107888677362827
	.quad	-1828156321336891840
	.quad	-6780948842419315629
	.quad	6938176635183661008
	.quad	-3864500034596756632
	.quad	4061034775552188356
	.quad	-218939024818557886
	.quad	5076293469440235445
	.quad	-7054365918152680535
	.quad	7784369436827535057
	.quad	-4206271379263462765
	.quad	-4104596259247744891
	.quad	-646153205651940552
	.quad	-5130745324059681113
	.align 32
	.type	_ZZN15schubfach_xjb32L12Utoa_2DigitsEPcjE9Digits100, @object
	.size	_ZZN15schubfach_xjb32L12Utoa_2DigitsEPcjE9Digits100, 200
_ZZN15schubfach_xjb32L12Utoa_2DigitsEPcjE9Digits100:
	.ascii	"000102030405060708091011121314151617181920212223242526272829"
	.ascii	"303132333435363738394041424344454647484950515253545556575859"
	.ascii	"606162636465666768697071727374757677787980818283848586878889"
	.ascii	"90919293949596979899"
	.align 32
	.type	_ZZN3xjbL19ComputePow10_DoubleEiE1g, @object
	.size	_ZZN3xjbL19ComputePow10_DoubleEiE1g, 9872
_ZZN3xjbL19ComputePow10_DoubleEiE1g:
	.quad	-38366372719436721
	.quad	2731688931043774331
	.quad	-6941508010590729807
	.quad	8624834609543440813
	.quad	-4065198994811024355
	.quad	-3054014793352862696
	.quad	-469812725086392539
	.quad	5405853545163697438
	.quad	-7211161980820077193
	.quad	5684501474941004851
	.quad	-4402266457597708587
	.quad	2493940825248868160
	.quad	-891147053569747830
	.quad	7729112049988473104
	.quad	-7474495936122174250
	.quad	-9004363024039368022
	.quad	-4731433901725329908
	.quad	2579604275232953684
	.quad	-1302606358729274481
	.quad	3224505344041192105
	.quad	-7731658001846878407
	.quad	8932844867666826922
	.quad	-5052886483881210105
	.quad	-2669001970698630060
	.quad	-1704422086424124727
	.quad	-3336252463373287575
	.quad	-7982792831656159810
	.quad	2526528228819083170
	.quad	-5366805021142811859
	.quad	-6065211750830921845
	.quad	-2096820258001126919
	.quad	1641857348316123501
	.quad	-8228041688891786181
	.quad	-5891368184943504668
	.quad	-5673366092687344822
	.quad	-7364210231179380835
	.quad	-2480021597431793123
	.quad	4629795266307937668
	.quad	-8467542526035952558
	.quad	5199465050656154995
	.quad	-5972742139117552794
	.quad	-2724040723534582064
	.quad	-2854241655469553088
	.quad	-8016736922845615485
	.quad	-8701430062309552536
	.quad	6518754469289960082
	.quad	-6265101559459552766
	.quad	8148443086612450103
	.quad	-3219690930897053053
	.quad	962181821410786820
	.quad	-8929835859451740015
	.quad	-1704479370831952189
	.quad	-6550608805887287114
	.quad	7092772823314835571
	.quad	-3576574988931720989
	.quad	-357406007711231344
	.quad	-9152888395723407474
	.quad	8999993282035256218
	.quad	-6829424476226871438
	.quad	2026619565689294465
	.quad	-3925094576856201394
	.quad	-6690097579743157727
	.quad	-294682202642863838
	.quad	5472436080603216553
	.quad	-7101705404292871755
	.quad	8031958568804398250
	.quad	-4265445736938701790
	.quad	-3795109844276665900
	.quad	-720121152745989333
	.quad	9091170749936331337
	.quad	-7367604748107325189
	.quad	3376138709496513134
	.quad	-4597819916706768583
	.quad	-391512631556746487
	.quad	-1135588877456072824
	.quad	8733981247408842699
	.quad	-7627272076051127371
	.quad	5458738279630526687
	.quad	-4922404076636521310
	.quad	-7011635205744005353
	.quad	-1541319077368263733
	.quad	5070514048102157021
	.quad	-7880853450996246689
	.quad	863228270850154186
	.quad	-5239380795317920458
	.quad	-3532650679864695172
	.quad	-1937539975720012668
	.quad	-9027499368258256869
	.quad	-8128491512466089774
	.quad	-3336344095947716591
	.quad	-5548928372155224313
	.quad	-8782116138362033642
	.quad	-2324474446766642487
	.quad	7469098900757009563
	.quad	-8370325556870233411
	.quad	-2249342214667950879
	.quad	-5851220927660403859
	.quad	6411694268519837209
	.quad	-2702340141148116920
	.quad	-5820440219632367201
	.quad	-8606491615858654931
	.quad	7891439908798240260
	.quad	-6146428501395930760
	.quad	-3970758169284363388
	.quad	-3071349608317525546
	.quad	-351761693178066331
	.quad	-8837122532839535322
	.quad	6697677969404790400
	.quad	-6434717147622031249
	.quad	-851274575098787809
	.quad	-3431710416100151157
	.quad	-1064093218873484761
	.quad	-9062348037703676329
	.quad	8558313775058847833
	.quad	-6716249028702207507
	.quad	6086206200396171887
	.quad	-3783625267450371480
	.quad	-6227300304786948854
	.quad	-117845565885576446
	.quad	-3172439362556298163
	.quad	-6991182506319567135
	.quad	-4288617610811380304
	.quad	-4127292114472071014
	.quad	3862600023340550428
	.quad	-547429124662700864
	.quad	-4395122007679087773
	.quad	-7259672230555269896
	.quad	8782263791269039902
	.quad	-4462904269766699466
	.quad	-7468914334623251739
	.quad	-966944318780986428
	.quad	4498915137003099038
	.quad	-7521869226879198374
	.quad	-6411550076227838909
	.quad	-4790650515171610063
	.quad	5820620459997365076
	.quad	-1376627125537124675
	.quad	-6559282480285457367
	.quad	-7777920981101784778
	.quad	-8711237568605798758
	.quad	-5110715207949843068
	.quad	2946011094524915264
	.quad	-1776707991509915931
	.quad	3682513868156144080
	.quad	-8027971522334779313
	.quad	4607414176811284002
	.quad	-5423278384491086237
	.quad	1147581702586717098
	.quad	-2167411962186469893
	.quad	-3177208890193991531
	.quad	-8272161504007625539
	.quad	7237616480483531101
	.quad	-5728515861582144020
	.quad	-4788037454677749836
	.quad	-2548958808550292121
	.quad	-1373360799919799391
	.quad	-8510628282985014432
	.quad	-858350499949874619
	.quad	-6026599335303880135
	.quad	3538747893490044630
	.quad	-2921563150702462265
	.quad	9035120885289943692
	.quad	-8743505996830120772
	.quad	-5882264492762254952
	.quad	-6317696477610263061
	.quad	-2741144597525430787
	.quad	-3285434578585440922
	.quad	-3426430746906788484
	.quad	-8970925639256982432
	.quad	4776009810824339054
	.quad	-6601971030643840136
	.quad	5970012263530423817
	.quad	-3640777769877412266
	.quad	7462515329413029772
	.quad	-9193015133814464522
	.quad	52386062455755703
	.quad	-6879582898840692749
	.quad	-9157889458785081179
	.quad	-3987792605123478032
	.quad	6999382250228200142
	.quad	-373054737976959636
	.quad	8749227812785250178
	.quad	-7150688238876681629
	.quad	-3755104653863994447
	.quad	-4326674280168464132
	.quad	-4693880817329993059
	.quad	-796656831783192261
	.quad	-1255665003235103419
	.quad	-7415439547505577019
	.quad	8438581409832836171
	.quad	-4657613415954583370
	.quad	-3286831292991118498
	.quad	-1210330751515841308
	.quad	-8720225134666286027
	.quad	-7673985747338482674
	.quad	-3144297699952734815
	.quad	-4980796165745715438
	.quad	-8542058143368306422
	.quad	-1614309188754756393
	.quad	3157485376071780684
	.quad	-7926472270612804602
	.quad	8890957387685944784
	.quad	-5296404319838617848
	.quad	1890324697752655171
	.quad	-2008819381370884406
	.quad	2362905872190818964
	.quad	-8173041140997884610
	.quad	6088502188546649757
	.quad	-5604615407819967859
	.quad	-1612744301171463612
	.quad	-2394083241347571919
	.quad	7207441660390446293
	.quad	-8413831053483314306
	.quad	-2412877989897052923
	.quad	-5905602798426754978
	.quad	-7627783505798704058
	.quad	-2770317479606055818
	.quad	4300328673033783640
	.quad	-8648977452394866743
	.quad	-1923980597781273129
	.quad	-6199535797066195524
	.quad	6818396289628184397
	.quad	-3137733727905356501
	.quad	8522995362035230496
	.quad	-8878612607581929669
	.quad	3021029092058325108
	.quad	-6486579741050024183
	.quad	-835399653354481519
	.quad	-3496538657885142324
	.quad	8179122470161673909
	.quad	-9102865688819295809
	.quad	-4111420493003729615
	.quad	-6766896092596731857
	.quad	-5139275616254662019
	.quad	-3846934097318526917
	.quad	-6424094520318327523
	.quad	-196981603220770742
	.quad	-8030118150397909404
	.quad	-7040642529654063570
	.quad	-7324666853212387329
	.quad	-4189117143640191558
	.quad	4679224488766679550
	.quad	-624710411122851544
	.quad	-3374341425896426371
	.quad	-7307973034592864071
	.quad	-9026492418826348337
	.quad	-4523280274813692185
	.quad	-2059743486678159614
	.quad	-1042414325089727327
	.quad	-2574679358347699518
	.quad	-7569037980822161435
	.quad	3002511419460075706
	.quad	-4849611457600313890
	.quad	8364825292752482536
	.quad	-1450328303573004458
	.quad	1232659579085827362
	.quad	-7823984217374209643
	.quad	-3841273781498745803
	.quad	-5168294253290374149
	.quad	4421779809981343555
	.quad	-1848681798185579782
	.quad	915538744049291539
	.quad	-8072955151507069220
	.quad	5183897733458195116
	.quad	-5479507920956448621
	.quad	6479872166822743895
	.quad	-2237698882768172872
	.quad	3488154190101041965
	.quad	-8316090829371189901
	.quad	2180096368813151228
	.quad	-5783427518286599473
	.quad	-1886565557410948869
	.quad	-2617598379430861437
	.quad	-2358206946763686086
	.quad	-8553528014785370254
	.quad	7749492695127472004
	.quad	-6080224000054324913
	.quad	463493832054564197
	.quad	-2988593981640518238
	.quad	-4032318728359182658
	.quad	-8785400266166405755
	.quad	-4826042214438183113
	.quad	-6370064314280619289
	.quad	3190819268807046917
	.quad	-3350894374423386208
	.quad	-623161932418579258
	.quad	-9011838011655698236
	.quad	-7307005235402693892
	.quad	-6653111496142234891
	.quad	-4522070525825979461
	.quad	-3704703351750405709
	.quad	3570783879572301481
	.quad	-19193171260619233
	.quad	-148206168962011053
	.quad	-6929524759678968877
	.quad	-92628855601256908
	.quad	-4050219931171323192
	.quad	-115786069501571135
	.quad	-451088895536766085
	.quad	4466953431550423985
	.quad	-7199459587351560659
	.quad	486002885505321039
	.quad	-4387638465762062920
	.quad	5219189625309039203
	.quad	-872862063775190746
	.quad	6523987031636299003
	.quad	-7463067817500576073
	.quad	-534194123654701027
	.quad	-4717148753448332187
	.quad	-667742654568376284
	.quad	-1284749923383027329
	.quad	8388693718644305453
	.quad	-7720497729755473937
	.quad	-6286281471915778851
	.quad	-5038936143766954517
	.quad	-7857851839894723564
	.quad	-1686984161281305242
	.quad	8624429273841147160
	.quad	-7971894128441897632
	.quad	778582277723329071
	.quad	-5353181642124984136
	.quad	973227847154161339
	.quad	-2079791034228842266
	.quad	1216534808942701674
	.quad	-8217398424034108273
	.quad	-3851351762838199358
	.quad	-5660062011615247437
	.quad	-4814189703547749197
	.quad	-2463391496091671392
	.quad	-6017737129434686497
	.quad	-8457148712698376476
	.quad	7768129340171790700
	.quad	-5959749872445582691
	.quad	-8736582398494813241
	.quad	-2838001322129590460
	.quad	-1697355961263740744
	.quad	-8691279853972075893
	.quad	1244995533423855987
	.quad	-6252413799037706963
	.quad	-3055441601647567920
	.quad	-3203831230369745799
	.quad	5404070034795315908
	.quad	-8919923546622172981
	.quad	-3539985255894009413
	.quad	-6538218414850328322
	.quad	-4424981569867511767
	.quad	-3561087000135522498
	.quad	8303831092947774003
	.quad	-9143208402725783417
	.quad	578208414664970848
	.quad	-6817324484979841368
	.quad	-3888925500096174344
	.quad	-3909969587797413806
	.quad	-249470856692830026
	.quad	-275775966319379353
	.quad	-4923524589293425437
	.quad	-7089889006590693952
	.quad	-3077202868308390898
	.quad	-4250675239810979535
	.quad	765182433041899282
	.quad	-701658031336336515
	.quad	5568164059729762006
	.quad	-7356065297226292178
	.quad	5785945546544795206
	.quad	-4583395603105477319
	.quad	-1990940103673781801
	.quad	-1117558485454458744
	.quad	6734696907262548557
	.quad	-7616003081050118571
	.quad	4209185567039092848
	.quad	-4908317832885260310
	.quad	-8573576096483297652
	.quad	-1523711272679187483
	.quad	3118087934678041647
	.quad	-7869848573065574033
	.quad	4254647968387469982
	.quad	-5225624697904579637
	.quad	706623942056949573
	.quad	-1920344853953336643
	.quad	-3728406090856200938
	.quad	-8117744561361917258
	.quad	-6941939825212513490
	.quad	-5535494683275008668
	.quad	5157633273766521850
	.quad	-2307682335666372931
	.quad	6447041592208152312
	.quad	-8359830487432564938
	.quad	6335244004343789147
	.quad	-5838102090863318269
	.quad	-1304317031425039374
	.quad	-2685941595151759932
	.quad	-1630396289281299218
	.quad	-8596242524610931813
	.quad	1286845328412881941
	.quad	-6133617137336276863
	.quad	-3003129357911285478
	.quad	-3055335403242958174
	.quad	5469460339465668960
	.quad	-8827113654667930715
	.quad	8030098730593431004
	.quad	-6422206049907525490
	.quad	-3797434642040374957
	.quad	-3416071543957018958
	.quad	9088264752731695016
	.quad	-9052573742614218705
	.quad	-8154892584824854327
	.quad	-6704031159840385477
	.quad	8253128342678483707
	.quad	-3768352931373093942
	.quad	5704724409920716730
	.quad	-98755145788979524
	.quad	-2092466524453879895
	.quad	-6979250993759194058
	.quad	998051431430019018
	.quad	-4112377723771604669
	.quad	-7975807747567252036
	.quad	-528786136287117932
	.quad	8476984389250486571
	.quad	-7248020362820530564
	.quad	-3925256793573221701
	.quad	-4448339435098275301
	.quad	-294884973539139223
	.quad	-948738275445456222
	.quad	-368606216923924028
	.quad	-7510490449794491995
	.quad	-2536221894791146469
	.quad	-4776427043815727089
	.quad	6053094668365842721
	.quad	-1358847786342270957
	.quad	2954682317029915497
	.quad	-7766808894105001205
	.quad	-459166561069996766
	.quad	-5096825099203863602
	.quad	-573958201337495958
	.quad	-1759345355577441598
	.quad	-5329133770099257851
	.quad	-8017119874876982855
	.quad	-5636551615525730109
	.quad	-5409713825168840664
	.quad	2177682517447613172
	.quad	-2150456263033662926
	.quad	2722103146809516465
	.quad	-8261564192037121185
	.quad	6313000485183335695
	.quad	-5715269221619013577
	.quad	3279564588051781714
	.quad	-2532400508596379068
	.quad	-512230283362660762
	.quad	-8500279345513818773
	.quad	1985699082112030976
	.quad	-6013663163464885563
	.quad	-2129562165787349184
	.quad	-2905392935903719049
	.quad	6561419329620589328
	.quad	-8733399612580906262
	.quad	-7428327965055601430
	.quad	-6305063497298744923
	.quad	4549648098962661925
	.quad	-3269643353196043250
	.quad	-8147997931578836306
	.quad	-8961056123388608887
	.quad	1825030320404309165
	.quad	-6589634135808373205
	.quad	6892973918932774360
	.quad	-3625356651333078602
	.quad	4004531380238580046
	.quad	-9183376934724255983
	.quad	-2108853905778275375
	.quad	-6867535149977932074
	.quad	6587304654631931589
	.quad	-3972732919045027189
	.quad	-989241218564861322
	.quad	-354230130378896082
	.quad	-1236551523206076653
	.quad	-7138922859127891907
	.quad	6144684325637283948
	.quad	-4311967555482476980
	.quad	-6154202648235558777
	.quad	-778273425925708321
	.quad	-3081067291867060567
	.quad	-7403949918844649557
	.quad	-1925667057416912854
	.quad	-4643251380128424042
	.quad	-2407083821771141068
	.quad	-1192378206733142148
	.quad	-7620540795641314239
	.quad	-7662765406849295699
	.quad	-2456994988062127447
	.quad	-4966770740134231719
	.quad	6152128301777116499
	.quad	-1596777406740401745
	.quad	-6144897678060768089
	.quad	-7915514906853832947
	.quad	-3840561048787980055
	.quad	-5282707615139903279
	.quad	4422670725869800739
	.quad	-1991698500497491195
	.quad	-8306719647944912789
	.quad	-8162340590452013853
	.quad	8643358275316593219
	.quad	-5591239719637629412
	.quad	6192511825718353620
	.quad	-2377363631119648861
	.quad	7740639782147942025
	.quad	-8403381297090862394
	.quad	2532056854628769814
	.quad	-5892540602936190089
	.quad	-6058300968568813541
	.quad	-2753989735242849707
	.quad	-7572876210711016926
	.quad	-8638772612167862923
	.quad	9102010423587778133
	.quad	-6186779746782440750
	.quad	-2457545025797441046
	.quad	-3121788665050663033
	.quad	-7683617300674189211
	.quad	-8868646943297746252
	.quad	-4802260812921368257
	.quad	-6474122660694794911
	.quad	-1391139997724322417
	.quad	-3480967307441105734
	.quad	7484447039699372787
	.quad	-9093133594791772940
	.quad	-9157278655470055720
	.quad	-6754730975062328271
	.quad	-6834912300910181746
	.quad	-3831727700400522434
	.quad	679731660717048625
	.quad	-177973607073265139
	.quad	-8373707460958465027
	.quad	-7028762532061872568
	.quad	8601490892183123070
	.quad	-4174267146649952806
	.quad	-7694880458480647778
	.quad	-606147914885053103
	.quad	4216457482181353989
	.quad	-7296371474444240046
	.quad	-4282243101277735613
	.quad	-4508778324627912153
	.quad	8482254178684994196
	.quad	-1024286887357502287
	.quad	5991131704928854841
	.quad	-7557708332239520786
	.quad	-3173071712060547580
	.quad	-4835449396872013078
	.quad	-8578025658503072379
	.quad	-1432625727662628443
	.quad	3112525982153323238
	.quad	-7812920107430224633
	.quad	4251171748059520976
	.quad	-5154464115860392887
	.quad	702278666647013315
	.quad	-1831394126398103205
	.quad	5489534351736154548
	.quad	-8062150356639896359
	.quad	1125115960621402641
	.quad	-5466001927372482545
	.quad	6018080969204141205
	.quad	-2220816390788215277
	.quad	2910915193077788602
	.quad	-8305539271883716405
	.quad	-486521013540076076
	.quad	-5770238071427257602
	.quad	-608151266925095095
	.quad	-2601111570856684098
	.quad	-5371875102083756772
	.quad	-8543223759426509417
	.quad	3560107088838733873
	.quad	-6067343680855748868
	.quad	-161552157378970562
	.quad	-2972493582642298180
	.quad	4409745821703674701
	.quad	-8775337516792518219
	.quad	-6467280898289979120
	.quad	-6357485877563259869
	.quad	1139270913992301908
	.quad	-3335171328526686933
	.quad	-3187597375937010519
	.quad	-9002011107970261189
	.quad	7231123676894144234
	.quad	-6640827866535438582
	.quad	4427218577690292388
	.quad	-3689348814741910324
	.quad	-3689348814741910323
	.quad	-9223372036854775808
	.quad	0
	.quad	-6917529027641081856
	.quad	0
	.quad	-4035225266123964416
	.quad	0
	.quad	-432345564227567616
	.quad	0
	.quad	-7187745005283311616
	.quad	0
	.quad	-4372995238176751616
	.quad	0
	.quad	-854558029293551616
	.quad	0
	.quad	-7451627795949551616
	.quad	0
	.quad	-4702848726509551616
	.quad	0
	.quad	-1266874889709551616
	.quad	0
	.quad	-7709325833709551616
	.quad	0
	.quad	-5024971273709551616
	.quad	0
	.quad	-1669528073709551616
	.quad	0
	.quad	-7960984073709551616
	.quad	0
	.quad	-5339544073709551616
	.quad	0
	.quad	-2062744073709551616
	.quad	0
	.quad	-8206744073709551616
	.quad	0
	.quad	-5646744073709551616
	.quad	0
	.quad	-2446744073709551616
	.quad	0
	.quad	-8446744073709551616
	.quad	0
	.quad	-5946744073709551616
	.quad	0
	.quad	-2821744073709551616
	.quad	0
	.quad	-8681119073709551616
	.quad	0
	.quad	-6239712823709551616
	.quad	0
	.quad	-3187955011209551616
	.quad	0
	.quad	-8910000909647051616
	.quad	0
	.quad	-6525815118631426616
	.quad	0
	.quad	-3545582879861895366
	.quad	0
	.quad	-9133518327554766460
	.quad	4611686018427387904
	.quad	-6805211891016070171
	.quad	5764607523034234880
	.quad	-3894828845342699810
	.quad	-6629298651489370112
	.quad	-256850038250986858
	.quad	5548434740920451072
	.quad	-7078060301547948643
	.quad	-1143914305352105984
	.quad	-4235889358507547899
	.quad	7793479155164643328
	.quad	-683175679707046970
	.quad	-4093209111326359552
	.quad	-7344513827457986212
	.quad	4359273333062107136
	.quad	-4568956265895094861
	.quad	5449091666327633920
	.quad	-1099509313941480672
	.quad	2199678564482154496
	.quad	-7604722348854507276
	.quad	1374799102801346560
	.quad	-4894216917640746191
	.quad	1718498878501683200
	.quad	-1506085128623544835
	.quad	6759809616554491904
	.quad	-7858832233030797378
	.quad	6530724019560251392
	.quad	-5211854272861108819
	.quad	-1059967012404461568
	.quad	-1903131822648998119
	.quad	7898413271349198848
	.quad	-8106986416796705681
	.quad	-1981020733047832576
	.quad	-5522047002568494197
	.quad	-2476275916309790720
	.quad	-2290872734783229842
	.quad	-3095344895387238400
	.quad	-8349324486880600507
	.quad	4982938468024057856
	.quad	-5824969590173362730
	.quad	-7606384970252091392
	.quad	-2669525969289315508
	.quad	4327076842467049472
	.quad	-8585982758446904049
	.quad	-6518949010312869888
	.quad	-6120792429631242157
	.quad	-8148686262891087360
	.quad	-3039304518611664792
	.quad	8260886245095692416
	.quad	-8817094351773372351
	.quad	5163053903184807760
	.quad	-6409681921289327535
	.quad	-7381240676301154012
	.quad	-3400416383184271515
	.quad	-3178808521666707
	.quad	-9042789267131251553
	.quad	-4613672773753429595
	.quad	-6691800565486676537
	.quad	-5767090967191786994
	.quad	-3753064688430957767
	.quad	-7208863708989733743
	.quad	-79644842111309304
	.quad	212292400617608629
	.quad	-6967307053960650171
	.quad	132682750386005393
	.quad	-4097447799023424810
	.quad	4777539456409894646
	.quad	-510123730351893109
	.quad	-3251447716342407501
	.quad	-7236356359111015049
	.quad	7191217214140771120
	.quad	-4433759430461380907
	.quad	4377335499248575996
	.quad	-930513269649338230
	.quad	-8363388681221443717
	.quad	-7499099821171918250
	.quad	-7532960934977096275
	.quad	-4762188758037509908
	.quad	4418856886560793368
	.quad	-1341049929119499481
	.quad	5523571108200991710
	.quad	-7755685233340769032
	.quad	-8076983103442849941
	.quad	-5082920523248573386
	.quad	-5484542860876174523
	.quad	-1741964635633328828
	.quad	6979379479186945559
	.quad	-8006256924911912374
	.quad	-4861259862362934834
	.quad	-5396135137712502563
	.quad	7758483227328495170
	.quad	-2133482903713240300
	.quad	-4136954021121544750
	.quad	-8250955842461857044
	.quad	-279753253987271517
	.quad	-5702008784649933400
	.quad	4261994450943298508
	.quad	-2515824962385028846
	.quad	5327493063679123135
	.quad	-8489919629131724885
	.quad	7941369183226839864
	.quad	-6000713517987268202
	.quad	5315025460606161925
	.quad	-2889205879056697349
	.quad	-2579590211097073401
	.quad	-8723282702051517699
	.quad	7611128154919104932
	.quad	-6292417359137009220
	.quad	-4321147861633282547
	.quad	-3253835680493873621
	.quad	-789748808614215279
	.quad	-8951176327949752869
	.quad	8729779031470891259
	.quad	-6577284391509803182
	.quad	6300537770911226169
	.quad	-3609919470959866074
	.quad	-1347699823215743097
	.quad	-9173728696990998152
	.quad	6075216638131242421
	.quad	-6855474852811359786
	.quad	7594020797664053026
	.quad	-3957657547586811828
	.quad	269153960225290474
	.quad	-335385916056126881
	.quad	336442450281613092
	.quad	-7127145225176161157
	.quad	7127805559067090039
	.quad	-4297245513042813542
	.quad	4298070930406474645
	.quad	-759870872876129024
	.quad	-3850783373846682502
	.quad	-7392448323188662496
	.quad	9122475437414293196
	.quad	-4628874385558440216
	.quad	-7043649776941685121
	.quad	-1174406963520662366
	.quad	-4192876202749718497
	.quad	-7651533379841495835
	.quad	-4926390635932268013
	.quad	-4952730706374481889
	.quad	3065383741939440792
	.quad	-1579227364540714458
	.quad	-779956341003086914
	.quad	-7904546130479028392
	.quad	6430056314514152535
	.quad	-5268996644671397586
	.quad	8037570393142690669
	.quad	-1974559787411859078
	.quad	823590954573587528
	.quad	-8151628894773493780
	.quad	5126430365035880109
	.quad	-5577850100039479321
	.quad	6408037956294850136
	.quad	-2360626606621961247
	.quad	3398361426941174766
	.quad	-8392920656779807636
	.quad	-4793553135802847627
	.quad	-5879464802547371641
	.quad	-1380255401326171630
	.quad	-2737644984756826647
	.quad	-1725319251657714538
	.quad	-8628557143114098510
	.quad	3533361486141316318
	.quad	-6174010410465235234
	.quad	-4806670179178130410
	.quad	-3105826994654156138
	.quad	7826720331309500699
	.quad	-8858670899299929442
	.quad	280014188641050033
	.quad	-6461652605697523899
	.quad	-8873354301053463267
	.quad	-3465379738694516970
	.quad	-1868320839462053276
	.quad	-9083391364325154962
	.quad	5749828502977298559
	.quad	-6742553186979055799
	.quad	-2036086408133152610
	.quad	-3816505465296431844
	.quad	6678264026688335046
	.quad	-158945813193151901
	.quad	8347830033360418807
	.quad	-7016870160886801794
	.quad	2911550761636567803
	.quad	-4159401682681114339
	.quad	-5583933584809066055
	.quad	-587566084924005019
	.quad	2243455055843443239
	.quad	-7284757830718584993
	.quad	3708002419115845977
	.quad	-4494261269970843337
	.quad	23317005467419567
	.quad	-1006140569036166268
	.quad	-4582539761593113445
	.quad	-7546366883288685774
	.quad	-558244341782001951
	.quad	-4821272585683469313
	.quad	-5309491445654890343
	.quad	-1414904713676948737
	.quad	-6636864307068612929
	.quad	-7801844473689174817
	.quad	-4148040191917883080
	.quad	-5140619573684080617
	.quad	-5185050239897353851
	.quad	-1814088448677712867
	.quad	-6481312799871692314
	.quad	-8051334308064652398
	.quad	-8662506518347195600
	.quad	-5452481866653427593
	.quad	3006924907348169212
	.quad	-2203916314889396588
	.quad	-853029884242176389
	.quad	-8294976724446954723
	.quad	1772699331562333709
	.quad	-5757034887131305500
	.quad	6827560182880305040
	.quad	-2584607590486743971
	.quad	8534450228600381300
	.quad	-8532908771695296838
	.quad	7639874402088932265
	.quad	-6054449946191733143
	.quad	326470965756389523
	.quad	-2956376414312278525
	.quad	5019774725622874807
	.quad	-8765264286586255934
	.quad	831516194300602803
	.quad	-6344894339805432014
	.quad	-8183976793979022305
	.quad	-3319431906329402113
	.quad	3605087062808385831
	.quad	-8992173969096958177
	.quad	9170708441896323001
	.quad	-6628531442943809817
	.quad	6851699533943015847
	.quad	-3673978285252374367
	.quad	3952938399001381904
	.quad	-9213765455923815836
	.quad	-4446942528265218166
	.quad	-6905520801477381891
	.quad	-946992141904134803
	.quad	-4020214983419339459
	.quad	8039631859474607304
	.quad	-413582710846786420
	.quad	-3785518230938904582
	.quad	-7176018221920323369
	.quad	-60105885123121412
	.quad	-4358336758973016307
	.quad	-75132356403901765
	.quad	-836234930288882479
	.quad	9129456591349898602
	.quad	-7440175859071633406
	.quad	-1211618658047395230
	.quad	-4688533805412153853
	.quad	-6126209340986631941
	.quad	-1248981238337804412
	.quad	-7657761676233289927
	.quad	-7698142301602209614
	.quad	-2480258038432112252
	.quad	-5010991858575374113
	.quad	-7712008566467528219
	.quad	-1652053804791829737
	.quad	8806733365625141342
	.quad	-7950062655635975442
	.quad	-6025006692552756421
	.quad	-5325892301117581398
	.quad	6303799689591218186
	.quad	-2045679357969588844
	.quad	-1343622424865753076
	.quad	-8196078626372074883
	.quad	1466078993672598280
	.quad	-5633412264537705700
	.quad	6444284760518135753
	.quad	-2430079312244744221
	.quad	8055355950647669692
	.quad	-8436328597794046994
	.quad	2728754459941099605
	.quad	-5933724728815170839
	.quad	-5812428961928401301
	.quad	-2805469892591575644
	.quad	1957835834444274181
	.quad	-8670947710510816634
	.quad	-7999724640327104445
	.quad	-6226998619711132888
	.quad	3835402254873283156
	.quad	-3172062256211528206
	.quad	4794252818591603945
	.quad	-8900067937773286985
	.quad	7608094030047140370
	.quad	-6513398903789220827
	.quad	4898431519131537558
	.quad	-3530062611309138130
	.quad	-7712018656367741764
	.quad	-9123818159709293187
	.quad	2097517367411243254
	.quad	-6793086681209228580
	.quad	7233582727691441971
	.quad	-3879672333084147821
	.quad	9041978409614302463
	.quad	-237904397927796872
	.quad	6690786993590490175
	.quad	-7066219276345954901
	.quad	4181741870994056360
	.quad	-4221088077005055722
	.quad	615491320315182545
	.quad	-664674077828931749
	.quad	-8454007886460797626
	.quad	-7332950326284164199
	.quad	3939617107816777292
	.quad	-4554501889427817345
	.quad	-8910536670511192098
	.quad	-1081441343357383777
	.quad	7308573235570561494
	.quad	-7593429867239446717
	.quad	-6961356773836868826
	.quad	-4880101315621920492
	.quad	-8701695967296086033
	.quad	-1488440626100012711
	.quad	-6265433940692719637
	.quad	-7847804418953589800
	.quad	695789805494438131
	.quad	-5198069505264599346
	.quad	869737256868047664
	.quad	-1885900863153361279
	.quad	-8136200465769716229
	.quad	-8096217067111932656
	.quad	-473439272678684739
	.quad	-5508585315462527915
	.quad	4019886927579031981
	.quad	-2274045625900771990
	.quad	-8810199395808373736
	.quad	-8338807543829064350
	.quad	-7812217631593927537
	.quad	-5811823411358942533
	.quad	4069786015789754291
	.quad	-2653093245771290262
	.quad	475546501309804959
	.quad	-8575712306248138270
	.quad	4908902581746016004
	.quad	-6107954364382784934
	.quad	-3087243809672255804
	.quad	-3023256937051093263
	.quad	-8470740780517707659
	.quad	-8807064613298015146
	.quad	-682526969396179382
	.quad	-6397144748195131028
	.quad	-5464844730172612132
	.quad	-3384744916816525881
	.quad	-2219369894288377261
	.quad	-9032994600651410532
	.quad	-1387106183930235788
	.quad	-6679557232386875260
	.quad	2877803288514593169
	.quad	-3737760522056206171
	.quad	3597254110643241461
	.quad	-60514634142869810
	.quad	9108253656731439730
	.quad	-6955350673980375487
	.quad	1080972517029761927
	.quad	-4082502324048081455
	.quad	5962901664714590313
	.quad	-491441886632713915
	.quad	-6381430974388925821
	.quad	-7224680206786528053
	.quad	-8600080377420466542
	.quad	-4419164240055772162
	.quad	7696643601933968438
	.quad	-912269281642327298
	.quad	397432465562684740
	.quad	-7487697328667536418
	.quad	-4363290727450709941
	.quad	-4747935642407032618
	.quad	8380944645968776285
	.quad	-1323233534581402868
	.quad	1252808770606194548
	.quad	-7744549986754458649
	.quad	-8440366555225904215
	.quad	-5069001465015685407
	.quad	7896285879677171347
	.quad	-1724565812842218855
	.quad	-3964700705685699528
	.quad	-7995382660667468640
	.quad	2133748077373825699
	.quad	-5382542307406947896
	.quad	2667185096717282124
	.quad	-2116491865831296966
	.quad	3333981370896602654
	.quad	-8240336443785642460
	.quad	6695424375237764563
	.quad	-5688734536304665171
	.quad	8369280469047205704
	.quad	-2499232151953443560
	.quad	-3373457468973156582
	.quad	-8479549122611984081
	.quad	-9025939945749304720
	.quad	-5987750384837592197
	.quad	7164319141522920716
	.quad	-2873001962619602342
	.quad	4343712908476262991
	.quad	-8713155254278333320
	.quad	7326506586225052274
	.quad	-6279758049420528746
	.quad	9158133232781315342
	.quad	-3238011543348273028
	.quad	2224294504121868369
	.quad	-8941286242233752499
	.quad	-7833187971778608077
	.quad	-6564921784364802720
	.quad	-568112927868484288
	.quad	-3594466212028615495
	.quad	3901544858591782543
	.quad	-9164070410158966541
	.quad	-4479063491021217766
	.quad	-6843401994271320272
	.quad	-5598829363776522208
	.quad	-3942566474411762436
	.quad	-2386850686293264856
	.quad	-316522074587315140
	.quad	1628122660560806834
	.quad	-7115355324258153819
	.quad	-8205795374004271537
	.quad	-4282508136895304370
	.quad	-1033872180650563613
	.quad	-741449152691742558
	.quad	-5904026244240592420
	.quad	-7380934748073420955
	.quad	-5995859411864064214
	.quad	-4614482416664388289
	.quad	1728547772024695540
	.quad	-1156417002403097458
	.quad	-2451001303396518479
	.quad	-7640289654143017767
	.quad	5385653213018257807
	.quad	-4938676049251384305
	.quad	-7102991539009341454
	.quad	-1561659043136842477
	.quad	-8878739423761676818
	.quad	-7893565929601608404
	.quad	3674159897003727797
	.quad	-5255271393574622601
	.quad	4592699871254659746
	.quad	-1957403223540890347
	.quad	1129188820640936779
	.quad	-8140906042354138323
	.quad	3011586022114279439
	.quad	-5564446534515285000
	.quad	8376168546070237203
	.quad	-2343872149716718346
	.quad	-7976533391121755113
	.quad	-8382449121214030822
	.quad	1932195658189984911
	.quad	-5866375383090150624
	.quad	-6808127464117294670
	.quad	-2721283210435300376
	.quad	-3898473311719230433
	.quad	-8618331034163144591
	.quad	9092669226243950739
	.quad	-6161227774276542835
	.quad	-2469221522477225288
	.quad	-3089848699418290639
	.quad	6136845133758244198
	.quad	-8848684464777513506
	.quad	-3082000819042179232
	.quad	-6449169562544503978
	.quad	-8464187042230111944
	.quad	-3449775934753242068
	.quad	3254824252494523782
	.quad	-9073638986861858149
	.quad	-7189106879045698444
	.quad	-6730362715149934782
	.quad	-8986383598807123056
	.quad	-3801267375510030573
	.quad	2602078556773259892
	.quad	-139898200960150313
	.quad	-1359087822460813039
	.quad	-7004965403241175802
	.quad	-849429889038008149
	.quad	-4144520735624081848
	.quad	-5673473379724898090
	.quad	-568964901102714406
	.quad	-2480155706228734709
	.quad	-7273132090830278360
	.quad	-3855940325606653145
	.quad	-4479729095110460046
	.quad	-208239388580928527
	.quad	-987975350460687153
	.quad	-4871985254153548563
	.quad	-7535013621679011327
	.quad	-3044990783845967852
	.quad	-4807081008671376254
	.quad	5417133557047315993
	.quad	-1397165242411832414
	.quad	-2451955090545630817
	.quad	-7790757304148477115
	.quad	-3838314940804713212
	.quad	-5126760611758208489
	.quad	4425478360848884292
	.quad	-1796764746270372707
	.quad	920161932633717461
	.quad	-8040506994060064798
	.quad	2880944217109767366
	.quad	-5438947724147693094
	.quad	-5622191765467566601
	.quad	-2186998636757228463
	.quad	6807318348447705460
	.quad	-8284403175614349646
	.quad	-2662955059861265943
	.quad	-5743817951090549153
	.quad	-7940379843253970333
	.quad	-2568086420435798537
	.quad	8521269269642088700
	.quad	-8522583040413455942
	.quad	-6203421752542164322
	.quad	-6041542782089432023
	.quad	6080780864604458309
	.quad	-2940242459184402125
	.quad	-6234081974526590826
	.quad	-8755180564631333184
	.quad	5327070802775656542
	.quad	-6332289687361778576
	.quad	6658838503469570677
	.quad	-3303676090774835316
	.quad	8323548129336963346
	.quad	-8982326584375353929
	.quad	-4021154456019173716
	.quad	-6616222212041804507
	.quad	-5026443070023967146
	.quad	-3658591746624867729
	.quad	2940318199324816876
	.quad	-9204148869281624187
	.quad	8755227902219092404
	.quad	-6893500068174642330
	.quad	-2891023177508298208
	.quad	-4005189066790915008
	.quad	-8225464990312760664
	.quad	-394800315061255856
	.quad	-5670145219463562926
	.quad	-7164279224554366766
	.quad	7985374283903742932
	.quad	-4343663012265570553
	.quad	758345818024902857
	.quad	-817892746904575288
	.quad	-3663753745896259333
	.quad	-7428711994456441411
	.quad	-9207375118826243939
	.quad	-4674203974643163860
	.quad	-2285846861678029116
	.quad	-1231068949876566920
	.quad	1754377441329851509
	.quad	-7686947121313936181
	.quad	1096485900831157193
	.quad	-4996997883215032323
	.quad	-3241078642388441413
	.quad	-1634561335591402499
	.quad	5172023733869224042
	.quad	-7939129862385708418
	.quad	5538357842881958978
	.quad	-5312226309554747619
	.quad	-2300424733252327085
	.quad	-2028596868516046619
	.quad	6347841120289366951
	.quad	-8185402070463610993
	.quad	6273243709394548297
	.quad	-5620066569652125837
	.quad	3229868618315797467
	.quad	-2413397193637769393
	.quad	-574350245532641070
	.quad	-8425902273664687727
	.quad	-358968903457900669
	.quad	-5920691823653471754
	.quad	8774660907532399972
	.quad	-2789178761139451788
	.quad	1744954097560724157
	.quad	-8660765753353239224
	.quad	-8132775725879323210
	.quad	-6214271173264161126
	.quad	-5554283638921766109
	.quad	-3156152948152813503
	.quad	6892203506629956076
	.quad	-8890124620236590296
	.quad	-2609901835997359308
	.quad	-6500969756868349965
	.quad	1349308723430688769
	.quad	-3514526177658049553
	.quad	-2925050114139026943
	.quad	-9114107888677362827
	.quad	-1828156321336891839
	.quad	-6780948842419315629
	.quad	6938176635183661009
	.quad	-3864500034596756632
	.quad	4061034775552188357
	.quad	-218939024818557886
	.quad	5076293469440235446
	.quad	-7054365918152680535
	.quad	7784369436827535058
	.align 32
	.type	_ZZN12schubfach_32L12Utoa_2DigitsEPcjE9Digits100, @object
	.size	_ZZN12schubfach_32L12Utoa_2DigitsEPcjE9Digits100, 200
_ZZN12schubfach_32L12Utoa_2DigitsEPcjE9Digits100:
	.ascii	"000102030405060708091011121314151617181920212223242526272829"
	.ascii	"303132333435363738394041424344454647484950515253545556575859"
	.ascii	"606162636465666768697071727374757677787980818283848586878889"
	.ascii	"90919293949596979899"
	.align 32
	.type	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g, @object
	.size	_ZZN12schubfach_32L19ComputePow10_SingleEiE1g, 616
_ZZN12schubfach_32L19ComputePow10_SingleEiE1g:
	.quad	-9093133594791772939
	.quad	-6754730975062328270
	.quad	-3831727700400522433
	.quad	-177973607073265138
	.quad	-7028762532061872567
	.quad	-4174267146649952805
	.quad	-606147914885053102
	.quad	-7296371474444240045
	.quad	-4508778324627912152
	.quad	-1024286887357502286
	.quad	-7557708332239520785
	.quad	-4835449396872013077
	.quad	-1432625727662628442
	.quad	-7812920107430224632
	.quad	-5154464115860392886
	.quad	-1831394126398103204
	.quad	-8062150356639896358
	.quad	-5466001927372482544
	.quad	-2220816390788215276
	.quad	-8305539271883716404
	.quad	-5770238071427257601
	.quad	-2601111570856684097
	.quad	-8543223759426509416
	.quad	-6067343680855748867
	.quad	-2972493582642298179
	.quad	-8775337516792518218
	.quad	-6357485877563259868
	.quad	-3335171328526686932
	.quad	-9002011107970261188
	.quad	-6640827866535438581
	.quad	-3689348814741910323
	.quad	-9223372036854775808
	.quad	-6917529027641081856
	.quad	-4035225266123964416
	.quad	-432345564227567616
	.quad	-7187745005283311616
	.quad	-4372995238176751616
	.quad	-854558029293551616
	.quad	-7451627795949551616
	.quad	-4702848726509551616
	.quad	-1266874889709551616
	.quad	-7709325833709551616
	.quad	-5024971273709551616
	.quad	-1669528073709551616
	.quad	-7960984073709551616
	.quad	-5339544073709551616
	.quad	-2062744073709551616
	.quad	-8206744073709551616
	.quad	-5646744073709551616
	.quad	-2446744073709551616
	.quad	-8446744073709551616
	.quad	-5946744073709551616
	.quad	-2821744073709551616
	.quad	-8681119073709551616
	.quad	-6239712823709551616
	.quad	-3187955011209551616
	.quad	-8910000909647051616
	.quad	-6525815118631426616
	.quad	-3545582879861895366
	.quad	-9133518327554766459
	.quad	-6805211891016070170
	.quad	-3894828845342699809
	.quad	-256850038250986857
	.quad	-7078060301547948642
	.quad	-4235889358507547898
	.quad	-683175679707046969
	.quad	-7344513827457986211
	.quad	-4568956265895094860
	.quad	-1099509313941480671
	.quad	-7604722348854507275
	.quad	-4894216917640746190
	.quad	-1506085128623544834
	.quad	-7858832233030797377
	.quad	-5211854272861108818
	.quad	-1903131822648998118
	.quad	-8106986416796705680
	.quad	-5522047002568494196
	.set	_ZZN15schubfach_xjb32L19ComputePow10_SingleEiE1g,_ZZN12schubfach_32L19ComputePow10_SingleEiE1g
	.align 32
	.type	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100, @object
	.size	_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100, 100
_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100:
	.string	"\002"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.set	_ZZN14dragonbox_warpL21TrailingZeros_2DigitsEjE16TrailingZeros100,_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100
	.set	_ZZN15schubfach_xjb32L21TrailingZeros_2DigitsEjE16TrailingZeros100,_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100
	.set	_ZZN12schubfach_32L21TrailingZeros_2DigitsEjE16TrailingZeros100,_ZZL21TrailingZeros_2DigitsjE16TrailingZeros100
	.align 32
	.type	_ZZL12Utoa_2DigitsPcjE9Digits100, @object
	.size	_ZZL12Utoa_2DigitsPcjE9Digits100, 200
_ZZL12Utoa_2DigitsPcjE9Digits100:
	.ascii	"000102030405060708091011121314151617181920212223242526272829"
	.ascii	"303132333435363738394041424344454647484950515253545556575859"
	.ascii	"606162636465666768697071727374757677787980818283848586878889"
	.ascii	"90919293949596979899"
	.align 32
	.type	_ZZL19ComputePow10_DoubleiE1g, @object
	.size	_ZZL19ComputePow10_DoubleiE1g, 9872
_ZZL19ComputePow10_DoubleiE1g:
	.quad	-38366372719436721
	.quad	2731688931043774331
	.quad	-6941508010590729807
	.quad	8624834609543440813
	.quad	-4065198994811024355
	.quad	-3054014793352862696
	.quad	-469812725086392539
	.quad	5405853545163697438
	.quad	-7211161980820077193
	.quad	5684501474941004851
	.quad	-4402266457597708587
	.quad	2493940825248868160
	.quad	-891147053569747830
	.quad	7729112049988473104
	.quad	-7474495936122174250
	.quad	-9004363024039368022
	.quad	-4731433901725329908
	.quad	2579604275232953684
	.quad	-1302606358729274481
	.quad	3224505344041192105
	.quad	-7731658001846878407
	.quad	8932844867666826922
	.quad	-5052886483881210105
	.quad	-2669001970698630060
	.quad	-1704422086424124727
	.quad	-3336252463373287575
	.quad	-7982792831656159810
	.quad	2526528228819083170
	.quad	-5366805021142811859
	.quad	-6065211750830921845
	.quad	-2096820258001126919
	.quad	1641857348316123501
	.quad	-8228041688891786181
	.quad	-5891368184943504668
	.quad	-5673366092687344822
	.quad	-7364210231179380835
	.quad	-2480021597431793123
	.quad	4629795266307937668
	.quad	-8467542526035952558
	.quad	5199465050656154995
	.quad	-5972742139117552794
	.quad	-2724040723534582064
	.quad	-2854241655469553088
	.quad	-8016736922845615485
	.quad	-8701430062309552536
	.quad	6518754469289960082
	.quad	-6265101559459552766
	.quad	8148443086612450103
	.quad	-3219690930897053053
	.quad	962181821410786820
	.quad	-8929835859451740015
	.quad	-1704479370831952189
	.quad	-6550608805887287114
	.quad	7092772823314835571
	.quad	-3576574988931720989
	.quad	-357406007711231344
	.quad	-9152888395723407474
	.quad	8999993282035256218
	.quad	-6829424476226871438
	.quad	2026619565689294465
	.quad	-3925094576856201394
	.quad	-6690097579743157727
	.quad	-294682202642863838
	.quad	5472436080603216553
	.quad	-7101705404292871755
	.quad	8031958568804398250
	.quad	-4265445736938701790
	.quad	-3795109844276665900
	.quad	-720121152745989333
	.quad	9091170749936331337
	.quad	-7367604748107325189
	.quad	3376138709496513134
	.quad	-4597819916706768583
	.quad	-391512631556746487
	.quad	-1135588877456072824
	.quad	8733981247408842699
	.quad	-7627272076051127371
	.quad	5458738279630526687
	.quad	-4922404076636521310
	.quad	-7011635205744005353
	.quad	-1541319077368263733
	.quad	5070514048102157021
	.quad	-7880853450996246689
	.quad	863228270850154186
	.quad	-5239380795317920458
	.quad	-3532650679864695172
	.quad	-1937539975720012668
	.quad	-9027499368258256869
	.quad	-8128491512466089774
	.quad	-3336344095947716591
	.quad	-5548928372155224313
	.quad	-8782116138362033642
	.quad	-2324474446766642487
	.quad	7469098900757009563
	.quad	-8370325556870233411
	.quad	-2249342214667950879
	.quad	-5851220927660403859
	.quad	6411694268519837209
	.quad	-2702340141148116920
	.quad	-5820440219632367201
	.quad	-8606491615858654931
	.quad	7891439908798240260
	.quad	-6146428501395930760
	.quad	-3970758169284363388
	.quad	-3071349608317525546
	.quad	-351761693178066331
	.quad	-8837122532839535322
	.quad	6697677969404790400
	.quad	-6434717147622031249
	.quad	-851274575098787809
	.quad	-3431710416100151157
	.quad	-1064093218873484761
	.quad	-9062348037703676329
	.quad	8558313775058847833
	.quad	-6716249028702207507
	.quad	6086206200396171887
	.quad	-3783625267450371480
	.quad	-6227300304786948854
	.quad	-117845565885576446
	.quad	-3172439362556298163
	.quad	-6991182506319567135
	.quad	-4288617610811380304
	.quad	-4127292114472071014
	.quad	3862600023340550428
	.quad	-547429124662700864
	.quad	-4395122007679087773
	.quad	-7259672230555269896
	.quad	8782263791269039902
	.quad	-4462904269766699466
	.quad	-7468914334623251739
	.quad	-966944318780986428
	.quad	4498915137003099038
	.quad	-7521869226879198374
	.quad	-6411550076227838909
	.quad	-4790650515171610063
	.quad	5820620459997365076
	.quad	-1376627125537124675
	.quad	-6559282480285457367
	.quad	-7777920981101784778
	.quad	-8711237568605798758
	.quad	-5110715207949843068
	.quad	2946011094524915264
	.quad	-1776707991509915931
	.quad	3682513868156144080
	.quad	-8027971522334779313
	.quad	4607414176811284002
	.quad	-5423278384491086237
	.quad	1147581702586717098
	.quad	-2167411962186469893
	.quad	-3177208890193991531
	.quad	-8272161504007625539
	.quad	7237616480483531101
	.quad	-5728515861582144020
	.quad	-4788037454677749836
	.quad	-2548958808550292121
	.quad	-1373360799919799391
	.quad	-8510628282985014432
	.quad	-858350499949874619
	.quad	-6026599335303880135
	.quad	3538747893490044630
	.quad	-2921563150702462265
	.quad	9035120885289943692
	.quad	-8743505996830120772
	.quad	-5882264492762254952
	.quad	-6317696477610263061
	.quad	-2741144597525430787
	.quad	-3285434578585440922
	.quad	-3426430746906788484
	.quad	-8970925639256982432
	.quad	4776009810824339054
	.quad	-6601971030643840136
	.quad	5970012263530423817
	.quad	-3640777769877412266
	.quad	7462515329413029772
	.quad	-9193015133814464522
	.quad	52386062455755703
	.quad	-6879582898840692749
	.quad	-9157889458785081179
	.quad	-3987792605123478032
	.quad	6999382250228200142
	.quad	-373054737976959636
	.quad	8749227812785250178
	.quad	-7150688238876681629
	.quad	-3755104653863994447
	.quad	-4326674280168464132
	.quad	-4693880817329993059
	.quad	-796656831783192261
	.quad	-1255665003235103419
	.quad	-7415439547505577019
	.quad	8438581409832836171
	.quad	-4657613415954583370
	.quad	-3286831292991118498
	.quad	-1210330751515841308
	.quad	-8720225134666286027
	.quad	-7673985747338482674
	.quad	-3144297699952734815
	.quad	-4980796165745715438
	.quad	-8542058143368306422
	.quad	-1614309188754756393
	.quad	3157485376071780684
	.quad	-7926472270612804602
	.quad	8890957387685944784
	.quad	-5296404319838617848
	.quad	1890324697752655171
	.quad	-2008819381370884406
	.quad	2362905872190818964
	.quad	-8173041140997884610
	.quad	6088502188546649757
	.quad	-5604615407819967859
	.quad	-1612744301171463612
	.quad	-2394083241347571919
	.quad	7207441660390446293
	.quad	-8413831053483314306
	.quad	-2412877989897052923
	.quad	-5905602798426754978
	.quad	-7627783505798704058
	.quad	-2770317479606055818
	.quad	4300328673033783640
	.quad	-8648977452394866743
	.quad	-1923980597781273129
	.quad	-6199535797066195524
	.quad	6818396289628184397
	.quad	-3137733727905356501
	.quad	8522995362035230496
	.quad	-8878612607581929669
	.quad	3021029092058325108
	.quad	-6486579741050024183
	.quad	-835399653354481519
	.quad	-3496538657885142324
	.quad	8179122470161673909
	.quad	-9102865688819295809
	.quad	-4111420493003729615
	.quad	-6766896092596731857
	.quad	-5139275616254662019
	.quad	-3846934097318526917
	.quad	-6424094520318327523
	.quad	-196981603220770742
	.quad	-8030118150397909404
	.quad	-7040642529654063570
	.quad	-7324666853212387329
	.quad	-4189117143640191558
	.quad	4679224488766679550
	.quad	-624710411122851544
	.quad	-3374341425896426371
	.quad	-7307973034592864071
	.quad	-9026492418826348337
	.quad	-4523280274813692185
	.quad	-2059743486678159614
	.quad	-1042414325089727327
	.quad	-2574679358347699518
	.quad	-7569037980822161435
	.quad	3002511419460075706
	.quad	-4849611457600313890
	.quad	8364825292752482536
	.quad	-1450328303573004458
	.quad	1232659579085827362
	.quad	-7823984217374209643
	.quad	-3841273781498745803
	.quad	-5168294253290374149
	.quad	4421779809981343555
	.quad	-1848681798185579782
	.quad	915538744049291539
	.quad	-8072955151507069220
	.quad	5183897733458195116
	.quad	-5479507920956448621
	.quad	6479872166822743895
	.quad	-2237698882768172872
	.quad	3488154190101041965
	.quad	-8316090829371189901
	.quad	2180096368813151228
	.quad	-5783427518286599473
	.quad	-1886565557410948869
	.quad	-2617598379430861437
	.quad	-2358206946763686086
	.quad	-8553528014785370254
	.quad	7749492695127472004
	.quad	-6080224000054324913
	.quad	463493832054564197
	.quad	-2988593981640518238
	.quad	-4032318728359182658
	.quad	-8785400266166405755
	.quad	-4826042214438183113
	.quad	-6370064314280619289
	.quad	3190819268807046917
	.quad	-3350894374423386208
	.quad	-623161932418579258
	.quad	-9011838011655698236
	.quad	-7307005235402693892
	.quad	-6653111496142234891
	.quad	-4522070525825979461
	.quad	-3704703351750405709
	.quad	3570783879572301481
	.quad	-19193171260619233
	.quad	-148206168962011053
	.quad	-6929524759678968877
	.quad	-92628855601256908
	.quad	-4050219931171323192
	.quad	-115786069501571135
	.quad	-451088895536766085
	.quad	4466953431550423985
	.quad	-7199459587351560659
	.quad	486002885505321039
	.quad	-4387638465762062920
	.quad	5219189625309039203
	.quad	-872862063775190746
	.quad	6523987031636299003
	.quad	-7463067817500576073
	.quad	-534194123654701027
	.quad	-4717148753448332187
	.quad	-667742654568376284
	.quad	-1284749923383027329
	.quad	8388693718644305453
	.quad	-7720497729755473937
	.quad	-6286281471915778851
	.quad	-5038936143766954517
	.quad	-7857851839894723564
	.quad	-1686984161281305242
	.quad	8624429273841147160
	.quad	-7971894128441897632
	.quad	778582277723329071
	.quad	-5353181642124984136
	.quad	973227847154161339
	.quad	-2079791034228842266
	.quad	1216534808942701674
	.quad	-8217398424034108273
	.quad	-3851351762838199358
	.quad	-5660062011615247437
	.quad	-4814189703547749197
	.quad	-2463391496091671392
	.quad	-6017737129434686497
	.quad	-8457148712698376476
	.quad	7768129340171790700
	.quad	-5959749872445582691
	.quad	-8736582398494813241
	.quad	-2838001322129590460
	.quad	-1697355961263740744
	.quad	-8691279853972075893
	.quad	1244995533423855987
	.quad	-6252413799037706963
	.quad	-3055441601647567920
	.quad	-3203831230369745799
	.quad	5404070034795315908
	.quad	-8919923546622172981
	.quad	-3539985255894009413
	.quad	-6538218414850328322
	.quad	-4424981569867511767
	.quad	-3561087000135522498
	.quad	8303831092947774003
	.quad	-9143208402725783417
	.quad	578208414664970848
	.quad	-6817324484979841368
	.quad	-3888925500096174344
	.quad	-3909969587797413806
	.quad	-249470856692830026
	.quad	-275775966319379353
	.quad	-4923524589293425437
	.quad	-7089889006590693952
	.quad	-3077202868308390898
	.quad	-4250675239810979535
	.quad	765182433041899282
	.quad	-701658031336336515
	.quad	5568164059729762006
	.quad	-7356065297226292178
	.quad	5785945546544795206
	.quad	-4583395603105477319
	.quad	-1990940103673781801
	.quad	-1117558485454458744
	.quad	6734696907262548557
	.quad	-7616003081050118571
	.quad	4209185567039092848
	.quad	-4908317832885260310
	.quad	-8573576096483297652
	.quad	-1523711272679187483
	.quad	3118087934678041647
	.quad	-7869848573065574033
	.quad	4254647968387469982
	.quad	-5225624697904579637
	.quad	706623942056949573
	.quad	-1920344853953336643
	.quad	-3728406090856200938
	.quad	-8117744561361917258
	.quad	-6941939825212513490
	.quad	-5535494683275008668
	.quad	5157633273766521850
	.quad	-2307682335666372931
	.quad	6447041592208152312
	.quad	-8359830487432564938
	.quad	6335244004343789147
	.quad	-5838102090863318269
	.quad	-1304317031425039374
	.quad	-2685941595151759932
	.quad	-1630396289281299218
	.quad	-8596242524610931813
	.quad	1286845328412881941
	.quad	-6133617137336276863
	.quad	-3003129357911285478
	.quad	-3055335403242958174
	.quad	5469460339465668960
	.quad	-8827113654667930715
	.quad	8030098730593431004
	.quad	-6422206049907525490
	.quad	-3797434642040374957
	.quad	-3416071543957018958
	.quad	9088264752731695016
	.quad	-9052573742614218705
	.quad	-8154892584824854327
	.quad	-6704031159840385477
	.quad	8253128342678483707
	.quad	-3768352931373093942
	.quad	5704724409920716730
	.quad	-98755145788979524
	.quad	-2092466524453879895
	.quad	-6979250993759194058
	.quad	998051431430019018
	.quad	-4112377723771604669
	.quad	-7975807747567252036
	.quad	-528786136287117932
	.quad	8476984389250486571
	.quad	-7248020362820530564
	.quad	-3925256793573221701
	.quad	-4448339435098275301
	.quad	-294884973539139223
	.quad	-948738275445456222
	.quad	-368606216923924028
	.quad	-7510490449794491995
	.quad	-2536221894791146469
	.quad	-4776427043815727089
	.quad	6053094668365842721
	.quad	-1358847786342270957
	.quad	2954682317029915497
	.quad	-7766808894105001205
	.quad	-459166561069996766
	.quad	-5096825099203863602
	.quad	-573958201337495958
	.quad	-1759345355577441598
	.quad	-5329133770099257851
	.quad	-8017119874876982855
	.quad	-5636551615525730109
	.quad	-5409713825168840664
	.quad	2177682517447613172
	.quad	-2150456263033662926
	.quad	2722103146809516465
	.quad	-8261564192037121185
	.quad	6313000485183335695
	.quad	-5715269221619013577
	.quad	3279564588051781714
	.quad	-2532400508596379068
	.quad	-512230283362660762
	.quad	-8500279345513818773
	.quad	1985699082112030976
	.quad	-6013663163464885563
	.quad	-2129562165787349184
	.quad	-2905392935903719049
	.quad	6561419329620589328
	.quad	-8733399612580906262
	.quad	-7428327965055601430
	.quad	-6305063497298744923
	.quad	4549648098962661925
	.quad	-3269643353196043250
	.quad	-8147997931578836306
	.quad	-8961056123388608887
	.quad	1825030320404309165
	.quad	-6589634135808373205
	.quad	6892973918932774360
	.quad	-3625356651333078602
	.quad	4004531380238580046
	.quad	-9183376934724255983
	.quad	-2108853905778275375
	.quad	-6867535149977932074
	.quad	6587304654631931589
	.quad	-3972732919045027189
	.quad	-989241218564861322
	.quad	-354230130378896082
	.quad	-1236551523206076653
	.quad	-7138922859127891907
	.quad	6144684325637283948
	.quad	-4311967555482476980
	.quad	-6154202648235558777
	.quad	-778273425925708321
	.quad	-3081067291867060567
	.quad	-7403949918844649557
	.quad	-1925667057416912854
	.quad	-4643251380128424042
	.quad	-2407083821771141068
	.quad	-1192378206733142148
	.quad	-7620540795641314239
	.quad	-7662765406849295699
	.quad	-2456994988062127447
	.quad	-4966770740134231719
	.quad	6152128301777116499
	.quad	-1596777406740401745
	.quad	-6144897678060768089
	.quad	-7915514906853832947
	.quad	-3840561048787980055
	.quad	-5282707615139903279
	.quad	4422670725869800739
	.quad	-1991698500497491195
	.quad	-8306719647944912789
	.quad	-8162340590452013853
	.quad	8643358275316593219
	.quad	-5591239719637629412
	.quad	6192511825718353620
	.quad	-2377363631119648861
	.quad	7740639782147942025
	.quad	-8403381297090862394
	.quad	2532056854628769814
	.quad	-5892540602936190089
	.quad	-6058300968568813541
	.quad	-2753989735242849707
	.quad	-7572876210711016926
	.quad	-8638772612167862923
	.quad	9102010423587778133
	.quad	-6186779746782440750
	.quad	-2457545025797441046
	.quad	-3121788665050663033
	.quad	-7683617300674189211
	.quad	-8868646943297746252
	.quad	-4802260812921368257
	.quad	-6474122660694794911
	.quad	-1391139997724322417
	.quad	-3480967307441105734
	.quad	7484447039699372787
	.quad	-9093133594791772940
	.quad	-9157278655470055720
	.quad	-6754730975062328271
	.quad	-6834912300910181746
	.quad	-3831727700400522434
	.quad	679731660717048625
	.quad	-177973607073265139
	.quad	-8373707460958465027
	.quad	-7028762532061872568
	.quad	8601490892183123070
	.quad	-4174267146649952806
	.quad	-7694880458480647778
	.quad	-606147914885053103
	.quad	4216457482181353989
	.quad	-7296371474444240046
	.quad	-4282243101277735613
	.quad	-4508778324627912153
	.quad	8482254178684994196
	.quad	-1024286887357502287
	.quad	5991131704928854841
	.quad	-7557708332239520786
	.quad	-3173071712060547580
	.quad	-4835449396872013078
	.quad	-8578025658503072379
	.quad	-1432625727662628443
	.quad	3112525982153323238
	.quad	-7812920107430224633
	.quad	4251171748059520976
	.quad	-5154464115860392887
	.quad	702278666647013315
	.quad	-1831394126398103205
	.quad	5489534351736154548
	.quad	-8062150356639896359
	.quad	1125115960621402641
	.quad	-5466001927372482545
	.quad	6018080969204141205
	.quad	-2220816390788215277
	.quad	2910915193077788602
	.quad	-8305539271883716405
	.quad	-486521013540076076
	.quad	-5770238071427257602
	.quad	-608151266925095095
	.quad	-2601111570856684098
	.quad	-5371875102083756772
	.quad	-8543223759426509417
	.quad	3560107088838733873
	.quad	-6067343680855748868
	.quad	-161552157378970562
	.quad	-2972493582642298180
	.quad	4409745821703674701
	.quad	-8775337516792518219
	.quad	-6467280898289979120
	.quad	-6357485877563259869
	.quad	1139270913992301908
	.quad	-3335171328526686933
	.quad	-3187597375937010519
	.quad	-9002011107970261189
	.quad	7231123676894144234
	.quad	-6640827866535438582
	.quad	4427218577690292388
	.quad	-3689348814741910324
	.quad	-3689348814741910323
	.quad	-9223372036854775808
	.quad	0
	.quad	-6917529027641081856
	.quad	0
	.quad	-4035225266123964416
	.quad	0
	.quad	-432345564227567616
	.quad	0
	.quad	-7187745005283311616
	.quad	0
	.quad	-4372995238176751616
	.quad	0
	.quad	-854558029293551616
	.quad	0
	.quad	-7451627795949551616
	.quad	0
	.quad	-4702848726509551616
	.quad	0
	.quad	-1266874889709551616
	.quad	0
	.quad	-7709325833709551616
	.quad	0
	.quad	-5024971273709551616
	.quad	0
	.quad	-1669528073709551616
	.quad	0
	.quad	-7960984073709551616
	.quad	0
	.quad	-5339544073709551616
	.quad	0
	.quad	-2062744073709551616
	.quad	0
	.quad	-8206744073709551616
	.quad	0
	.quad	-5646744073709551616
	.quad	0
	.quad	-2446744073709551616
	.quad	0
	.quad	-8446744073709551616
	.quad	0
	.quad	-5946744073709551616
	.quad	0
	.quad	-2821744073709551616
	.quad	0
	.quad	-8681119073709551616
	.quad	0
	.quad	-6239712823709551616
	.quad	0
	.quad	-3187955011209551616
	.quad	0
	.quad	-8910000909647051616
	.quad	0
	.quad	-6525815118631426616
	.quad	0
	.quad	-3545582879861895366
	.quad	0
	.quad	-9133518327554766460
	.quad	4611686018427387904
	.quad	-6805211891016070171
	.quad	5764607523034234880
	.quad	-3894828845342699810
	.quad	-6629298651489370112
	.quad	-256850038250986858
	.quad	5548434740920451072
	.quad	-7078060301547948643
	.quad	-1143914305352105984
	.quad	-4235889358507547899
	.quad	7793479155164643328
	.quad	-683175679707046970
	.quad	-4093209111326359552
	.quad	-7344513827457986212
	.quad	4359273333062107136
	.quad	-4568956265895094861
	.quad	5449091666327633920
	.quad	-1099509313941480672
	.quad	2199678564482154496
	.quad	-7604722348854507276
	.quad	1374799102801346560
	.quad	-4894216917640746191
	.quad	1718498878501683200
	.quad	-1506085128623544835
	.quad	6759809616554491904
	.quad	-7858832233030797378
	.quad	6530724019560251392
	.quad	-5211854272861108819
	.quad	-1059967012404461568
	.quad	-1903131822648998119
	.quad	7898413271349198848
	.quad	-8106986416796705681
	.quad	-1981020733047832576
	.quad	-5522047002568494197
	.quad	-2476275916309790720
	.quad	-2290872734783229842
	.quad	-3095344895387238400
	.quad	-8349324486880600507
	.quad	4982938468024057856
	.quad	-5824969590173362730
	.quad	-7606384970252091392
	.quad	-2669525969289315508
	.quad	4327076842467049472
	.quad	-8585982758446904049
	.quad	-6518949010312869888
	.quad	-6120792429631242157
	.quad	-8148686262891087360
	.quad	-3039304518611664792
	.quad	8260886245095692416
	.quad	-8817094351773372351
	.quad	5163053903184807760
	.quad	-6409681921289327535
	.quad	-7381240676301154012
	.quad	-3400416383184271515
	.quad	-3178808521666707
	.quad	-9042789267131251553
	.quad	-4613672773753429595
	.quad	-6691800565486676537
	.quad	-5767090967191786994
	.quad	-3753064688430957767
	.quad	-7208863708989733743
	.quad	-79644842111309304
	.quad	212292400617608629
	.quad	-6967307053960650171
	.quad	132682750386005393
	.quad	-4097447799023424810
	.quad	4777539456409894646
	.quad	-510123730351893109
	.quad	-3251447716342407501
	.quad	-7236356359111015049
	.quad	7191217214140771120
	.quad	-4433759430461380907
	.quad	4377335499248575996
	.quad	-930513269649338230
	.quad	-8363388681221443717
	.quad	-7499099821171918250
	.quad	-7532960934977096275
	.quad	-4762188758037509908
	.quad	4418856886560793368
	.quad	-1341049929119499481
	.quad	5523571108200991710
	.quad	-7755685233340769032
	.quad	-8076983103442849941
	.quad	-5082920523248573386
	.quad	-5484542860876174523
	.quad	-1741964635633328828
	.quad	6979379479186945559
	.quad	-8006256924911912374
	.quad	-4861259862362934834
	.quad	-5396135137712502563
	.quad	7758483227328495170
	.quad	-2133482903713240300
	.quad	-4136954021121544750
	.quad	-8250955842461857044
	.quad	-279753253987271517
	.quad	-5702008784649933400
	.quad	4261994450943298508
	.quad	-2515824962385028846
	.quad	5327493063679123135
	.quad	-8489919629131724885
	.quad	7941369183226839864
	.quad	-6000713517987268202
	.quad	5315025460606161925
	.quad	-2889205879056697349
	.quad	-2579590211097073401
	.quad	-8723282702051517699
	.quad	7611128154919104932
	.quad	-6292417359137009220
	.quad	-4321147861633282547
	.quad	-3253835680493873621
	.quad	-789748808614215279
	.quad	-8951176327949752869
	.quad	8729779031470891259
	.quad	-6577284391509803182
	.quad	6300537770911226169
	.quad	-3609919470959866074
	.quad	-1347699823215743097
	.quad	-9173728696990998152
	.quad	6075216638131242421
	.quad	-6855474852811359786
	.quad	7594020797664053026
	.quad	-3957657547586811828
	.quad	269153960225290474
	.quad	-335385916056126881
	.quad	336442450281613092
	.quad	-7127145225176161157
	.quad	7127805559067090039
	.quad	-4297245513042813542
	.quad	4298070930406474645
	.quad	-759870872876129024
	.quad	-3850783373846682502
	.quad	-7392448323188662496
	.quad	9122475437414293196
	.quad	-4628874385558440216
	.quad	-7043649776941685121
	.quad	-1174406963520662366
	.quad	-4192876202749718497
	.quad	-7651533379841495835
	.quad	-4926390635932268013
	.quad	-4952730706374481889
	.quad	3065383741939440792
	.quad	-1579227364540714458
	.quad	-779956341003086914
	.quad	-7904546130479028392
	.quad	6430056314514152535
	.quad	-5268996644671397586
	.quad	8037570393142690669
	.quad	-1974559787411859078
	.quad	823590954573587528
	.quad	-8151628894773493780
	.quad	5126430365035880109
	.quad	-5577850100039479321
	.quad	6408037956294850136
	.quad	-2360626606621961247
	.quad	3398361426941174766
	.quad	-8392920656779807636
	.quad	-4793553135802847627
	.quad	-5879464802547371641
	.quad	-1380255401326171630
	.quad	-2737644984756826647
	.quad	-1725319251657714538
	.quad	-8628557143114098510
	.quad	3533361486141316318
	.quad	-6174010410465235234
	.quad	-4806670179178130410
	.quad	-3105826994654156138
	.quad	7826720331309500699
	.quad	-8858670899299929442
	.quad	280014188641050033
	.quad	-6461652605697523899
	.quad	-8873354301053463267
	.quad	-3465379738694516970
	.quad	-1868320839462053276
	.quad	-9083391364325154962
	.quad	5749828502977298559
	.quad	-6742553186979055799
	.quad	-2036086408133152610
	.quad	-3816505465296431844
	.quad	6678264026688335046
	.quad	-158945813193151901
	.quad	8347830033360418807
	.quad	-7016870160886801794
	.quad	2911550761636567803
	.quad	-4159401682681114339
	.quad	-5583933584809066055
	.quad	-587566084924005019
	.quad	2243455055843443239
	.quad	-7284757830718584993
	.quad	3708002419115845977
	.quad	-4494261269970843337
	.quad	23317005467419567
	.quad	-1006140569036166268
	.quad	-4582539761593113445
	.quad	-7546366883288685774
	.quad	-558244341782001951
	.quad	-4821272585683469313
	.quad	-5309491445654890343
	.quad	-1414904713676948737
	.quad	-6636864307068612929
	.quad	-7801844473689174817
	.quad	-4148040191917883080
	.quad	-5140619573684080617
	.quad	-5185050239897353851
	.quad	-1814088448677712867
	.quad	-6481312799871692314
	.quad	-8051334308064652398
	.quad	-8662506518347195600
	.quad	-5452481866653427593
	.quad	3006924907348169212
	.quad	-2203916314889396588
	.quad	-853029884242176389
	.quad	-8294976724446954723
	.quad	1772699331562333709
	.quad	-5757034887131305500
	.quad	6827560182880305040
	.quad	-2584607590486743971
	.quad	8534450228600381300
	.quad	-8532908771695296838
	.quad	7639874402088932265
	.quad	-6054449946191733143
	.quad	326470965756389523
	.quad	-2956376414312278525
	.quad	5019774725622874807
	.quad	-8765264286586255934
	.quad	831516194300602803
	.quad	-6344894339805432014
	.quad	-8183976793979022305
	.quad	-3319431906329402113
	.quad	3605087062808385831
	.quad	-8992173969096958177
	.quad	9170708441896323001
	.quad	-6628531442943809817
	.quad	6851699533943015847
	.quad	-3673978285252374367
	.quad	3952938399001381904
	.quad	-9213765455923815836
	.quad	-4446942528265218166
	.quad	-6905520801477381891
	.quad	-946992141904134803
	.quad	-4020214983419339459
	.quad	8039631859474607304
	.quad	-413582710846786420
	.quad	-3785518230938904582
	.quad	-7176018221920323369
	.quad	-60105885123121412
	.quad	-4358336758973016307
	.quad	-75132356403901765
	.quad	-836234930288882479
	.quad	9129456591349898602
	.quad	-7440175859071633406
	.quad	-1211618658047395230
	.quad	-4688533805412153853
	.quad	-6126209340986631941
	.quad	-1248981238337804412
	.quad	-7657761676233289927
	.quad	-7698142301602209614
	.quad	-2480258038432112252
	.quad	-5010991858575374113
	.quad	-7712008566467528219
	.quad	-1652053804791829737
	.quad	8806733365625141342
	.quad	-7950062655635975442
	.quad	-6025006692552756421
	.quad	-5325892301117581398
	.quad	6303799689591218186
	.quad	-2045679357969588844
	.quad	-1343622424865753076
	.quad	-8196078626372074883
	.quad	1466078993672598280
	.quad	-5633412264537705700
	.quad	6444284760518135753
	.quad	-2430079312244744221
	.quad	8055355950647669692
	.quad	-8436328597794046994
	.quad	2728754459941099605
	.quad	-5933724728815170839
	.quad	-5812428961928401301
	.quad	-2805469892591575644
	.quad	1957835834444274181
	.quad	-8670947710510816634
	.quad	-7999724640327104445
	.quad	-6226998619711132888
	.quad	3835402254873283156
	.quad	-3172062256211528206
	.quad	4794252818591603945
	.quad	-8900067937773286985
	.quad	7608094030047140370
	.quad	-6513398903789220827
	.quad	4898431519131537558
	.quad	-3530062611309138130
	.quad	-7712018656367741764
	.quad	-9123818159709293187
	.quad	2097517367411243254
	.quad	-6793086681209228580
	.quad	7233582727691441971
	.quad	-3879672333084147821
	.quad	9041978409614302463
	.quad	-237904397927796872
	.quad	6690786993590490175
	.quad	-7066219276345954901
	.quad	4181741870994056360
	.quad	-4221088077005055722
	.quad	615491320315182545
	.quad	-664674077828931749
	.quad	-8454007886460797626
	.quad	-7332950326284164199
	.quad	3939617107816777292
	.quad	-4554501889427817345
	.quad	-8910536670511192098
	.quad	-1081441343357383777
	.quad	7308573235570561494
	.quad	-7593429867239446717
	.quad	-6961356773836868826
	.quad	-4880101315621920492
	.quad	-8701695967296086033
	.quad	-1488440626100012711
	.quad	-6265433940692719637
	.quad	-7847804418953589800
	.quad	695789805494438131
	.quad	-5198069505264599346
	.quad	869737256868047664
	.quad	-1885900863153361279
	.quad	-8136200465769716229
	.quad	-8096217067111932656
	.quad	-473439272678684739
	.quad	-5508585315462527915
	.quad	4019886927579031981
	.quad	-2274045625900771990
	.quad	-8810199395808373736
	.quad	-8338807543829064350
	.quad	-7812217631593927537
	.quad	-5811823411358942533
	.quad	4069786015789754291
	.quad	-2653093245771290262
	.quad	475546501309804959
	.quad	-8575712306248138270
	.quad	4908902581746016004
	.quad	-6107954364382784934
	.quad	-3087243809672255804
	.quad	-3023256937051093263
	.quad	-8470740780517707659
	.quad	-8807064613298015146
	.quad	-682526969396179382
	.quad	-6397144748195131028
	.quad	-5464844730172612132
	.quad	-3384744916816525881
	.quad	-2219369894288377261
	.quad	-9032994600651410532
	.quad	-1387106183930235788
	.quad	-6679557232386875260
	.quad	2877803288514593169
	.quad	-3737760522056206171
	.quad	3597254110643241461
	.quad	-60514634142869810
	.quad	9108253656731439730
	.quad	-6955350673980375487
	.quad	1080972517029761927
	.quad	-4082502324048081455
	.quad	5962901664714590313
	.quad	-491441886632713915
	.quad	-6381430974388925821
	.quad	-7224680206786528053
	.quad	-8600080377420466542
	.quad	-4419164240055772162
	.quad	7696643601933968438
	.quad	-912269281642327298
	.quad	397432465562684740
	.quad	-7487697328667536418
	.quad	-4363290727450709941
	.quad	-4747935642407032618
	.quad	8380944645968776285
	.quad	-1323233534581402868
	.quad	1252808770606194548
	.quad	-7744549986754458649
	.quad	-8440366555225904215
	.quad	-5069001465015685407
	.quad	7896285879677171347
	.quad	-1724565812842218855
	.quad	-3964700705685699528
	.quad	-7995382660667468640
	.quad	2133748077373825699
	.quad	-5382542307406947896
	.quad	2667185096717282124
	.quad	-2116491865831296966
	.quad	3333981370896602654
	.quad	-8240336443785642460
	.quad	6695424375237764563
	.quad	-5688734536304665171
	.quad	8369280469047205704
	.quad	-2499232151953443560
	.quad	-3373457468973156582
	.quad	-8479549122611984081
	.quad	-9025939945749304720
	.quad	-5987750384837592197
	.quad	7164319141522920716
	.quad	-2873001962619602342
	.quad	4343712908476262991
	.quad	-8713155254278333320
	.quad	7326506586225052274
	.quad	-6279758049420528746
	.quad	9158133232781315342
	.quad	-3238011543348273028
	.quad	2224294504121868369
	.quad	-8941286242233752499
	.quad	-7833187971778608077
	.quad	-6564921784364802720
	.quad	-568112927868484288
	.quad	-3594466212028615495
	.quad	3901544858591782543
	.quad	-9164070410158966541
	.quad	-4479063491021217766
	.quad	-6843401994271320272
	.quad	-5598829363776522208
	.quad	-3942566474411762436
	.quad	-2386850686293264856
	.quad	-316522074587315140
	.quad	1628122660560806834
	.quad	-7115355324258153819
	.quad	-8205795374004271537
	.quad	-4282508136895304370
	.quad	-1033872180650563613
	.quad	-741449152691742558
	.quad	-5904026244240592420
	.quad	-7380934748073420955
	.quad	-5995859411864064214
	.quad	-4614482416664388289
	.quad	1728547772024695540
	.quad	-1156417002403097458
	.quad	-2451001303396518479
	.quad	-7640289654143017767
	.quad	5385653213018257807
	.quad	-4938676049251384305
	.quad	-7102991539009341454
	.quad	-1561659043136842477
	.quad	-8878739423761676818
	.quad	-7893565929601608404
	.quad	3674159897003727797
	.quad	-5255271393574622601
	.quad	4592699871254659746
	.quad	-1957403223540890347
	.quad	1129188820640936779
	.quad	-8140906042354138323
	.quad	3011586022114279439
	.quad	-5564446534515285000
	.quad	8376168546070237203
	.quad	-2343872149716718346
	.quad	-7976533391121755113
	.quad	-8382449121214030822
	.quad	1932195658189984911
	.quad	-5866375383090150624
	.quad	-6808127464117294670
	.quad	-2721283210435300376
	.quad	-3898473311719230433
	.quad	-8618331034163144591
	.quad	9092669226243950739
	.quad	-6161227774276542835
	.quad	-2469221522477225288
	.quad	-3089848699418290639
	.quad	6136845133758244198
	.quad	-8848684464777513506
	.quad	-3082000819042179232
	.quad	-6449169562544503978
	.quad	-8464187042230111944
	.quad	-3449775934753242068
	.quad	3254824252494523782
	.quad	-9073638986861858149
	.quad	-7189106879045698444
	.quad	-6730362715149934782
	.quad	-8986383598807123056
	.quad	-3801267375510030573
	.quad	2602078556773259892
	.quad	-139898200960150313
	.quad	-1359087822460813039
	.quad	-7004965403241175802
	.quad	-849429889038008149
	.quad	-4144520735624081848
	.quad	-5673473379724898090
	.quad	-568964901102714406
	.quad	-2480155706228734709
	.quad	-7273132090830278360
	.quad	-3855940325606653145
	.quad	-4479729095110460046
	.quad	-208239388580928527
	.quad	-987975350460687153
	.quad	-4871985254153548563
	.quad	-7535013621679011327
	.quad	-3044990783845967852
	.quad	-4807081008671376254
	.quad	5417133557047315993
	.quad	-1397165242411832414
	.quad	-2451955090545630817
	.quad	-7790757304148477115
	.quad	-3838314940804713212
	.quad	-5126760611758208489
	.quad	4425478360848884292
	.quad	-1796764746270372707
	.quad	920161932633717461
	.quad	-8040506994060064798
	.quad	2880944217109767366
	.quad	-5438947724147693094
	.quad	-5622191765467566601
	.quad	-2186998636757228463
	.quad	6807318348447705460
	.quad	-8284403175614349646
	.quad	-2662955059861265943
	.quad	-5743817951090549153
	.quad	-7940379843253970333
	.quad	-2568086420435798537
	.quad	8521269269642088700
	.quad	-8522583040413455942
	.quad	-6203421752542164322
	.quad	-6041542782089432023
	.quad	6080780864604458309
	.quad	-2940242459184402125
	.quad	-6234081974526590826
	.quad	-8755180564631333184
	.quad	5327070802775656542
	.quad	-6332289687361778576
	.quad	6658838503469570677
	.quad	-3303676090774835316
	.quad	8323548129336963346
	.quad	-8982326584375353929
	.quad	-4021154456019173716
	.quad	-6616222212041804507
	.quad	-5026443070023967146
	.quad	-3658591746624867729
	.quad	2940318199324816876
	.quad	-9204148869281624187
	.quad	8755227902219092404
	.quad	-6893500068174642330
	.quad	-2891023177508298208
	.quad	-4005189066790915008
	.quad	-8225464990312760664
	.quad	-394800315061255856
	.quad	-5670145219463562926
	.quad	-7164279224554366766
	.quad	7985374283903742932
	.quad	-4343663012265570553
	.quad	758345818024902857
	.quad	-817892746904575288
	.quad	-3663753745896259333
	.quad	-7428711994456441411
	.quad	-9207375118826243939
	.quad	-4674203974643163860
	.quad	-2285846861678029116
	.quad	-1231068949876566920
	.quad	1754377441329851509
	.quad	-7686947121313936181
	.quad	1096485900831157193
	.quad	-4996997883215032323
	.quad	-3241078642388441413
	.quad	-1634561335591402499
	.quad	5172023733869224042
	.quad	-7939129862385708418
	.quad	5538357842881958978
	.quad	-5312226309554747619
	.quad	-2300424733252327085
	.quad	-2028596868516046619
	.quad	6347841120289366951
	.quad	-8185402070463610993
	.quad	6273243709394548297
	.quad	-5620066569652125837
	.quad	3229868618315797467
	.quad	-2413397193637769393
	.quad	-574350245532641070
	.quad	-8425902273664687727
	.quad	-358968903457900669
	.quad	-5920691823653471754
	.quad	8774660907532399972
	.quad	-2789178761139451788
	.quad	1744954097560724157
	.quad	-8660765753353239224
	.quad	-8132775725879323210
	.quad	-6214271173264161126
	.quad	-5554283638921766109
	.quad	-3156152948152813503
	.quad	6892203506629956076
	.quad	-8890124620236590296
	.quad	-2609901835997359308
	.quad	-6500969756868349965
	.quad	1349308723430688769
	.quad	-3514526177658049553
	.quad	-2925050114139026943
	.quad	-9114107888677362827
	.quad	-1828156321336891839
	.quad	-6780948842419315629
	.quad	6938176635183661009
	.quad	-3864500034596756632
	.quad	4061034775552188357
	.quad	-218939024818557886
	.quad	5076293469440235446
	.quad	-7054365918152680535
	.quad	7784369436827535058
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC22:
	.value	-1069
	.value	-1059
	.value	-1009
	.value	-843
	.value	-840
	.value	-830
	.value	-747
	.value	-541
	.value	-418
	.value	-348
	.value	-192
	.value	-149
	.value	-129
	.value	37
	.value	130
	.value	223
	.align 32
.LC23:
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC24:
	.value	253
	.value	293
	.value	326
	.value	346
	.value	353
	.value	429
	.value	522
	.value	542
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC53:
	.long	575064476
	.long	1187555043
	.align 8
.LC54:
	.long	-354911229
	.long	1191104667
	.align 8
.LC56:
	.long	-500134854
	.long	1044740494
	.align 8
.LC57:
	.long	0
	.long	1093567616
	.align 8
.LC87:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
