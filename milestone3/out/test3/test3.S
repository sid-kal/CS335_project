.data
format_print_str: .asciz "%s\n"
format_print_int: .asciz "%ld\n"
format_print_true: .asciz "True\n"
format_print_false: .asciz "False\n"
str0: .asciz "mySudoku"
str1: .asciz ""
str2: .asciz "Solution found:"
str3: .asciz "No solution exists."


.text
.globl main


Solution.__init__:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $24, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq $0, %rcx
	movq -16(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -16(%rbp)
	lea str0(%rip), %rdx
	movq %rdx, -24(%rbp)
	movq -16(%rbp), %rdx
	movq -24(%rbp), %rcx
	movq %rcx, (%rdx)
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Solution.printGrid:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $144, %rsp
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq $9, %rdx
	movq %rdx, -32(%rbp)
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -40(%rbp)
	jmp L1
L0:
	movq -40(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -8(%rbp)
L1:
	movq -40(%rbp), %rdx
	movq -32(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -48(%rbp)
	movq -48(%rbp), %rdx
	cmpq $0, %rdx
	je L5
	movq -16(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq $9, %rdx
	movq %rdx, -64(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -72(%rbp)
	jmp L3
L2:
	movq -72(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -72(%rbp)
	movq -72(%rbp), %rdx
	movq %rdx, -16(%rbp)
L3:
	movq -72(%rbp), %rdx
	movq -64(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	cmpq $0, %rdx
	je L4
	movq 64(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -88(%rbp), %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -112(%rbp)
	movq -16(%rbp), %rdx
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
	movq -136(%rbp), %rdx
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
	jmp L2
L4:
	lea str1(%rip), %rdx
	movq %rdx, -144(%rbp)
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
	movq -144(%rbp), %rdx
	pushq %rdx
	call print_str
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
	jmp L0
L5:
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Solution.used_in_row:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $120, %rsp
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq $9, %rdx
	movq %rdx, -24(%rbp)
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -32(%rbp)
	jmp L7
L6:
	movq -32(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -8(%rbp)
L7:
	movq -32(%rbp), %rdx
	movq -24(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -40(%rbp)
	movq -40(%rbp), %rdx
	cmpq $0, %rdx
	je L9
	movq 64(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq 72(%rbp), %rdx
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
	movq -8(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq $8, %rcx
	movq -80(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq -72(%rbp), %rcx
	movq -88(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq $8, %rcx
	movq -88(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq -88(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -96(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq -96(%rbp), %rdx
	movq -104(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	sete %dl
	movq %rdx, -96(%rbp)
	movq -96(%rbp), %rdx
	cmpq $0, %rdx
	je L8
	movq $1, %rdx
	movq %rdx, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L8
L8:
	jmp L6
L9:
	movq $0, %rdx
	movq %rdx, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Solution.used_in_col:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $120, %rsp
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq $9, %rdx
	movq %rdx, -24(%rbp)
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -32(%rbp)
	jmp L11
L10:
	movq -32(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -8(%rbp)
L11:
	movq -32(%rbp), %rdx
	movq -24(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -40(%rbp)
	movq -40(%rbp), %rdx
	cmpq $0, %rdx
	je L13
	movq 64(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq -8(%rbp), %rdx
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
	movq 72(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq $8, %rcx
	movq -80(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq -72(%rbp), %rcx
	movq -88(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq $8, %rcx
	movq -88(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq -88(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -96(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq -96(%rbp), %rdx
	movq -104(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	sete %dl
	movq %rdx, -96(%rbp)
	movq -96(%rbp), %rdx
	cmpq $0, %rdx
	je L12
	movq $1, %rdx
	movq %rdx, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L12
L12:
	jmp L10
L13:
	movq $0, %rdx
	movq %rdx, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Solution.used_in_box:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $176, %rsp
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq $3, %rdx
	movq %rdx, -32(%rbp)
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -40(%rbp)
	jmp L15
L14:
	movq -40(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -8(%rbp)
L15:
	movq -40(%rbp), %rdx
	movq -32(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -48(%rbp)
	movq -48(%rbp), %rdx
	cmpq $0, %rdx
	je L20
	movq -16(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq $3, %rdx
	movq %rdx, -64(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -72(%rbp)
	jmp L17
L16:
	movq -72(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -72(%rbp)
	movq -72(%rbp), %rdx
	movq %rdx, -16(%rbp)
L17:
	movq -72(%rbp), %rdx
	movq -64(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	cmpq $0, %rdx
	je L19
	movq 64(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq -96(%rbp), %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -88(%rbp), %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -120(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -128(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -136(%rbp)
	movq -128(%rbp), %rcx
	movq -136(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -128(%rbp)
	movq $8, %rcx
	movq -128(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -144(%rbp)
	movq -120(%rbp), %rcx
	movq -144(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -144(%rbp)
	movq $8, %rcx
	movq -144(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -144(%rbp)
	movq -144(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -152(%rbp)
	movq 88(%rbp), %rdx
	movq %rdx, -160(%rbp)
	movq -152(%rbp), %rdx
	movq -160(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	sete %dl
	movq %rdx, -152(%rbp)
	movq -152(%rbp), %rdx
	cmpq $0, %rdx
	je L18
	movq $1, %rdx
	movq %rdx, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L18
L18:
	jmp L16
L19:
	jmp L14
L20:
	movq $0, %rdx
	movq %rdx, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Solution.check_location_is_safe:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $160, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq 88(%rbp), %rdx
	movq %rdx, -32(%rbp)
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
	addq $-32, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -32(%rbp), %rdx
	pushq %rdx
	movq -24(%rbp), %rdx
	pushq %rdx
	movq -16(%rbp), %rdx
	pushq %rdx
	movq -8(%rbp), %rdx
	pushq %rdx
	call Solution.used_in_row
	movq %rax, -40(%rbp)
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
	movq -40(%rbp), %rcx
	movq $1, %rdx
	xorq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq 88(%rbp), %rdx
	movq %rdx, -72(%rbp)
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
	addq $-32, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -72(%rbp), %rdx
	pushq %rdx
	movq -64(%rbp), %rdx
	pushq %rdx
	movq -56(%rbp), %rdx
	pushq %rdx
	movq -48(%rbp), %rdx
	pushq %rdx
	call Solution.used_in_col
	movq %rax, -80(%rbp)
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
	movq -80(%rbp), %rcx
	movq $1, %rdx
	xorq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq -40(%rbp), %rcx
	movq -80(%rbp), %rdx
	andq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq $3, %rdx
	movq %rdx, -120(%rbp)
	movq -120(%rbp), %rcx
	movq -112(%rbp), %rax
	cqto
	idivq %rcx
	movq %rdx, -112(%rbp)
	movq -104(%rbp), %rcx
	movq -112(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -128(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -136(%rbp)
	movq $3, %rdx
	movq %rdx, -144(%rbp)
	movq -144(%rbp), %rcx
	movq -136(%rbp), %rax
	cqto
	idivq %rcx
	movq %rdx, -136(%rbp)
	movq -128(%rbp), %rcx
	movq -136(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -128(%rbp)
	movq 88(%rbp), %rdx
	movq %rdx, -152(%rbp)
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
	addq $-40, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -152(%rbp), %rdx
	pushq %rdx
	movq -128(%rbp), %rdx
	pushq %rdx
	movq -104(%rbp), %rdx
	pushq %rdx
	movq -96(%rbp), %rdx
	pushq %rdx
	movq -88(%rbp), %rdx
	pushq %rdx
	call Solution.used_in_box
	movq %rax, -160(%rbp)
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
	movq -160(%rbp), %rcx
	movq $1, %rdx
	xorq %rdx, %rcx
	movq %rcx, -160(%rbp)
	movq -40(%rbp), %rcx
	movq -160(%rbp), %rdx
	andq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq -40(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Solution.find_empty_location:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $240, %rsp
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq $9, %rdx
	movq %rdx, -32(%rbp)
	movq $0, %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -40(%rbp)
	jmp L22
L21:
	movq -40(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -8(%rbp)
L22:
	movq -40(%rbp), %rdx
	movq -32(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -48(%rbp)
	movq -48(%rbp), %rdx
	cmpq $0, %rdx
	je L27
	movq -16(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq $9, %rdx
	movq %rdx, -64(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -72(%rbp)
	jmp L24
L23:
	movq -72(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -72(%rbp)
	movq -72(%rbp), %rdx
	movq %rdx, -16(%rbp)
L24:
	movq -72(%rbp), %rdx
	movq -64(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	cmpq $0, %rdx
	je L26
	movq 64(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq $8, %rcx
	movq -96(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -88(%rbp), %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -112(%rbp)
	movq -16(%rbp), %rdx
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
	movq $0, %rdx
	movq %rdx, -144(%rbp)
	movq -136(%rbp), %rdx
	movq -144(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	sete %dl
	movq %rdx, -136(%rbp)
	movq -136(%rbp), %rdx
	cmpq $0, %rdx
	je L25
	movq 72(%rbp), %rdx
	movq %rdx, -152(%rbp)
	movq $0, %rdx
	movq %rdx, -160(%rbp)
	movq $8, %rcx
	movq -160(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -168(%rbp)
	movq -152(%rbp), %rcx
	movq -168(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -168(%rbp)
	movq $8, %rcx
	movq -168(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -168(%rbp)
	movq -168(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -176(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -184(%rbp)
	movq -168(%rbp), %rdx
	movq -184(%rbp), %rcx
	movq %rcx, (%rdx)
	movq 72(%rbp), %rdx
	movq %rdx, -192(%rbp)
	movq $1, %rdx
	movq %rdx, -200(%rbp)
	movq $8, %rcx
	movq -200(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -208(%rbp)
	movq -192(%rbp), %rcx
	movq -208(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -208(%rbp)
	movq $8, %rcx
	movq -208(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -208(%rbp)
	movq -208(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -216(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -224(%rbp)
	movq -208(%rbp), %rdx
	movq -224(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $1, %rdx
	movq %rdx, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L25
L25:
	jmp L23
L26:
	jmp L21
L27:
	movq $0, %rdx
	movq %rdx, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Solution.SolveSudoku:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $424, %rsp
	movq $0, %rdx
	movq %rdx, -40(%rbp)
	movq $0, %rdx
	movq %rdx, -48(%rbp)
	movq $24, %rdx
	movq %rdx, -56(%rbp)
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
	movq -56(%rbp), %rdx
	pushq %rdx
	call allocmem
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
	movq %rdx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq $2, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq -40(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq -56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq -8(%rbp), %rdx
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
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -88(%rbp), %rdx
	pushq %rdx
	movq -80(%rbp), %rdx
	pushq %rdx
	movq -72(%rbp), %rdx
	pushq %rdx
	call Solution.find_empty_location
	movq %rax, -96(%rbp)
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
	movq -96(%rbp), %rcx
	movq $1, %rdx
	xorq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	cmpq $0, %rdx
	je L28
	movq $1, %rdx
	movq %rdx, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L28
L28:
	movq -8(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq $0, %rdx
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
	movq -136(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -144(%rbp)
	movq $1, %rdx
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
	movq -168(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq $0, %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -176(%rbp)
	movq $1, %rdx
	movq %rdx, -184(%rbp)
	movq $10, %rdx
	movq %rdx, -192(%rbp)
	movq -184(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -200(%rbp)
	jmp L30
L29:
	movq -200(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -200(%rbp)
	movq -200(%rbp), %rdx
	movq %rdx, -32(%rbp)
L30:
	movq -200(%rbp), %rdx
	movq -192(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -208(%rbp)
	movq -208(%rbp), %rdx
	cmpq $0, %rdx
	je L33
	movq 56(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -224(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -232(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -240(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -248(%rbp)
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
	addq $-40, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -248(%rbp), %rdx
	pushq %rdx
	movq -240(%rbp), %rdx
	pushq %rdx
	movq -232(%rbp), %rdx
	pushq %rdx
	movq -224(%rbp), %rdx
	pushq %rdx
	movq -216(%rbp), %rdx
	pushq %rdx
	call Solution.check_location_is_safe
	movq %rax, -256(%rbp)
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
	movq -256(%rbp), %rdx
	cmpq $0, %rdx
	je L32
	movq 64(%rbp), %rdx
	movq %rdx, -264(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -272(%rbp)
	movq $8, %rcx
	movq -272(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -264(%rbp), %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -288(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -296(%rbp)
	movq $8, %rcx
	movq -296(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -304(%rbp)
	movq -288(%rbp), %rcx
	movq -304(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -304(%rbp)
	movq $8, %rcx
	movq -304(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -304(%rbp)
	movq -304(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -312(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -320(%rbp)
	movq -304(%rbp), %rdx
	movq -320(%rbp), %rcx
	movq %rcx, (%rdx)
	movq 56(%rbp), %rdx
	movq %rdx, -328(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -336(%rbp)
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -336(%rbp), %rdx
	pushq %rdx
	movq -328(%rbp), %rdx
	pushq %rdx
	call Solution.SolveSudoku
	movq %rax, -344(%rbp)
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
	movq -344(%rbp), %rdx
	cmpq $0, %rdx
	je L31
	movq $1, %rdx
	movq %rdx, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L31
L31:
	movq 64(%rbp), %rdx
	movq %rdx, -360(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -368(%rbp)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -376(%rbp)
	movq -360(%rbp), %rcx
	movq -376(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -376(%rbp)
	movq $8, %rcx
	movq -376(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -376(%rbp)
	movq -376(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -384(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -392(%rbp)
	movq $8, %rcx
	movq -392(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -400(%rbp)
	movq -384(%rbp), %rcx
	movq -400(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -400(%rbp)
	movq $8, %rcx
	movq -400(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -400(%rbp)
	movq -400(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -408(%rbp)
	movq $0, %rdx
	movq %rdx, -416(%rbp)
	movq -400(%rbp), %rdx
	movq -416(%rbp), %rcx
	movq %rcx, (%rdx)
	jmp L32
L32:
	jmp L29
L33:
	movq $0, %rdx
	movq %rdx, -424(%rbp)
	movq -424(%rbp), %rax
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
	subq $888, %rsp
	movq $3, %rdx
	movq %rdx, -24(%rbp)
	movq $0, %rdx
	movq %rdx, -32(%rbp)
	movq $6, %rdx
	movq %rdx, -40(%rbp)
	movq $5, %rdx
	movq %rdx, -48(%rbp)
	movq $0, %rdx
	movq %rdx, -56(%rbp)
	movq $8, %rdx
	movq %rdx, -64(%rbp)
	movq $4, %rdx
	movq %rdx, -72(%rbp)
	movq $0, %rdx
	movq %rdx, -80(%rbp)
	movq $0, %rdx
	movq %rdx, -88(%rbp)
	movq $80, %rdx
	movq %rdx, -96(%rbp)
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
	movq -96(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -96(%rbp)
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
	movq -96(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -24(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -32(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -40(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -56(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -64(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -72(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -80(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq -88(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $5, %rdx
	movq %rdx, -112(%rbp)
	movq $2, %rdx
	movq %rdx, -120(%rbp)
	movq $0, %rdx
	movq %rdx, -128(%rbp)
	movq $0, %rdx
	movq %rdx, -136(%rbp)
	movq $0, %rdx
	movq %rdx, -144(%rbp)
	movq $0, %rdx
	movq %rdx, -152(%rbp)
	movq $0, %rdx
	movq %rdx, -160(%rbp)
	movq $0, %rdx
	movq %rdx, -168(%rbp)
	movq $0, %rdx
	movq %rdx, -176(%rbp)
	movq $80, %rdx
	movq %rdx, -184(%rbp)
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
	movq -184(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -184(%rbp)
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
	movq -184(%rbp), %rdx
	movq %rdx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -112(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -120(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -128(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -136(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -144(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -152(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -160(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -168(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -192(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -192(%rbp)
	movq -192(%rbp), %rdx
	movq -176(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $0, %rdx
	movq %rdx, -200(%rbp)
	movq $8, %rdx
	movq %rdx, -208(%rbp)
	movq $7, %rdx
	movq %rdx, -216(%rbp)
	movq $0, %rdx
	movq %rdx, -224(%rbp)
	movq $0, %rdx
	movq %rdx, -232(%rbp)
	movq $0, %rdx
	movq %rdx, -240(%rbp)
	movq $0, %rdx
	movq %rdx, -248(%rbp)
	movq $3, %rdx
	movq %rdx, -256(%rbp)
	movq $1, %rdx
	movq %rdx, -264(%rbp)
	movq $80, %rdx
	movq %rdx, -272(%rbp)
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
	movq -272(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -272(%rbp)
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
	movq -272(%rbp), %rdx
	movq %rdx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -200(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -208(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -216(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -224(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -232(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -240(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -248(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -256(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -280(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -280(%rbp)
	movq -280(%rbp), %rdx
	movq -264(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $0, %rdx
	movq %rdx, -288(%rbp)
	movq $0, %rdx
	movq %rdx, -296(%rbp)
	movq $3, %rdx
	movq %rdx, -304(%rbp)
	movq $0, %rdx
	movq %rdx, -312(%rbp)
	movq $1, %rdx
	movq %rdx, -320(%rbp)
	movq $0, %rdx
	movq %rdx, -328(%rbp)
	movq $0, %rdx
	movq %rdx, -336(%rbp)
	movq $8, %rdx
	movq %rdx, -344(%rbp)
	movq $0, %rdx
	movq %rdx, -352(%rbp)
	movq $80, %rdx
	movq %rdx, -360(%rbp)
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
	movq -360(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -360(%rbp)
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
	movq -360(%rbp), %rdx
	movq %rdx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -288(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -296(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -304(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -312(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -320(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -328(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -336(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -344(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -368(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq -352(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $9, %rdx
	movq %rdx, -376(%rbp)
	movq $0, %rdx
	movq %rdx, -384(%rbp)
	movq $0, %rdx
	movq %rdx, -392(%rbp)
	movq $8, %rdx
	movq %rdx, -400(%rbp)
	movq $6, %rdx
	movq %rdx, -408(%rbp)
	movq $3, %rdx
	movq %rdx, -416(%rbp)
	movq $0, %rdx
	movq %rdx, -424(%rbp)
	movq $0, %rdx
	movq %rdx, -432(%rbp)
	movq $5, %rdx
	movq %rdx, -440(%rbp)
	movq $80, %rdx
	movq %rdx, -448(%rbp)
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
	movq -448(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -448(%rbp)
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
	movq -448(%rbp), %rdx
	movq %rdx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -376(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -384(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -392(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -400(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -408(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -416(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -424(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -432(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -456(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -456(%rbp)
	movq -456(%rbp), %rdx
	movq -440(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $0, %rdx
	movq %rdx, -464(%rbp)
	movq $5, %rdx
	movq %rdx, -472(%rbp)
	movq $0, %rdx
	movq %rdx, -480(%rbp)
	movq $0, %rdx
	movq %rdx, -488(%rbp)
	movq $9, %rdx
	movq %rdx, -496(%rbp)
	movq $0, %rdx
	movq %rdx, -504(%rbp)
	movq $6, %rdx
	movq %rdx, -512(%rbp)
	movq $0, %rdx
	movq %rdx, -520(%rbp)
	movq $0, %rdx
	movq %rdx, -528(%rbp)
	movq $80, %rdx
	movq %rdx, -536(%rbp)
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
	movq -536(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -536(%rbp)
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
	movq -536(%rbp), %rdx
	movq %rdx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -464(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -472(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -480(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -488(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -496(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -504(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -512(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -520(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -544(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq -528(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $1, %rdx
	movq %rdx, -552(%rbp)
	movq $3, %rdx
	movq %rdx, -560(%rbp)
	movq $0, %rdx
	movq %rdx, -568(%rbp)
	movq $0, %rdx
	movq %rdx, -576(%rbp)
	movq $0, %rdx
	movq %rdx, -584(%rbp)
	movq $0, %rdx
	movq %rdx, -592(%rbp)
	movq $2, %rdx
	movq %rdx, -600(%rbp)
	movq $5, %rdx
	movq %rdx, -608(%rbp)
	movq $0, %rdx
	movq %rdx, -616(%rbp)
	movq $80, %rdx
	movq %rdx, -624(%rbp)
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
	movq -624(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -624(%rbp)
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
	movq -624(%rbp), %rdx
	movq %rdx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -552(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -560(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -568(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -576(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -584(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -592(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -600(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -608(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -632(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -632(%rbp)
	movq -632(%rbp), %rdx
	movq -616(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $0, %rdx
	movq %rdx, -640(%rbp)
	movq $0, %rdx
	movq %rdx, -648(%rbp)
	movq $0, %rdx
	movq %rdx, -656(%rbp)
	movq $0, %rdx
	movq %rdx, -664(%rbp)
	movq $0, %rdx
	movq %rdx, -672(%rbp)
	movq $0, %rdx
	movq %rdx, -680(%rbp)
	movq $0, %rdx
	movq %rdx, -688(%rbp)
	movq $7, %rdx
	movq %rdx, -696(%rbp)
	movq $4, %rdx
	movq %rdx, -704(%rbp)
	movq $80, %rdx
	movq %rdx, -712(%rbp)
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
	movq -712(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -712(%rbp)
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
	movq -712(%rbp), %rdx
	movq %rdx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -640(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -648(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -656(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -664(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -672(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -680(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -688(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -696(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -720(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -720(%rbp)
	movq -720(%rbp), %rdx
	movq -704(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $0, %rdx
	movq %rdx, -728(%rbp)
	movq $0, %rdx
	movq %rdx, -736(%rbp)
	movq $5, %rdx
	movq %rdx, -744(%rbp)
	movq $2, %rdx
	movq %rdx, -752(%rbp)
	movq $0, %rdx
	movq %rdx, -760(%rbp)
	movq $6, %rdx
	movq %rdx, -768(%rbp)
	movq $3, %rdx
	movq %rdx, -776(%rbp)
	movq $0, %rdx
	movq %rdx, -784(%rbp)
	movq $0, %rdx
	movq %rdx, -792(%rbp)
	movq $80, %rdx
	movq %rdx, -800(%rbp)
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
	movq -800(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -800(%rbp)
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
	movq -800(%rbp), %rdx
	movq %rdx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -728(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -736(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -744(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -752(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -760(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -768(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -776(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -784(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -808(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq -792(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $80, %rdx
	movq %rdx, -816(%rbp)
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
	movq -816(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -816(%rbp)
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
	movq -816(%rbp), %rdx
	movq %rdx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq $9, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -96(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -184(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -272(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -360(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -448(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -536(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -624(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -712(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -824(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -824(%rbp)
	movq -824(%rbp), %rdx
	movq -800(%rbp), %rcx
	movq %rcx, (%rdx)
	movq -816(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq $8, %rdx
	movq %rdx, -832(%rbp)
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
	movq -832(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -832(%rbp)
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
	movq -832(%rbp), %rdx
	pushq %rdx
	call Solution.__init__
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
	movq -832(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -840(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -848(%rbp)
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -848(%rbp), %rdx
	pushq %rdx
	movq -840(%rbp), %rdx
	pushq %rdx
	call Solution.SolveSudoku
	movq %rax, -856(%rbp)
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
	movq -856(%rbp), %rdx
	cmpq $0, %rdx
	je L34
	lea str2(%rip), %rdx
	movq %rdx, -864(%rbp)
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
	movq -864(%rbp), %rdx
	pushq %rdx
	call print_str
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
	movq -16(%rbp), %rdx
	movq %rdx, -872(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -880(%rbp)
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -880(%rbp), %rdx
	pushq %rdx
	movq -872(%rbp), %rdx
	pushq %rdx
	call Solution.printGrid
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
	jmp L35
L34:
	lea str3(%rip), %rdx
	movq %rdx, -888(%rbp)
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
	movq -888(%rbp), %rdx
	pushq %rdx
	call print_str
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
L35:
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

