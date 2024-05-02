.data
format_print_str: .asciz "%s\n"
format_print_int: .asciz "%ld\n"
format_print_true: .asciz "True\n"
format_print_false: .asciz "False\n"
str0: .asciz "str0"
str1: .asciz "str1"
str2: .asciz "str2"


.text
.globl main


bar.__init__:
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
	movq 64(%rbp), %rdx
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

foo.__init__:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $80, %rsp
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
	movq $8, %rdx
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -32(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -32(%rbp)
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -24(%rbp), %rdx
	pushq %rdx
	movq -32(%rbp), %rdx
	pushq %rdx
	call bar.__init__
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
	lea str1(%rip), %rdx
	movq %rdx, -40(%rbp)
	movq $8, %rdx
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -48(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -48(%rbp)
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -40(%rbp), %rdx
	pushq %rdx
	movq -48(%rbp), %rdx
	pushq %rdx
	call bar.__init__
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
	lea str2(%rip), %rdx
	movq %rdx, -56(%rbp)
	movq $8, %rdx
	movq %rdx, -64(%rbp)
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
	movq -64(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -64(%rbp)
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -56(%rbp), %rdx
	pushq %rdx
	movq -64(%rbp), %rdx
	pushq %rdx
	call bar.__init__
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
	movq $32, %rdx
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -72(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -72(%rbp)
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
	movq -72(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq $3, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -80(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq -32(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -80(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -80(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq -64(%rbp), %rcx
	movq %rcx, (%rdx)
	movq -16(%rbp), %rdx
	movq -72(%rbp), %rcx
	movq %rcx, (%rdx)
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

myClass.__init__:
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
	movq $2, %rdx
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

myClass.fn:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $8, %rsp
	movq $8, %rdx
	movq %rdx, -8(%rbp)
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
	movq -8(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -8(%rbp)
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
	movq -8(%rbp), %rdx
	pushq %rdx
	call foo.__init__
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
	movq -8(%rbp), %rax
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
	subq $168, %rsp
	movq $8, %rdx
	movq %rdx, -24(%rbp)
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
	movq -24(%rbp), %rdx
	pushq %rdx
	call allocmem
	movq %rax, -24(%rbp)
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
	movq -24(%rbp), %rdx
	pushq %rdx
	call myClass.__init__
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
	movq %rdx, -8(%rbp)
	movq $1, %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -40(%rbp)
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
	movq -40(%rbp), %rdx
	pushq %rdx
	call myClass.fn
	movq %rax, -48(%rbp)
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
	movq -48(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq $0, %rcx
	movq -56(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -56(%rbp)
	movq -56(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -64(%rbp)
	movq $1, %rdx
	movq %rdx, -72(%rbp)
	movq $8, %rcx
	movq -72(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq -64(%rbp), %rcx
	movq -80(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq $8, %rcx
	movq -80(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -88(%rbp)
	movq -88(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq $0, %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -104(%rbp)
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
	movq -104(%rbp), %rdx
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
	movq $1, %rdx
	movq %rdx, -112(%rbp)
	movq $2, %rdx
	movq %rdx, -120(%rbp)
	movq $3, %rdx
	movq %rdx, -128(%rbp)
	movq $32, %rdx
	movq %rdx, -136(%rbp)
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
	call allocmem
	movq %rax, -136(%rbp)
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
	movq -136(%rbp), %rdx
	movq %rdx, -144(%rbp)
	movq -144(%rbp), %rdx
	movq $3, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -144(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -144(%rbp)
	movq -144(%rbp), %rdx
	movq -112(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -144(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -144(%rbp)
	movq -144(%rbp), %rdx
	movq -120(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -144(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -144(%rbp)
	movq -144(%rbp), %rdx
	movq -128(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $1, %rdx
	movq %rdx, -152(%rbp)
	movq $8, %rcx
	movq -152(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -160(%rbp)
	movq -136(%rbp), %rcx
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
	movq -168(%rbp), %rdx
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

