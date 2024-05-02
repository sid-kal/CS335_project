.str0: "Printing info:"
.str1: "Brand:"
.str2: "Year:"
.str3: "Color:"
.str4: "Model:"
.str5: "Battery capacity:"
.str6: "Toyota"
.str7: "Blue"
.str8: "Camry"
.str9: ""
.str10: "Tesla"
.str11: "Red"
.str12: "Model 3"

Vehicle.__init__:
	beginfunc 0
	#t0 = self
	#t1 = #t0
	#t1 = 0 + #t1
	#t2 = brand
	*(#t1) = #t2
	#t3 = self
	#t4 = #t3
	#t4 = 8 + #t4
	#t5 = year
	*(#t4) = #t5
	#t6 = self
	#t7 = #t6
	#t7 = 16 + #t7
	#t8 = color
	*(#t7) = #t8
	leave
	return  
	endfunc 


Vehicle.display_info_veh:
	beginfunc 0
	#t9 = .str0
	save registers  
	stackpointer -8 
	param #t9 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t10 = .str1
	save registers  
	stackpointer -8 
	param #t10 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t11 = self
	#t12 = #t11
	#t12 = 0 + #t12
	#t13 = *(#t12)
	save registers  
	stackpointer -8 
	param #t13 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t14 = .str2
	save registers  
	stackpointer -8 
	param #t14 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t15 = self
	#t16 = #t15
	#t16 = 8 + #t16
	#t17 = *(#t16)
	save registers  
	stackpointer -8 
	param #t17 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t18 = .str3
	save registers  
	stackpointer -8 
	param #t18 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t19 = self
	#t20 = #t19
	#t20 = 16 + #t20
	#t21 = *(#t20)
	save registers  
	stackpointer -8 
	param #t21 
	call print_str 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 


Car.__init__:
	beginfunc 0
	#t22 = self
	#t23 = #t22
	#t23 = 0 + #t23
	#t24 = brand
	*(#t23) = #t24
	#t25 = self
	#t26 = #t25
	#t26 = 8 + #t26
	#t27 = year
	*(#t26) = #t27
	#t28 = self
	#t29 = #t28
	#t29 = 16 + #t29
	#t30 = color
	*(#t29) = #t30
	#t31 = self
	#t32 = #t31
	#t32 = 24 + #t32
	#t33 = model
	*(#t32) = #t33
	leave
	return  
	endfunc 


Car.display_info_car:
	beginfunc 0
	#t34 = self
	save registers  
	stackpointer -8 
	param #t34 
	call Vehicle.display_info_veh 1
	stackpointer +8 
	restore registers  
	#t35 = .str4
	save registers  
	stackpointer -8 
	param #t35 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t36 = self
	#t37 = #t36
	#t37 = 24 + #t37
	#t38 = *(#t37)
	save registers  
	stackpointer -8 
	param #t38 
	call print_str 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 


ElectricCar.__init__:
	beginfunc 0
	#t39 = self
	#t40 = #t39
	#t40 = 0 + #t40
	#t41 = brand
	*(#t40) = #t41
	#t42 = self
	#t43 = #t42
	#t43 = 8 + #t43
	#t44 = year
	*(#t43) = #t44
	#t45 = self
	#t46 = #t45
	#t46 = 16 + #t46
	#t47 = color
	*(#t46) = #t47
	#t48 = self
	#t49 = #t48
	#t49 = 24 + #t49
	#t50 = model
	*(#t49) = #t50
	#t51 = self
	#t52 = #t51
	#t52 = 32 + #t52
	#t53 = battery_capacity
	*(#t52) = #t53
	leave
	return  
	endfunc 


ElectricCar.display_info_elec:
	beginfunc 0
	#t54 = self
	save registers  
	stackpointer -8 
	param #t54 
	call Car.display_info_car 1
	stackpointer +8 
	restore registers  
	#t55 = .str5
	save registers  
	stackpointer -8 
	param #t55 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t56 = self
	#t57 = #t56
	#t57 = 32 + #t57
	#t58 = *(#t57)
	save registers  
	stackpointer -8 
	param #t58 
	call print_int 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 


main:
	beginfunc 16
	#t59 = .str6
	#t60 = 2022
	#t61 = .str7
	#t62 = .str8
	#t63 = 32
	save registers  
	stackpointer -8 
	param #t63 
	call allocmem 1
	#t63 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -40 
	param #t62 
	param #t61 
	param #t60 
	param #t59 
	param #t63 
	call Car.__init__ 5
	stackpointer +40 
	restore registers  
	car1 = #t63
	#t64 = car1
	save registers  
	stackpointer -8 
	param #t64 
	call Car.display_info_car 1
	stackpointer +8 
	restore registers  
	#t65 = .str9
	save registers  
	stackpointer -8 
	param #t65 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t66 = .str10
	#t67 = 2023
	#t68 = .str11
	#t69 = .str12
	#t70 = 75
	#t71 = 40
	save registers  
	stackpointer -8 
	param #t71 
	call allocmem 1
	#t71 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -48 
	param #t70 
	param #t69 
	param #t68 
	param #t67 
	param #t66 
	param #t71 
	call ElectricCar.__init__ 6
	stackpointer +48 
	restore registers  
	electric_car = #t71
	#t72 = electric_car
	save registers  
	stackpointer -8 
	param #t72 
	call ElectricCar.display_info_elec 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 

