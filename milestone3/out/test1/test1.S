.data
format_print_str: .asciz "%s\n"
format_print_int: .asciz "%ld\n"
format_print_true: .asciz "True\n"
format_print_false: .asciz "False\n"


.text
.globl main


swap:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $144, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq $8, %rcx
	movq -24(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -16(%rbp), %rcx
	movq -32(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq $8, %rcx
	movq -32(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq $8, %rcx
	movq -56(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -48(%rbp), %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq $8, %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -72(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq $8, %rcx
	movq -88(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -80(%rbp), %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -104(%rbp)
	movq -64(%rbp), %rdx
	movq -104(%rbp), %rcx
	movq %rcx, (%rdx)
	movq 56(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -120(%rbp)
	movq $8, %rcx
	movq -120(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -128(%rbp)
	movq -112(%rbp), %rcx
	movq -128(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -128(%rbp)
	movq $8, %rcx
	movq -128(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -128(%rbp)
	movq -128(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -136(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -144(%rbp)
	movq -128(%rbp), %rdx
	movq -144(%rbp), %rcx
	movq %rcx, (%rdx)
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

partition:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $536, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq $8, %rcx
	movq -56(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -48(%rbp), %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq $8, %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -72(%rbp)
	movq -72(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq $0, %rdx
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq $0, %rdx
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq $1, %rdx
	movq %rdx, -104(%rbp)
	movq -96(%rbp), %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq $1, %rdx
	movq %rdx, -120(%rbp)
	movq -112(%rbp), %rcx
	movq -120(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -96(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -128(%rbp)
	jmp L1
L0:
	movq -128(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -128(%rbp)
	movq -128(%rbp), %rdx
	movq %rdx, -24(%rbp)
L1:
	movq -128(%rbp), %rdx
	movq -112(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -136(%rbp)
	movq -136(%rbp), %rdx
	cmpq $0, %rdx
	je L3
	movq 56(%rbp), %rdx
	movq %rdx, -144(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -152(%rbp)
	movq $8, %rcx
	movq -152(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -160(%rbp)
	movq -144(%rbp), %rcx
	movq -160(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -160(%rbp)
	movq $8, %rcx
	movq -160(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -160(%rbp)
	movq -160(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -168(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -176(%rbp)
	movq -168(%rbp), %rdx
	movq -176(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setle %dl
	movq %rdx, -168(%rbp)
	movq -168(%rbp), %rdx
	cmpq $0, %rdx
	je L2
	movq -16(%rbp), %rdx
	movq %rdx, -184(%rbp)
	movq $1, %rdx
	movq %rdx, -192(%rbp)
	movq -184(%rbp), %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -200(%rbp)
	movq -200(%rbp), %rdx
	movq %rdx, -16(%rbp)
	jmp L2
L2:
	jmp L0
L3:
	movq 64(%rbp), %rdx
	movq %rdx, -208(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -208(%rbp), %rcx
	movq -216(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -208(%rbp)
	movq -208(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -224(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -232(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -240(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -240(%rbp), %rdx
	pushq %rdx
	movq -232(%rbp), %rdx
	pushq %rdx
	movq -224(%rbp), %rdx
	pushq %rdx
	call swap
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	movq -24(%rbp), %rdx
	movq %rdx, -248(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -256(%rbp)
	movq -256(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -264(%rbp)
	movq -264(%rbp), %rdx
	movq %rdx, -40(%rbp)
L4:
	movq -24(%rbp), %rdx
	movq %rdx, -272(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -280(%rbp)
	movq -272(%rbp), %rdx
	movq -280(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -272(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -288(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -296(%rbp)
	movq -288(%rbp), %rdx
	movq -296(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -288(%rbp)
	movq -272(%rbp), %rcx
	movq -288(%rbp), %rdx
	andq %rdx, %rcx
	movq %rcx, -272(%rbp)
	movq -272(%rbp), %rdx
	cmpq $0, %rdx
	je L10
L5:
	movq 56(%rbp), %rdx
	movq %rdx, -304(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -312(%rbp)
	movq $8, %rcx
	movq -312(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -320(%rbp)
	movq -304(%rbp), %rcx
	movq -320(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -320(%rbp)
	movq $8, %rcx
	movq -320(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -320(%rbp)
	movq -320(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -328(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -336(%rbp)
	movq -328(%rbp), %rdx
	movq -336(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setle %dl
	movq %rdx, -328(%rbp)
	movq -328(%rbp), %rdx
	cmpq $0, %rdx
	je L6
	movq -24(%rbp), %rdx
	movq %rdx, -344(%rbp)
	movq $1, %rdx
	movq %rdx, -352(%rbp)
	movq -344(%rbp), %rcx
	movq -352(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -360(%rbp)
	movq -360(%rbp), %rdx
	movq %rdx, -24(%rbp)
	jmp L5
L6:
L7:
	movq 56(%rbp), %rdx
	movq %rdx, -368(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -376(%rbp)
	movq $8, %rcx
	movq -376(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -384(%rbp)
	movq -368(%rbp), %rcx
	movq -384(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -384(%rbp)
	movq $8, %rcx
	movq -384(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -384(%rbp)
	movq -384(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -392(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -400(%rbp)
	movq -392(%rbp), %rdx
	movq -400(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -392(%rbp)
	movq -392(%rbp), %rdx
	cmpq $0, %rdx
	je L8
	movq -40(%rbp), %rdx
	movq %rdx, -408(%rbp)
	movq $1, %rdx
	movq %rdx, -416(%rbp)
	movq -408(%rbp), %rcx
	movq -416(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -424(%rbp)
	movq -424(%rbp), %rdx
	movq %rdx, -40(%rbp)
	jmp L7
L8:
	movq -24(%rbp), %rdx
	movq %rdx, -432(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -440(%rbp)
	movq -432(%rbp), %rdx
	movq -440(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -432(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -448(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -456(%rbp)
	movq -448(%rbp), %rdx
	movq -456(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -448(%rbp)
	movq -432(%rbp), %rcx
	movq -448(%rbp), %rdx
	andq %rdx, %rcx
	movq %rcx, -432(%rbp)
	movq -432(%rbp), %rdx
	cmpq $0, %rdx
	je L9
	movq 56(%rbp), %rdx
	movq %rdx, -464(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -472(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -480(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -480(%rbp), %rdx
	pushq %rdx
	movq -472(%rbp), %rdx
	pushq %rdx
	movq -464(%rbp), %rdx
	pushq %rdx
	call swap
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	movq -24(%rbp), %rdx
	movq %rdx, -488(%rbp)
	movq $1, %rdx
	movq %rdx, -496(%rbp)
	movq -488(%rbp), %rcx
	movq -496(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -504(%rbp)
	movq -504(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -512(%rbp)
	movq $1, %rdx
	movq %rdx, -520(%rbp)
	movq -512(%rbp), %rcx
	movq -520(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -528(%rbp)
	movq -528(%rbp), %rdx
	movq %rdx, -40(%rbp)
	jmp L9
L9:
	jmp L4
L10:
	movq -32(%rbp), %rdx
	movq %rdx, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

quickSort:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $120, %rsp
	movq 64(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq -16(%rbp), %rdx
	movq -24(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setge %dl
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	cmpq $0, %rdx
	je L11
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L11
L11:
	movq 56(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -48(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -48(%rbp), %rdx
	pushq %rdx
	movq -40(%rbp), %rdx
	pushq %rdx
	movq -32(%rbp), %rdx
	pushq %rdx
	call partition
	movq %rax, -56(%rbp)
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	movq -56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq $1, %rdx
	movq %rdx, -88(%rbp)
	movq -80(%rbp), %rcx
	movq -88(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -80(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -80(%rbp), %rdx
	pushq %rdx
	movq -72(%rbp), %rdx
	pushq %rdx
	movq -64(%rbp), %rdx
	pushq %rdx
	call quickSort
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	movq 56(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq $1, %rdx
	movq %rdx, -112(%rbp)
	movq -104(%rbp), %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -120(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -120(%rbp), %rdx
	pushq %rdx
	movq -104(%rbp), %rdx
	pushq %rdx
	movq -96(%rbp), %rdx
	pushq %rdx
	call quickSort
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

main:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $208, %rsp
	movq $9, %rdx
	movq %rdx, -32(%rbp)
	movq $3, %rdx
	movq %rdx, -40(%rbp)
	movq $4, %rdx
	movq %rdx, -48(%rbp)
	movq $2, %rdx
	movq %rdx, -56(%rbp)
	movq $1, %rdx
	movq %rdx, -64(%rbp)
	movq $8, %rdx
	movq %rdx, -72(%rbp)
	movq $1, %rdx
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	neg %rdx
	movq %rdx, -80(%rbp)
	movq $64, %rdx
	movq %rdx, -88(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -88(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -88(%rbp)
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	movq -88(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq $7, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq -32(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq -40(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq -56(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq -64(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq -72(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq -80(%rbp), %rcx
	movq %rcx, (%rdx)
	movq -88(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -120(%rbp)
	movq $0, %rdx
	movq %rdx, -128(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -136(%rbp)
	movq $1, %rdx
	movq %rdx, -144(%rbp)
	movq -136(%rbp), %rcx
	movq -144(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -136(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -136(%rbp), %rdx
	pushq %rdx
	movq -128(%rbp), %rdx
	pushq %rdx
	movq -120(%rbp), %rdx
	pushq %rdx
	call quickSort
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	movq $0, %rdx
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -152(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -160(%rbp)
	movq $0, %rdx
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -168(%rbp)
	jmp L13
L12:
	movq -168(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -168(%rbp)
	movq -168(%rbp), %rdx
	movq %rdx, -24(%rbp)
L13:
	movq -168(%rbp), %rdx
	movq -160(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -176(%rbp)
	movq -176(%rbp), %rdx
	cmpq $0, %rdx
	je L14
	movq -8(%rbp), %rdx
	movq %rdx, -184(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -192(%rbp)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -200(%rbp)
	movq -184(%rbp), %rcx
	movq -200(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -200(%rbp)
	movq $8, %rcx
	movq -200(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -200(%rbp)
	movq -200(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -208(%rbp)
	pushq %rax
	pushq %rcx
	pushq %rdx
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -208(%rbp), %rdx
	pushq %rdx
	call print_int
	movq %rbx, %rsp
	popq %r11
	popq %r10
	popq %r9
	popq %r8
	popq %rsi
	popq %rdi
	popq %rdx
	popq %rcx
	popq %rax
	jmp L12
L14:
	movq $0, %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

print_int:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rsi
	lea format_print_int(%rip), %rdi
	xorq %rax, %rax
	callq printf@plt
	leave
	ret

print_float:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rsi
	lea format_print_int(%rip), %rdi
	xorq %rax, %rax
	callq printf@plt
	leave
	ret

print_bool:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rcx
	cmp $0, %rcx
	jne print_true_label
	lea format_print_false(%rip), %rdi
	jmp print_false_exit
print_true_label:
	lea format_print_true(%rip), %rdi
print_false_exit:
	xorq %rax, %rax
	callq printf@plt
	leave
	ret

print_str:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rsi
	lea format_print_str(%rip), %rdi
	xorq %rax, %rax
	callq printf@plt
	leave
	ret

allocmem:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rdi
	callq malloc
	leave
	ret

strcmpl:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rdi
	movq 24(%rbp), %rsi
	callq strcmp
	cmp $0, %eax
	movq $0, %rdx
	setl %dl
	movq %rdx, %rax
	leave
	ret

strcmpg:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rdi
	movq 24(%rbp), %rsi
	callq strcmp
	cmp $0, %eax
	movq $0, %rdx
	setg %dl
	movq %rdx, %rax
	leave
	ret

strcmpe:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rdi
	movq 24(%rbp), %rsi
	callq strcmp
	cmp $0, %eax
	movq $0, %rdx
	sete %dl
	movq %rdx, %rax
	leave
	ret

strcmpne:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rdi
	movq 24(%rbp), %rsi
	callq strcmp
	cmp $0, %eax
	movq $0, %rdx
	setne %dl
	movq %rdx, %rax
	leave
	ret

strcmple:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rdi
	movq 24(%rbp), %rsi
	callq strcmp
	cmp $0, %eax
	movq $0, %rdx
	setle %dl
	movq %rdx, %rax
	leave
	ret

strcmpge:
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rbp), %rdi
	movq 24(%rbp), %rsi
	callq strcmp
	cmp $0, %eax
	movq $0, %rdx
	setge %dl
	movq %rdx, %rax
	leave
	ret

.power:
	pushq %rbp
	movq %rsp, %rbp
	subq $-32, %rsp
	movq $0, -24(%rbp)
	movq $1, -32(%rbp)
	jmp	.L2
.L3:
	movq -32(%rbp), %rax
	imulq 16(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $1, -24(%rbp)
.L2:
	movq -24(%rbp), %rax
	cmpq 24(%rbp), %rax
	jl .L3
	movq -32(%rbp), %rax
	leave
	ret

