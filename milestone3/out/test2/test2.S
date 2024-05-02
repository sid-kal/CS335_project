.data
format_print_str: .asciz "%s\n"
format_print_int: .asciz "%ld\n"
format_print_true: .asciz "True\n"
format_print_false: .asciz "False\n"
str0: .asciz "Deposited and New balance: "
str1: .asciz "Withdrew and New balance: "
str2: .asciz "Insufficient funds!"
str3: .asciz "Account Number and Balance: "
str4: .asciz "Interest added and New balance:"
str5: .asciz "Withdrew and New balance:"
str6: .asciz "Transaction declined! Overdraft limit exceeded."
str7: .asciz "SA001"
str8: .asciz "--------------------------------"
str9: .asciz "CA001"


.text
.globl main


BankAccount.__init__:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $48, %rsp
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
	movq 56(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq $8, %rcx
	movq -40(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq -40(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

BankAccount.deposit:
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
	movq $8, %rcx
	movq -16(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -24(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -24(%rbp), %rcx
	movq -32(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq -16(%rbp), %rdx
	movq -40(%rbp), %rcx
	movq %rcx, (%rdx)
	lea str0(%rip), %rdx
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
	movq 64(%rbp), %rdx
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
	movq 56(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq $8, %rcx
	movq -72(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -72(%rbp)
	movq -72(%rbp), %rdx
	movq (%rdx), %rcx
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -80(%rbp), %rdx
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
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

BankAccount.withdraw:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $120, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq $8, %rcx
	movq -16(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -24(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -24(%rbp), %rdx
	movq -32(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setge %dl
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	cmpq $0, %rdx
	je L0
	movq 56(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq $8, %rcx
	movq -48(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -48(%rbp)
	movq -48(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -56(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq -56(%rbp), %rcx
	movq -64(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -72(%rbp)
	movq -48(%rbp), %rdx
	movq -72(%rbp), %rcx
	movq %rcx, (%rdx)
	lea str1(%rip), %rdx
	movq %rdx, -80(%rbp)
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
	movq -80(%rbp), %rdx
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
	movq 64(%rbp), %rdx
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
	movq 56(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq $8, %rcx
	movq -104(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -112(%rbp)
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
	movq -112(%rbp), %rdx
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
	jmp L1
L0:
	lea str2(%rip), %rdx
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -120(%rbp), %rdx
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
L1:
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

BankAccount.display:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $56, %rsp
	lea str3(%rip), %rdx
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
	movq 56(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq $0, %rcx
	movq -24(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -32(%rbp)
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
	movq 56(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq $8, %rcx
	movq -48(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -48(%rbp)
	movq -48(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -56(%rbp)
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
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

SavingsAccount.__init__:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $72, %rsp
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
	movq 56(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq $8, %rcx
	movq -40(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq -40(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq 56(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq -56(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq $16, %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq -64(%rbp), %rdx
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

SavingsAccount.add_interest:
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
	movq -16(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq $8, %rcx
	movq -24(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -32(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq $16, %rcx
	movq -48(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -48(%rbp)
	movq -48(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -56(%rbp)
	movq $100, %rdx
	movq %rdx, -64(%rbp)
	movq -64(%rbp), %rcx
	movq -56(%rbp), %rax
	cqto
	idivq %rcx
	movq %rax, -56(%rbp)
	movq -32(%rbp), %rcx
	movq -56(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq -72(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq $8, %rcx
	movq -80(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -88(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq -88(%rbp), %rcx
	movq -96(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -104(%rbp)
	movq -80(%rbp), %rdx
	movq -104(%rbp), %rcx
	movq %rcx, (%rdx)
	lea str4(%rip), %rdx
	movq %rdx, -112(%rbp)
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
	movq -112(%rbp), %rdx
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
	movq -8(%rbp), %rdx
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -120(%rbp), %rdx
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
	movq 56(%rbp), %rdx
	movq %rdx, -128(%rbp)
	movq -128(%rbp), %rdx
	movq %rdx, -136(%rbp)
	movq $8, %rcx
	movq -136(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -136(%rbp)
	movq -136(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -144(%rbp)
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
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

CheckingAccount.__init__:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $72, %rsp
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
	movq 56(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq $8, %rcx
	movq -40(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq -40(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq 56(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq -56(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq $16, %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq 80(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq -64(%rbp), %rdx
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

CheckingAccount.withdraw:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $144, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq $8, %rcx
	movq -16(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -24(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq $16, %rcx
	movq -40(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -40(%rbp)
	movq -40(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -48(%rbp)
	movq -24(%rbp), %rcx
	movq -48(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -24(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq -24(%rbp), %rdx
	movq -56(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setge %dl
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	cmpq $0, %rdx
	je L2
	movq 56(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq $8, %rcx
	movq -72(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -72(%rbp)
	movq -72(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -80(%rbp)
	movq 64(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq -80(%rbp), %rcx
	movq -88(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -72(%rbp), %rdx
	movq -96(%rbp), %rcx
	movq %rcx, (%rdx)
	lea str5(%rip), %rdx
	movq %rdx, -104(%rbp)
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
	movq 64(%rbp), %rdx
	movq %rdx, -112(%rbp)
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
	movq -112(%rbp), %rdx
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
	movq 56(%rbp), %rdx
	movq %rdx, -120(%rbp)
	movq -120(%rbp), %rdx
	movq %rdx, -128(%rbp)
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
	jmp L3
L2:
	lea str6(%rip), %rdx
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
L3:
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
	subq $192, %rsp
	lea str7(%rip), %rdx
	movq %rdx, -24(%rbp)
	movq $1000, %rdx
	movq %rdx, -32(%rbp)
	movq $200, %rdx
	movq %rdx, -40(%rbp)
	movq $24, %rdx
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
	addq $-32, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -40(%rbp), %rdx
	pushq %rdx
	movq -32(%rbp), %rdx
	pushq %rdx
	movq -24(%rbp), %rdx
	pushq %rdx
	movq -48(%rbp), %rdx
	pushq %rdx
	call SavingsAccount.__init__
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
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq $500, %rdx
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -64(%rbp), %rdx
	pushq %rdx
	movq -56(%rbp), %rdx
	pushq %rdx
	call BankAccount.deposit
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
	movq -8(%rbp), %rdx
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
	call SavingsAccount.add_interest
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
	movq -8(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq $200, %rdx
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -88(%rbp), %rdx
	pushq %rdx
	movq -80(%rbp), %rdx
	pushq %rdx
	call BankAccount.withdraw
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
	movq -8(%rbp), %rdx
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
	call BankAccount.display
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
	lea str8(%rip), %rdx
	movq %rdx, -104(%rbp)
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
	lea str9(%rip), %rdx
	movq %rdx, -112(%rbp)
	movq $2000, %rdx
	movq %rdx, -120(%rbp)
	movq $500, %rdx
	movq %rdx, -128(%rbp)
	movq $24, %rdx
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
	movq -128(%rbp), %rdx
	pushq %rdx
	movq -120(%rbp), %rdx
	pushq %rdx
	movq -112(%rbp), %rdx
	pushq %rdx
	movq -136(%rbp), %rdx
	pushq %rdx
	call CheckingAccount.__init__
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
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -144(%rbp)
	movq $1000, %rdx
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -152(%rbp), %rdx
	pushq %rdx
	movq -144(%rbp), %rdx
	pushq %rdx
	call BankAccount.deposit
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
	movq %rdx, -160(%rbp)
	movq $3000, %rdx
	movq %rdx, -168(%rbp)
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
	movq -168(%rbp), %rdx
	pushq %rdx
	movq -160(%rbp), %rdx
	pushq %rdx
	call CheckingAccount.withdraw
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
	movq %rdx, -176(%rbp)
	movq $500, %rdx
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
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -184(%rbp), %rdx
	pushq %rdx
	movq -176(%rbp), %rdx
	pushq %rdx
	call CheckingAccount.withdraw
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
	movq %rdx, -192(%rbp)
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
	movq -192(%rbp), %rdx
	pushq %rdx
	call BankAccount.display
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

