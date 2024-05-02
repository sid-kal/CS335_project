.str0: "Deposited and New balance: "
.str1: "Withdrew and New balance: "
.str2: "Insufficient funds!"
.str3: "Account Number and Balance: "
.str4: "Interest added and New balance:"
.str5: "Withdrew and New balance:"
.str6: "Transaction declined! Overdraft limit exceeded."
.str7: "SA001"
.str8: "--------------------------------"
.str9: "CA001"

BankAccount.__init__:
	beginfunc 0
	#t0 = self
	#t1 = #t0
	#t1 = 0 + #t1
	#t2 = account_number
	*(#t1) = #t2
	#t3 = self
	#t4 = #t3
	#t4 = 8 + #t4
	#t5 = balance
	*(#t4) = #t5
	leave
	return  
	endfunc 


BankAccount.deposit:
	beginfunc 0
	#t6 = self
	#t7 = #t6
	#t7 = 8 + #t7
	#t8 = *(#t7)
	#t9 = amount
	#t10 = #t8 + #t9
	*(#t7) = #t10
	#t11 = .str0
	save registers  
	stackpointer -8 
	param #t11 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t12 = amount
	save registers  
	stackpointer -8 
	param #t12 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t13 = self
	#t14 = #t13
	#t14 = 8 + #t14
	#t15 = *(#t14)
	save registers  
	stackpointer -8 
	param #t15 
	call print_int 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 


BankAccount.withdraw:
	beginfunc 0
	#t16 = self
	#t17 = #t16
	#t17 = 8 + #t17
	#t18 = *(#t17)
	#t19 = amount
	#t18 = #t18 >= #t19
	ifFalse #t18 jump L0
	#t20 = self
	#t21 = #t20
	#t21 = 8 + #t21
	#t22 = *(#t21)
	#t23 = amount
	#t24 = #t22 - #t23
	*(#t21) = #t24
	#t25 = .str1
	save registers  
	stackpointer -8 
	param #t25 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t26 = amount
	save registers  
	stackpointer -8 
	param #t26 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t27 = self
	#t28 = #t27
	#t28 = 8 + #t28
	#t29 = *(#t28)
	save registers  
	stackpointer -8 
	param #t29 
	call print_int 1
	stackpointer +8 
	restore registers  
	jump L1

L0:
	#t30 = .str2
	save registers  
	stackpointer -8 
	param #t30 
	call print_str 1
	stackpointer +8 
	restore registers  

L1:
	leave
	return  
	endfunc 


BankAccount.display:
	beginfunc 0
	#t31 = .str3
	save registers  
	stackpointer -8 
	param #t31 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t32 = self
	#t33 = #t32
	#t33 = 0 + #t33
	#t34 = *(#t33)
	save registers  
	stackpointer -8 
	param #t34 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t35 = self
	#t36 = #t35
	#t36 = 8 + #t36
	#t37 = *(#t36)
	save registers  
	stackpointer -8 
	param #t37 
	call print_int 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 


SavingsAccount.__init__:
	beginfunc 0
	#t38 = self
	#t39 = #t38
	#t39 = 0 + #t39
	#t40 = account_number
	*(#t39) = #t40
	#t41 = self
	#t42 = #t41
	#t42 = 8 + #t42
	#t43 = balance
	*(#t42) = #t43
	#t44 = self
	#t45 = #t44
	#t45 = 16 + #t45
	#t46 = interest_rate
	*(#t45) = #t46
	leave
	return  
	endfunc 


SavingsAccount.add_interest:
	beginfunc 8
	#t47 = self
	#t48 = #t47
	#t48 = 8 + #t48
	#t49 = *(#t48)
	#t50 = self
	#t51 = #t50
	#t51 = 16 + #t51
	#t52 = *(#t51)
	#t53 = 100
	#t52 = #t52 / #t53
	#t49 = #t49 * #t52
	interest_amount = #t49
	#t54 = self
	#t55 = #t54
	#t55 = 8 + #t55
	#t56 = *(#t55)
	#t57 = interest_amount
	#t58 = #t56 + #t57
	*(#t55) = #t58
	#t59 = .str4
	save registers  
	stackpointer -8 
	param #t59 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t60 = interest_amount
	save registers  
	stackpointer -8 
	param #t60 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t61 = self
	#t62 = #t61
	#t62 = 8 + #t62
	#t63 = *(#t62)
	save registers  
	stackpointer -8 
	param #t63 
	call print_int 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 


CheckingAccount.__init__:
	beginfunc 0
	#t64 = self
	#t65 = #t64
	#t65 = 0 + #t65
	#t66 = account_number
	*(#t65) = #t66
	#t67 = self
	#t68 = #t67
	#t68 = 8 + #t68
	#t69 = balance
	*(#t68) = #t69
	#t70 = self
	#t71 = #t70
	#t71 = 16 + #t71
	#t72 = overdraft_limit
	*(#t71) = #t72
	leave
	return  
	endfunc 


CheckingAccount.withdraw:
	beginfunc 0
	#t73 = self
	#t74 = #t73
	#t74 = 8 + #t74
	#t75 = *(#t74)
	#t76 = self
	#t77 = #t76
	#t77 = 16 + #t77
	#t78 = *(#t77)
	#t75 = #t75 + #t78
	#t79 = amount
	#t75 = #t75 >= #t79
	ifFalse #t75 jump L2
	#t80 = self
	#t81 = #t80
	#t81 = 8 + #t81
	#t82 = *(#t81)
	#t83 = amount
	#t84 = #t82 - #t83
	*(#t81) = #t84
	#t85 = .str5
	save registers  
	stackpointer -8 
	param #t85 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t86 = amount
	save registers  
	stackpointer -8 
	param #t86 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t87 = self
	#t88 = #t87
	#t88 = 8 + #t88
	#t89 = *(#t88)
	save registers  
	stackpointer -8 
	param #t89 
	call print_int 1
	stackpointer +8 
	restore registers  
	jump L3

L2:
	#t90 = .str6
	save registers  
	stackpointer -8 
	param #t90 
	call print_str 1
	stackpointer +8 
	restore registers  

L3:
	leave
	return  
	endfunc 


main:
	beginfunc 16
	#t91 = .str7
	#t92 = 1000
	#t93 = 200
	#t94 = 24
	save registers  
	stackpointer -8 
	param #t94 
	call allocmem 1
	#t94 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -32 
	param #t93 
	param #t92 
	param #t91 
	param #t94 
	call SavingsAccount.__init__ 4
	stackpointer +32 
	restore registers  
	savings_acc = #t94
	#t95 = savings_acc
	#t96 = 500
	save registers  
	stackpointer -16 
	param #t96 
	param #t95 
	call BankAccount.deposit 2
	stackpointer +16 
	restore registers  
	#t97 = savings_acc
	save registers  
	stackpointer -8 
	param #t97 
	call SavingsAccount.add_interest 1
	stackpointer +8 
	restore registers  
	#t98 = savings_acc
	#t99 = 200
	save registers  
	stackpointer -16 
	param #t99 
	param #t98 
	call BankAccount.withdraw 2
	stackpointer +16 
	restore registers  
	#t100 = savings_acc
	save registers  
	stackpointer -8 
	param #t100 
	call BankAccount.display 1
	stackpointer +8 
	restore registers  
	#t101 = .str8
	save registers  
	stackpointer -8 
	param #t101 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t102 = .str9
	#t103 = 2000
	#t104 = 500
	#t105 = 24
	save registers  
	stackpointer -8 
	param #t105 
	call allocmem 1
	#t105 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -32 
	param #t104 
	param #t103 
	param #t102 
	param #t105 
	call CheckingAccount.__init__ 4
	stackpointer +32 
	restore registers  
	checking_acc = #t105
	#t106 = checking_acc
	#t107 = 1000
	save registers  
	stackpointer -16 
	param #t107 
	param #t106 
	call BankAccount.deposit 2
	stackpointer +16 
	restore registers  
	#t108 = checking_acc
	#t109 = 3000
	save registers  
	stackpointer -16 
	param #t109 
	param #t108 
	call CheckingAccount.withdraw 2
	stackpointer +16 
	restore registers  
	#t110 = checking_acc
	#t111 = 500
	save registers  
	stackpointer -16 
	param #t111 
	param #t110 
	call CheckingAccount.withdraw 2
	stackpointer +16 
	restore registers  
	#t112 = checking_acc
	save registers  
	stackpointer -8 
	param #t112 
	call BankAccount.display 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 

