.str0: "str0"
.str1: "str1"
.str2: "str2"

bar.__init__:
	beginfunc 0
	#t0 = self
	#t1 = #t0
	#t1 = 0 + #t1
	#t2 = val
	*(#t1) = #t2
	leave
	return  
	endfunc 


foo.__init__:
	beginfunc 0
	#t3 = self
	#t4 = #t3
	#t4 = 0 + #t4
	#t5 = .str0
	#t6 = 8
	save registers  
	stackpointer -8 
	param #t6 
	call allocmem 1
	#t6 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -16 
	param #t5 
	param #t6 
	call bar.__init__ 2
	stackpointer +16 
	restore registers  
	#t7 = .str1
	#t8 = 8
	save registers  
	stackpointer -8 
	param #t8 
	call allocmem 1
	#t8 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -16 
	param #t7 
	param #t8 
	call bar.__init__ 2
	stackpointer +16 
	restore registers  
	#t9 = .str2
	#t10 = 8
	save registers  
	stackpointer -8 
	param #t10 
	call allocmem 1
	#t10 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -16 
	param #t9 
	param #t10 
	call bar.__init__ 2
	stackpointer +16 
	restore registers  
	#t11 = 32
	save registers  
	stackpointer -8 
	param #t11 
	call allocmem 1
	#t11 = return_value
	stackpointer +8 
	restore registers  
	#t12 = #t11
	*(#t12) = 3
	#t12 = 8 + #t12
	*(#t12) = #t6
	#t12 = 8 + #t12
	*(#t12) = #t8
	#t12 = 8 + #t12
	*(#t12) = #t10
	*(#t4) = #t11
	leave
	return  
	endfunc 


myClass.__init__:
	beginfunc 0
	#t13 = self
	#t14 = #t13
	#t14 = 0 + #t14
	#t15 = 2
	*(#t14) = #t15
	leave
	return  
	endfunc 


myClass.fn:
	beginfunc 0
	#t16 = 8
	save registers  
	stackpointer -8 
	param #t16 
	call allocmem 1
	#t16 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -8 
	param #t16 
	call foo.__init__ 1
	stackpointer +8 
	restore registers  
	leave
	return #t16 
	endfunc 


main:
	beginfunc 16
	#t17 = 8
	save registers  
	stackpointer -8 
	param #t17 
	call allocmem 1
	#t17 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -8 
	param #t17 
	call myClass.__init__ 1
	stackpointer +8 
	restore registers  
	myObj = #t17
	#t18 = 1
	i = #t18
	#t19 = myObj
	save registers  
	stackpointer -8 
	param #t19 
	call myClass.fn 1
	#t20 = return_value
	stackpointer +8 
	restore registers  
	#t21 = #t20
	#t21 = 0 + #t21
	#t22 = *(#t21)
	#t23 = 1
	#t24 = 8 * #t23
	#t24 = #t22 + #t24
	#t24 = 8 + #t24
	#t25 = *(#t24)
	#t26 = #t25
	#t26 = 0 + #t26
	#t27 = *(#t26)
	save registers  
	stackpointer -8 
	param #t27 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t28 = 1
	#t29 = 2
	#t30 = 3
	#t31 = 32
	save registers  
	stackpointer -8 
	param #t31 
	call allocmem 1
	#t31 = return_value
	stackpointer +8 
	restore registers  
	#t32 = #t31
	*(#t32) = 3
	#t32 = 8 + #t32
	*(#t32) = #t28
	#t32 = 8 + #t32
	*(#t32) = #t29
	#t32 = 8 + #t32
	*(#t32) = #t30
	#t33 = 1
	#t34 = 8 * #t33
	#t34 = #t31 + #t34
	#t34 = 8 + #t34
	#t35 = *(#t34)
	save registers  
	stackpointer -8 
	param #t35 
	call print_int 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 

