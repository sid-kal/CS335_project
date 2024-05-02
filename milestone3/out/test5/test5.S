.data
format_print_str: .asciz "%s\n"
format_print_int: .asciz "%ld\n"
format_print_true: .asciz "True\n"
format_print_false: .asciz "False\n"
str0: .asciz "Arithmetic operators:"
str1: .asciz "\nRelational operators:"
str2: .asciz "\nLogical operators:"
str3: .asciz "\nBitwise operators:"
str4: .asciz "\nAssignment operators:"
str5: .asciz "Positive"
str6: .asciz "Negative"
str7: .asciz "Zero"
str8: .asciz ""
str9: .asciz "if-elif-else result:"
str10: .asciz "for loop result:"
str11: .asciz "while loop result:"
str12: .asciz "Square"


.text
.globl main


basics:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $1136, %rsp
	movq $10, %rdx
	movq %rdx, -224(%rbp)
	movq -224(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq $5, %rdx
	movq %rdx, -232(%rbp)
	movq -232(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -240(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -248(%rbp)
	movq -240(%rbp), %rcx
	movq -248(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -240(%rbp)
	movq -240(%rbp), %rdx
	movq %rdx, -24(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -256(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -264(%rbp)
	movq -256(%rbp), %rcx
	movq -264(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -256(%rbp)
	movq -256(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -272(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -280(%rbp)
	movq -272(%rbp), %rcx
	movq -280(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -272(%rbp)
	movq -272(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -288(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -296(%rbp)
	movq -296(%rbp), %rcx
	movq -288(%rbp), %rax
	cqto
	idivq %rcx
	movq %rax, -288(%rbp)
	movq -288(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -304(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -312(%rbp)
	movq -312(%rbp), %rcx
	movq -304(%rbp), %rax
	cqto
	idivq %rcx
	movq %rax, -304(%rbp)
	movq -304(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -320(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -328(%rbp)
	movq -328(%rbp), %rcx
	movq -320(%rbp), %rax
	cqto
	idivq %rcx
	movq %rdx, -320(%rbp)
	movq -320(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -336(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -344(%rbp)
	pushq %rax
	pushq %rdx
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -336(%rbp),  %rdx
	movq -344(%rbp),  %rcx
	pushq %rcx
	pushq %rdx
	call .power
	movq %rax, -336(%rbp)
	movq %rbx, %rsp
	popq %rax
	popq %rdx
	movq -336(%rbp), %rdx
	movq %rdx, -72(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -352(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -360(%rbp)
	movq -352(%rbp), %rdx
	movq -360(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	sete %dl
	movq %rdx, -352(%rbp)
	movq -352(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -368(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -376(%rbp)
	movq -368(%rbp), %rdx
	movq -376(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setne %dl
	movq %rdx, -368(%rbp)
	movq -368(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -384(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -392(%rbp)
	movq -384(%rbp), %rdx
	movq -392(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -384(%rbp)
	movq -384(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -400(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -408(%rbp)
	movq -400(%rbp), %rdx
	movq -408(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -400(%rbp)
	movq -400(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -416(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -424(%rbp)
	movq -416(%rbp), %rdx
	movq -424(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setge %dl
	movq %rdx, -416(%rbp)
	movq -416(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -432(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -440(%rbp)
	movq -432(%rbp), %rdx
	movq -440(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setle %dl
	movq %rdx, -432(%rbp)
	movq -432(%rbp), %rdx
	movq %rdx, -120(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -448(%rbp)
	movq $5, %rdx
	movq %rdx, -456(%rbp)
	movq -448(%rbp), %rdx
	movq -456(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -448(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -464(%rbp)
	movq $10, %rdx
	movq %rdx, -472(%rbp)
	movq -464(%rbp), %rdx
	movq -472(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -464(%rbp)
	movq -448(%rbp), %rcx
	movq -464(%rbp), %rdx
	andq %rdx, %rcx
	movq %rcx, -448(%rbp)
	movq -448(%rbp), %rdx
	movq %rdx, -128(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -480(%rbp)
	movq $5, %rdx
	movq %rdx, -488(%rbp)
	movq -480(%rbp), %rdx
	movq -488(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -480(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -496(%rbp)
	movq $10, %rdx
	movq %rdx, -504(%rbp)
	movq -496(%rbp), %rdx
	movq -504(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -496(%rbp)
	movq -480(%rbp), %rcx
	movq -496(%rbp), %rdx
	orq %rdx, %rcx
	movq %rcx, -480(%rbp)
	movq -480(%rbp), %rdx
	movq %rdx, -136(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -512(%rbp)
	movq $5, %rdx
	movq %rdx, -520(%rbp)
	movq -512(%rbp), %rdx
	movq -520(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -512(%rbp)
	movq -512(%rbp), %rcx
	movq $1, %rdx
	xorq %rdx, %rcx
	movq %rcx, -512(%rbp)
	movq -512(%rbp), %rdx
	movq %rdx, -144(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -528(%rbp)
	movq $10, %rdx
	movq %rdx, -536(%rbp)
	movq -528(%rbp), %rdx
	movq -536(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -528(%rbp)
	movq -528(%rbp), %rcx
	movq $1, %rdx
	xorq %rdx, %rcx
	movq %rcx, -528(%rbp)
	movq -528(%rbp), %rdx
	movq %rdx, -152(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -544(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -552(%rbp)
	movq -544(%rbp), %rcx
	movq -552(%rbp), %rdx
	andq %rdx, %rcx
	movq %rcx, -544(%rbp)
	movq -544(%rbp), %rdx
	movq %rdx, -160(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -560(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -568(%rbp)
	movq -560(%rbp), %rcx
	movq -568(%rbp), %rdx
	orq %rdx, %rcx
	movq %rcx, -560(%rbp)
	movq -560(%rbp), %rdx
	movq %rdx, -168(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -576(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -584(%rbp)
	movq -576(%rbp), %rcx
	movq -584(%rbp), %rdx
	xorq %rdx, %rcx
	movq %rcx, -576(%rbp)
	movq -576(%rbp), %rdx
	movq %rdx, -176(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -592(%rbp)
	movq -592(%rbp), %rdx
	not %rdx
	movq %rdx, -592(%rbp)
	movq -592(%rbp), %rdx
	movq %rdx, -184(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -600(%rbp)
	movq -600(%rbp), %rdx
	not %rdx
	movq %rdx, -600(%rbp)
	movq -600(%rbp), %rdx
	movq %rdx, -192(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -608(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -616(%rbp)
	movq -616(%rbp), %rcx
	movq -608(%rbp), %rax
	sal %cl, %rax
	movq %rax, -608(%rbp)
	movq -608(%rbp), %rdx
	movq %rdx, -200(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -624(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -632(%rbp)
	movq -632(%rbp), %rcx
	movq -624(%rbp), %rax
	sar %cl, %rax
	movq %rax, -624(%rbp)
	movq -624(%rbp), %rdx
	movq %rdx, -208(%rbp)
	movq $15, %rdx
	movq %rdx, -640(%rbp)
	movq -640(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -648(%rbp)
	movq $5, %rdx
	movq %rdx, -656(%rbp)
	movq -648(%rbp), %rcx
	movq -656(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -664(%rbp)
	movq -664(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -672(%rbp)
	movq $3, %rdx
	movq %rdx, -680(%rbp)
	movq -672(%rbp), %rcx
	movq -680(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -688(%rbp)
	movq -688(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -696(%rbp)
	movq $2, %rdx
	movq %rdx, -704(%rbp)
	movq -696(%rbp), %rcx
	movq -704(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -712(%rbp)
	movq -712(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -720(%rbp)
	movq $2, %rdx
	movq %rdx, -728(%rbp)
	movq -728(%rbp), %rcx
	movq -720(%rbp), %rax
	cqto
	idivq %rcx
	movq %rdx, -736(%rbp)
	movq -736(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -744(%rbp)
	movq $3, %rdx
	movq %rdx, -752(%rbp)
	movq -752(%rbp), %rcx
	movq -744(%rbp), %rax
	cqto
	idivq %rcx
	movq %rax, -760(%rbp)
	movq -760(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -768(%rbp)
	movq $3, %rdx
	movq %rdx, -776(%rbp)
	pushq %rax
	pushq %rdx
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -768(%rbp),  %rdx
	movq -776(%rbp),  %rcx
	pushq %rcx
	pushq %rdx
	call .power
	movq %rax, -784(%rbp)
	movq %rbx, %rsp
	popq %rax
	popq %rdx
	movq -784(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -792(%rbp)
	movq $1, %rdx
	movq %rdx, -800(%rbp)
	movq -792(%rbp), %rcx
	movq -800(%rbp), %rdx
	andq %rdx, %rcx
	movq %rcx, -808(%rbp)
	movq -808(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -816(%rbp)
	movq $3, %rdx
	movq %rdx, -824(%rbp)
	movq -816(%rbp), %rcx
	movq -824(%rbp), %rdx
	orq %rdx, %rcx
	movq %rcx, -832(%rbp)
	movq -832(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -840(%rbp)
	movq $5, %rdx
	movq %rdx, -848(%rbp)
	movq -840(%rbp), %rcx
	movq -848(%rbp), %rdx
	xorq %rdx, %rcx
	movq %rcx, -856(%rbp)
	movq -856(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -864(%rbp)
	movq $2, %rdx
	movq %rdx, -872(%rbp)
	movq -872(%rbp), %rcx
	movq -864(%rbp), %rax
	sal %cl, %rax
	movq %rax, -880(%rbp)
	movq -880(%rbp), %rdx
	movq %rdx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq %rdx, -888(%rbp)
	movq $1, %rdx
	movq %rdx, -896(%rbp)
	movq -896(%rbp), %rcx
	movq -888(%rbp), %rax
	sar %cl, %rax
	movq %rax, -904(%rbp)
	movq -904(%rbp), %rdx
	movq %rdx, -216(%rbp)
	lea str0(%rip), %rdx
	movq %rdx, -912(%rbp)
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
	movq -912(%rbp), %rdx
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
	movq -24(%rbp), %rdx
	movq %rdx, -920(%rbp)
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
	movq -920(%rbp), %rdx
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
	movq -32(%rbp), %rdx
	movq %rdx, -928(%rbp)
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
	movq -928(%rbp), %rdx
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
	movq -40(%rbp), %rdx
	movq %rdx, -936(%rbp)
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
	movq -936(%rbp), %rdx
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
	movq -56(%rbp), %rdx
	movq %rdx, -944(%rbp)
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
	movq -944(%rbp), %rdx
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
	movq -64(%rbp), %rdx
	movq %rdx, -952(%rbp)
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
	movq -952(%rbp), %rdx
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
	movq -72(%rbp), %rdx
	movq %rdx, -960(%rbp)
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
	movq -960(%rbp), %rdx
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
	lea str1(%rip), %rdx
	movq %rdx, -968(%rbp)
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
	movq -968(%rbp), %rdx
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
	movq -80(%rbp), %rdx
	movq %rdx, -976(%rbp)
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
	movq -976(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq %rdx, -984(%rbp)
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
	movq -984(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq %rdx, -992(%rbp)
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
	movq -992(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq -104(%rbp), %rdx
	movq %rdx, -1000(%rbp)
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
	movq -1000(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq -112(%rbp), %rdx
	movq %rdx, -1008(%rbp)
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
	movq -1008(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq -120(%rbp), %rdx
	movq %rdx, -1016(%rbp)
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
	movq -1016(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq %rdx, -1024(%rbp)
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
	movq -1024(%rbp), %rdx
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
	movq -128(%rbp), %rdx
	movq %rdx, -1032(%rbp)
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
	movq -1032(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq %rdx, -1040(%rbp)
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
	movq -1040(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq -144(%rbp), %rdx
	movq %rdx, -1048(%rbp)
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
	movq -1048(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	movq -152(%rbp), %rdx
	movq %rdx, -1056(%rbp)
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
	movq -1056(%rbp), %rdx
	pushq %rdx
	call print_bool
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
	lea str3(%rip), %rdx
	movq %rdx, -1064(%rbp)
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
	movq -1064(%rbp), %rdx
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
	movq -160(%rbp), %rdx
	movq %rdx, -1072(%rbp)
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
	movq -1072(%rbp), %rdx
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
	movq -168(%rbp), %rdx
	movq %rdx, -1080(%rbp)
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
	movq -1080(%rbp), %rdx
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
	movq -176(%rbp), %rdx
	movq %rdx, -1088(%rbp)
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
	movq -1088(%rbp), %rdx
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
	movq -184(%rbp), %rdx
	movq %rdx, -1096(%rbp)
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
	movq -1096(%rbp), %rdx
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
	movq -192(%rbp), %rdx
	movq %rdx, -1104(%rbp)
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
	movq -1104(%rbp), %rdx
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
	movq -200(%rbp), %rdx
	movq %rdx, -1112(%rbp)
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
	movq -1112(%rbp), %rdx
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
	movq -208(%rbp), %rdx
	movq %rdx, -1120(%rbp)
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
	movq -1120(%rbp), %rdx
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
	lea str4(%rip), %rdx
	movq %rdx, -1128(%rbp)
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
	movq -1128(%rbp), %rdx
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
	movq -216(%rbp), %rdx
	movq %rdx, -1136(%rbp)
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
	movq -1136(%rbp), %rdx
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

check_number:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $64, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq -16(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setg %dl
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	cmpq $0, %rdx
	je L0
	lea str5(%rip), %rdx
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L2
L0:
	movq 56(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq $0, %rdx
	movq %rdx, -40(%rbp)
	movq -32(%rbp), %rdx
	movq -40(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	cmpq $0, %rdx
	je L1
	lea str6(%rip), %rdx
	movq %rdx, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L2
L1:
	lea str7(%rip), %rdx
	movq %rdx, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
L2:
	lea str8(%rip), %rdx
	movq %rdx, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

sum_of_numbers:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $104, %rsp
	movq $0, %rdx
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq $0, %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq $1, %rdx
	movq %rdx, -40(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -48(%rbp)
	movq $1, %rdx
	movq %rdx, -56(%rbp)
	movq -48(%rbp), %rcx
	movq -56(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -48(%rbp)
	movq -40(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -64(%rbp)
	jmp L4
L3:
	movq -64(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq %rdx, -16(%rbp)
L4:
	movq -64(%rbp), %rdx
	movq -48(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -72(%rbp)
	movq -72(%rbp), %rdx
	cmpq $0, %rdx
	je L5
	movq -8(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq -80(%rbp), %rcx
	movq -88(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -96(%rbp)
	movq -96(%rbp), %rdx
	movq %rdx, -8(%rbp)
	jmp L3
L5:
	movq -8(%rbp), %rdx
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

even_numbers:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $264, %rsp
	movq $0, %rdx
	movq %rdx, -24(%rbp)
	movq $0, %rdx
	movq %rdx, -32(%rbp)
	movq $0, %rdx
	movq %rdx, -40(%rbp)
	movq $0, %rdx
	movq %rdx, -48(%rbp)
	movq $0, %rdx
	movq %rdx, -56(%rbp)
	movq $0, %rdx
	movq %rdx, -64(%rbp)
	movq $0, %rdx
	movq %rdx, -72(%rbp)
	movq $0, %rdx
	movq %rdx, -80(%rbp)
	movq $0, %rdx
	movq %rdx, -88(%rbp)
	movq $0, %rdx
	movq %rdx, -96(%rbp)
	movq $88, %rdx
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
	call allocmem
	movq %rax, -104(%rbp)
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
	movq -104(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq $10, %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -24(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -32(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -40(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -48(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -56(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -64(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -72(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -80(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -88(%rbp), %rcx
	movq %rcx, (%rdx)
	movq $8, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq -112(%rbp), %rdx
	movq -96(%rbp), %rcx
	movq %rcx, (%rdx)
	movq -104(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq $0, %rdx
	movq %rdx, -120(%rbp)
	movq -120(%rbp), %rdx
	movq %rdx, -16(%rbp)
L6:
	movq -16(%rbp), %rdx
	movq %rdx, -128(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -136(%rbp)
	movq -128(%rbp), %rdx
	movq -136(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -128(%rbp)
	movq -128(%rbp), %rdx
	cmpq $0, %rdx
	je L10
	movq -16(%rbp), %rdx
	movq %rdx, -144(%rbp)
	movq $1, %rdx
	movq %rdx, -152(%rbp)
	movq -144(%rbp), %rcx
	movq -152(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -160(%rbp)
	movq -160(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -168(%rbp)
	movq $2, %rdx
	movq %rdx, -176(%rbp)
	movq -176(%rbp), %rcx
	movq -168(%rbp), %rax
	cqto
	idivq %rcx
	movq %rdx, -168(%rbp)
	movq $0, %rdx
	movq %rdx, -184(%rbp)
	movq -168(%rbp), %rdx
	movq -184(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	sete %dl
	movq %rdx, -168(%rbp)
	movq -168(%rbp), %rdx
	cmpq $0, %rdx
	je L7
	movq -8(%rbp), %rdx
	movq %rdx, -192(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -200(%rbp)
	movq $2, %rdx
	movq %rdx, -208(%rbp)
	movq -208(%rbp), %rcx
	movq -200(%rbp), %rax
	cqto
	idivq %rcx
	movq %rax, -200(%rbp)
	movq $8, %rcx
	movq -200(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -216(%rbp)
	movq -192(%rbp), %rcx
	movq -216(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -216(%rbp)
	movq $8, %rcx
	movq -216(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -216(%rbp)
	movq -216(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -224(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -232(%rbp)
	movq -216(%rbp), %rdx
	movq -232(%rbp), %rcx
	movq %rcx, (%rdx)
	jmp L8
L7:
	jmp L6
L8:
	movq -8(%rbp), %rdx
	movq %rdx, -240(%rbp)
	movq -240(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -248(%rbp)
	movq $3, %rdx
	movq %rdx, -256(%rbp)
	movq -248(%rbp), %rdx
	movq -256(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	sete %dl
	movq %rdx, -248(%rbp)
	movq -248(%rbp), %rdx
	cmpq $0, %rdx
	je L9
	jmp L10
	jmp L9
L9:
	jmp L6
L10:
	movq -8(%rbp), %rdx
	movq %rdx, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

calculate_sum:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $192, %rsp
	movq $10, %rdx
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
	call even_numbers
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
	movq %rdx, -8(%rbp)
	movq $5, %rdx
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
	call check_number
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
	movq -64(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq $5, %rdx
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
	call sum_of_numbers
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
	movq -80(%rbp), %rdx
	movq %rdx, -24(%rbp)
	lea str9(%rip), %rdx
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
	lea str10(%rip), %rdx
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
	movq -24(%rbp), %rdx
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
	lea str11(%rip), %rdx
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
	movq $0, %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -128(%rbp)
	movq -8(%rbp), %rdx
	movq %rdx, -136(%rbp)
	movq -136(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -144(%rbp)
	movq $0, %rdx
	movq %rdx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -152(%rbp)
	jmp L12
L11:
	movq -152(%rbp), %rcx
	movq $1, %rdx
	addq %rdx, %rcx
	movq %rcx, -152(%rbp)
	movq -152(%rbp), %rdx
	movq %rdx, -32(%rbp)
L12:
	movq -152(%rbp), %rdx
	movq -144(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setl %dl
	movq %rdx, -160(%rbp)
	movq -160(%rbp), %rdx
	cmpq $0, %rdx
	je L13
	movq -8(%rbp), %rdx
	movq %rdx, -168(%rbp)
	movq -32(%rbp), %rdx
	movq %rdx, -176(%rbp)
	movq $8, %rcx
	movq -176(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -184(%rbp)
	movq -168(%rbp), %rcx
	movq -184(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -184(%rbp)
	movq $8, %rcx
	movq -184(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -184(%rbp)
	movq -184(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -192(%rbp)
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
	jmp L11
L13:
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

factorial:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $64, %rsp
	movq 56(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq $1, %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rdx
	movq -16(%rbp), %rcx
	cmp %rcx, %rdx
	movq $0, %rdx
	setle %dl
	movq %rdx, -8(%rbp)
	movq -8(%rbp), %rdx
	cmpq $0, %rdx
	je L14
	movq $1, %rdx
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
	jmp L15
L14:
	movq 56(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq 56(%rbp), %rdx
	movq %rdx, -40(%rbp)
	movq $1, %rdx
	movq %rdx, -48(%rbp)
	movq -40(%rbp), %rcx
	movq -48(%rbp), %rdx
	subq %rdx, %rcx
	movq %rcx, -40(%rbp)
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
	call factorial
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
	movq -32(%rbp), %rcx
	movq -56(%rbp), %rdx
	imulq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret
L15:
	movq $1, %rdx
	movq %rdx, -64(%rbp)
	movq -64(%rbp), %rdx
	neg %rdx
	movq %rdx, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Shape.__init__:
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

Shape.get_name:
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
	movq -16(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Square.__init__:
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

Square.area:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $32, %rsp
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
	movq $2, %rdx
	movq %rdx, -32(%rbp)
	pushq %rax
	pushq %rdx
	movq %rsp, %rbx
	movq %rsp, %rcx
	addq $-16, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -24(%rbp),  %rdx
	movq -32(%rbp),  %rcx
	pushq %rcx
	pushq %rdx
	call .power
	movq %rax, -24(%rbp)
	movq %rbx, %rsp
	popq %rax
	popq %rdx
	movq -24(%rbp), %rax
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Math.__init__:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $8, %rsp
	movq $1, %rdx
	movq %rdx, -8(%rbp)
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Math.add:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $16, %rsp
	movq 64(%rbp), %rdx
	movq %rdx, -8(%rbp)
	movq 72(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -8(%rbp), %rcx
	movq -16(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -8(%rbp)
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
	subq $136, %rsp
	movq $5, %rdx
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
	call calculate_sum
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
	addq $-0, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	call basics
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
	movq $4, %rdx
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
	call factorial
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
	lea str12(%rip), %rdx
	movq %rdx, -48(%rbp)
	movq $4, %rdx
	movq %rdx, -56(%rbp)
	movq $16, %rdx
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
	addq $-24, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -56(%rbp), %rdx
	pushq %rdx
	movq -48(%rbp), %rdx
	pushq %rdx
	movq -64(%rbp), %rdx
	pushq %rdx
	call Square.__init__
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
	movq -64(%rbp), %rdx
	movq %rdx, -8(%rbp)
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
	call Shape.get_name
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -88(%rbp), %rdx
	pushq %rdx
	call Square.area
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
	movq $0, %rdx
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
	call allocmem
	movq %rax, -104(%rbp)
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
	movq -104(%rbp), %rdx
	pushq %rdx
	call Math.__init__
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
	movq -104(%rbp), %rdx
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq $2, %rdx
	movq %rdx, -120(%rbp)
	movq $3, %rdx
	movq %rdx, -128(%rbp)
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
	movq -128(%rbp), %rdx
	pushq %rdx
	movq -120(%rbp), %rdx
	pushq %rdx
	movq -112(%rbp), %rdx
	pushq %rdx
	call Math.add
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

