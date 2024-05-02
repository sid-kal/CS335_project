
swap:
	beginfunc 8
	#t0 = arr
	#t1 = a
	#t2 = 8 * #t1
	#t2 = #t0 + #t2
	#t2 = 8 + #t2
	#t3 = *(#t2)
	temp = #t3
	#t4 = arr
	#t5 = a
	#t6 = 8 * #t5
	#t6 = #t4 + #t6
	#t6 = 8 + #t6
	#t7 = *(#t6)
	#t8 = arr
	#t9 = b
	#t10 = 8 * #t9
	#t10 = #t8 + #t10
	#t10 = 8 + #t10
	#t11 = *(#t10)
	*(#t6) = #t11
	#t12 = arr
	#t13 = b
	#t14 = 8 * #t13
	#t14 = #t12 + #t14
	#t14 = 8 + #t14
	#t15 = *(#t14)
	#t16 = temp
	*(#t14) = #t16
	leave
	return  
	endfunc 


partition:
	beginfunc 40
	#t17 = arr
	#t18 = start
	#t19 = 8 * #t18
	#t19 = #t17 + #t19
	#t19 = 8 + #t19
	#t20 = *(#t19)
	pivot = #t20
	#t21 = 0
	count = #t21
	i = 0
	#t22 = i
	#t23 = start
	#t24 = 1
	#t23 = #t23 + #t24
	#t25 = end
	#t26 = 1
	#t25 = #t25 + #t26
	i = #t23
	#t27 = i
	jump L1

L0:
	#t27 = #t27 + 1
	i = #t27

L1:
	#t28 = #t27 < #t25
	ifFalse #t28 jump L3
	#t29 = arr
	#t30 = i
	#t31 = 8 * #t30
	#t31 = #t29 + #t31
	#t31 = 8 + #t31
	#t32 = *(#t31)
	#t33 = pivot
	#t32 = #t32 <= #t33
	ifFalse #t32 jump L2
	#t34 = count
	#t35 = 1
	#t36 = #t34 + #t35
	count = #t36
	jump L2

L2:
	jump L0

L3:
	#t37 = start
	#t38 = count
	#t37 = #t37 + #t38
	pivotIndex = #t37
	#t39 = arr
	#t40 = pivotIndex
	#t41 = start
	save registers  
	stackpointer -24 
	param #t41 
	param #t40 
	param #t39 
	call swap 3
	stackpointer +24 
	restore registers  
	#t42 = i
	#t43 = start
	i = #t43
	#t44 = end
	j = #t44

L4:
	#t45 = i
	#t46 = pivotIndex
	#t45 = #t45 < #t46
	#t47 = j
	#t48 = pivotIndex
	#t47 = #t47 > #t48
	#t45 = #t45 && #t47
	ifFalse #t45 jump L10

L5:
	#t49 = arr
	#t50 = i
	#t51 = 8 * #t50
	#t51 = #t49 + #t51
	#t51 = 8 + #t51
	#t52 = *(#t51)
	#t53 = pivot
	#t52 = #t52 <= #t53
	ifFalse #t52 jump L6
	#t54 = i
	#t55 = 1
	#t56 = #t54 + #t55
	i = #t56
	jump L5

L6:

L7:
	#t57 = arr
	#t58 = j
	#t59 = 8 * #t58
	#t59 = #t57 + #t59
	#t59 = 8 + #t59
	#t60 = *(#t59)
	#t61 = pivot
	#t60 = #t60 > #t61
	ifFalse #t60 jump L8
	#t62 = j
	#t63 = 1
	#t64 = #t62 - #t63
	j = #t64
	jump L7

L8:
	#t65 = i
	#t66 = pivotIndex
	#t65 = #t65 < #t66
	#t67 = j
	#t68 = pivotIndex
	#t67 = #t67 > #t68
	#t65 = #t65 && #t67
	ifFalse #t65 jump L9
	#t69 = arr
	#t70 = i
	#t71 = j
	save registers  
	stackpointer -24 
	param #t71 
	param #t70 
	param #t69 
	call swap 3
	stackpointer +24 
	restore registers  
	#t72 = i
	#t73 = 1
	#t74 = #t72 + #t73
	i = #t74
	#t75 = j
	#t76 = 1
	#t77 = #t75 - #t76
	j = #t77
	jump L9

L9:
	jump L4

L10:
	#t78 = pivotIndex
	leave
	return #t78 
	endfunc 


quickSort:
	beginfunc 8
	#t79 = start
	#t80 = end
	#t79 = #t79 >= #t80
	ifFalse #t79 jump L11
	leave
	return  
	jump L11

L11:
	#t81 = arr
	#t82 = start
	#t83 = end
	save registers  
	stackpointer -24 
	param #t83 
	param #t82 
	param #t81 
	call partition 3
	#t84 = return_value
	stackpointer +24 
	restore registers  
	p = #t84
	#t85 = arr
	#t86 = start
	#t87 = p
	#t88 = 1
	#t87 = #t87 - #t88
	save registers  
	stackpointer -24 
	param #t87 
	param #t86 
	param #t85 
	call quickSort 3
	stackpointer +24 
	restore registers  
	#t89 = arr
	#t90 = p
	#t91 = 1
	#t90 = #t90 + #t91
	#t92 = end
	save registers  
	stackpointer -24 
	param #t92 
	param #t90 
	param #t89 
	call quickSort 3
	stackpointer +24 
	restore registers  
	leave
	return  
	endfunc 


main:
	beginfunc 24
	#t93 = 9
	#t94 = 3
	#t95 = 4
	#t96 = 2
	#t97 = 1
	#t98 = 8
	#t99 = 1
	#t99 =  - #t99
	#t100 = 64
	save registers  
	stackpointer -8 
	param #t100 
	call allocmem 1
	#t100 = return_value
	stackpointer +8 
	restore registers  
	#t101 = #t100
	*(#t101) = 7
	#t101 = 8 + #t101
	*(#t101) = #t93
	#t101 = 8 + #t101
	*(#t101) = #t94
	#t101 = 8 + #t101
	*(#t101) = #t95
	#t101 = 8 + #t101
	*(#t101) = #t96
	#t101 = 8 + #t101
	*(#t101) = #t97
	#t101 = 8 + #t101
	*(#t101) = #t98
	#t101 = 8 + #t101
	*(#t101) = #t99
	arr = #t100
	#t102 = arr
	#t103 = *(#t102)
	n = #t103
	#t104 = arr
	#t105 = 0
	#t106 = n
	#t107 = 1
	#t106 = #t106 - #t107
	save registers  
	stackpointer -24 
	param #t106 
	param #t105 
	param #t104 
	call quickSort 3
	stackpointer +24 
	restore registers  
	i = 0
	#t108 = i
	#t109 = n
	i = 0
	#t110 = i
	jump L13

L12:
	#t110 = #t110 + 1
	i = #t110

L13:
	#t111 = #t110 < #t109
	ifFalse #t111 jump L14
	#t112 = arr
	#t113 = i
	#t114 = 8 * #t113
	#t114 = #t112 + #t114
	#t114 = 8 + #t114
	#t115 = *(#t114)
	save registers  
	stackpointer -8 
	param #t115 
	call print_int 1
	stackpointer +8 
	restore registers  
	jump L12

L14:
	leave
	return  
	endfunc 

