.data
format_print_str: .asciz "%s\n"
format_print_int: .asciz "%ld\n"
format_print_true: .asciz "True\n"
format_print_false: .asciz "False\n"
str0: .asciz "Printing info:"
str1: .asciz "Brand:"
str2: .asciz "Year:"
str3: .asciz "Color:"
str4: .asciz "Model:"
str5: .asciz "Battery capacity:"
str6: .asciz "Toyota"
str7: .asciz "Blue"
str8: .asciz "Camry"
str9: .asciz ""
str10: .asciz "Tesla"
str11: .asciz "Red"
str12: .asciz "Model 3"


.text
.globl main


Vehicle.__init__:
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

Vehicle.display_info_veh:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $104, %rsp
	lea str0(%rip), %rdx
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
	lea str1(%rip), %rdx
	movq %rdx, -16(%rbp)
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
	movq -16(%rbp), %rdx
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
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq $0, %rcx
	movq -32(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq (%rdx), %rcx
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
	lea str2(%rip), %rdx
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
	movq 56(%rbp), %rdx
	movq %rdx, -56(%rbp)
	movq -56(%rbp), %rdx
	movq %rdx, -64(%rbp)
	movq $8, %rcx
	movq -64(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -64(%rbp)
	movq -64(%rbp), %rdx
	movq (%rdx), %rcx
	movq %rcx, -72(%rbp)
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
	lea str3(%rip), %rdx
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
	movq 56(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq -88(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq $16, %rcx
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
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Car.__init__:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $96, %rsp
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
	movq 56(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq $24, %rcx
	movq -88(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq 88(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq -88(%rbp), %rdx
	movq -96(%rbp), %rcx
	movq %rcx, (%rdx)
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

Car.display_info_car:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $40, %rsp
	movq 56(%rbp), %rdx
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
	call Vehicle.display_info_veh
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
	movq %rdx, -16(%rbp)
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
	movq -16(%rbp), %rdx
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
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq $24, %rcx
	movq -32(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq (%rdx), %rcx
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
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

ElectricCar.__init__:
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
	movq 56(%rbp), %rdx
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rdx
	movq %rdx, -88(%rbp)
	movq $24, %rcx
	movq -88(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -88(%rbp)
	movq 88(%rbp), %rdx
	movq %rdx, -96(%rbp)
	movq -88(%rbp), %rdx
	movq -96(%rbp), %rcx
	movq %rcx, (%rdx)
	movq 56(%rbp), %rdx
	movq %rdx, -104(%rbp)
	movq -104(%rbp), %rdx
	movq %rdx, -112(%rbp)
	movq $32, %rcx
	movq -112(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -112(%rbp)
	movq 96(%rbp), %rdx
	movq %rdx, -120(%rbp)
	movq -112(%rbp), %rdx
	movq -120(%rbp), %rcx
	movq %rcx, (%rdx)
	movq %rbp, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	popq %rbp
	ret

ElectricCar.display_info_elec:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $40, %rsp
	movq 56(%rbp), %rdx
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
	call Car.display_info_car
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
	lea str5(%rip), %rdx
	movq %rdx, -16(%rbp)
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
	movq -16(%rbp), %rdx
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
	movq %rdx, -24(%rbp)
	movq -24(%rbp), %rdx
	movq %rdx, -32(%rbp)
	movq $32, %rcx
	movq -32(%rbp), %rdx
	addq %rdx, %rcx
	movq %rcx, -32(%rbp)
	movq -32(%rbp), %rdx
	movq (%rdx), %rcx
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

main:
	pushq %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsp, %rbp
	subq $128, %rsp
	lea str6(%rip), %rdx
	movq %rdx, -24(%rbp)
	movq $2022, %rdx
	movq %rdx, -32(%rbp)
	lea str7(%rip), %rdx
	movq %rdx, -40(%rbp)
	lea str8(%rip), %rdx
	movq %rdx, -48(%rbp)
	movq $32, %rdx
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
	movq -48(%rbp), %rdx
	pushq %rdx
	movq -40(%rbp), %rdx
	pushq %rdx
	movq -32(%rbp), %rdx
	pushq %rdx
	movq -24(%rbp), %rdx
	pushq %rdx
	movq -56(%rbp), %rdx
	pushq %rdx
	call Car.__init__
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
	movq -8(%rbp), %rdx
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
	call Car.display_info_car
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
	movq %rdx, -80(%rbp)
	movq $2023, %rdx
	movq %rdx, -88(%rbp)
	lea str11(%rip), %rdx
	movq %rdx, -96(%rbp)
	lea str12(%rip), %rdx
	movq %rdx, -104(%rbp)
	movq $75, %rdx
	movq %rdx, -112(%rbp)
	movq $40, %rdx
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
	call allocmem
	movq %rax, -120(%rbp)
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
	addq $-48, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -112(%rbp), %rdx
	pushq %rdx
	movq -104(%rbp), %rdx
	pushq %rdx
	movq -96(%rbp), %rdx
	pushq %rdx
	movq -88(%rbp), %rdx
	pushq %rdx
	movq -80(%rbp), %rdx
	pushq %rdx
	movq -120(%rbp), %rdx
	pushq %rdx
	call ElectricCar.__init__
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
	movq %rdx, -16(%rbp)
	movq -16(%rbp), %rdx
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
	addq $-8, %rcx
	andq $15, %rcx
	subq %rcx, %rsp
	movq -128(%rbp), %rdx
	pushq %rdx
	call ElectricCar.display_info_elec
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

