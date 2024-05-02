.str0: "Arithmetic operators:"
.str1: "\nRelational operators:"
.str2: "\nLogical operators:"
.str3: "\nBitwise operators:"
.str4: "\nAssignment operators:"
.str5: "Positive"
.str6: "Negative"
.str7: "Zero"
.str8: ""
.str9: "if-elif-else result:"
.str10: "for loop result:"
.str11: "while loop result:"
.str12: "Square"

basics:
	beginfunc 216
	#t0 = 10
	a = #t0
	#t1 = 5
	b = #t1
	#t2 = a
	#t3 = b
	#t2 = #t2 + #t3
	addition = #t2
	#t4 = a
	#t5 = b
	#t4 = #t4 - #t5
	subtraction = #t4
	#t6 = a
	#t7 = b
	#t6 = #t6 * #t7
	multiplication = #t6
	#t8 = a
	#t9 = b
	#t8 = #t8 / #t9
	division = #t8
	#t10 = a
	#t11 = b
	#t10 = #t10 // #t11
	floor_division = #t10
	#t12 = a
	#t13 = b
	#t12 = #t12 % #t13
	modulo = #t12
	#t14 = a
	#t15 = b
	#t14 = #t14 ** #t15
	exponentiation = #t14
	#t16 = a
	#t17 = b
	#t16 = #t16 == #t17
	is_equal = #t16
	#t18 = a
	#t19 = b
	#t18 = #t18 != #t19
	not_equal = #t18
	#t20 = a
	#t21 = b
	#t20 = #t20 > #t21
	greater_than = #t20
	#t22 = a
	#t23 = b
	#t22 = #t22 < #t23
	less_than = #t22
	#t24 = a
	#t25 = b
	#t24 = #t24 >= #t25
	greater_than_or_equal = #t24
	#t26 = a
	#t27 = b
	#t26 = #t26 <= #t27
	less_than_or_equal = #t26
	#t28 = a
	#t29 = 5
	#t28 = #t28 > #t29
	#t30 = b
	#t31 = 10
	#t30 = #t30 < #t31
	#t28 = #t28 && #t30
	logical_and = #t28
	#t32 = a
	#t33 = 5
	#t32 = #t32 < #t33
	#t34 = b
	#t35 = 10
	#t34 = #t34 > #t35
	#t32 = #t32 || #t34
	logical_or = #t32
	#t36 = a
	#t37 = 5
	#t36 = #t36 > #t37
	#t36 =  ! #t36
	logical_not_a = #t36
	#t38 = b
	#t39 = 10
	#t38 = #t38 < #t39
	#t38 =  ! #t38
	logical_not_b = #t38
	#t40 = a
	#t41 = b
	#t40 = #t40 & #t41
	bitwise_and_op = #t40
	#t42 = a
	#t43 = b
	#t42 = #t42 | #t43
	bitwise_or_op = #t42
	#t44 = a
	#t45 = b
	#t44 = #t44 ^ #t45
	bitwise_xor_op = #t44
	#t46 = a
	#t46 =  ~ #t46
	bitwise_complement_a = #t46
	#t47 = b
	#t47 =  ~ #t47
	bitwise_complement_b = #t47
	#t48 = a
	#t49 = b
	#t48 = #t48 << #t49
	left_shift_op = #t48
	#t50 = a
	#t51 = b
	#t50 = #t50 >> #t51
	right_shift_op = #t50
	#t52 = 15
	c = #t52
	#t53 = c
	#t54 = 5
	#t55 = #t53 + #t54
	c = #t55
	#t56 = c
	#t57 = 3
	#t58 = #t56 - #t57
	c = #t58
	#t59 = c
	#t60 = 2
	#t61 = #t59 * #t60
	c = #t61
	#t62 = c
	#t63 = 2
	#t64 = #t62 % #t63
	c = #t64
	#t65 = c
	#t66 = 3
	#t67 = #t65 // #t66
	c = #t67
	#t68 = c
	#t69 = 3
	#t70 = #t68 ** #t69
	c = #t70
	#t71 = c
	#t72 = 1
	#t73 = #t71 & #t72
	c = #t73
	#t74 = c
	#t75 = 3
	#t76 = #t74 | #t75
	c = #t76
	#t77 = c
	#t78 = 5
	#t79 = #t77 ^ #t78
	c = #t79
	#t80 = c
	#t81 = 2
	#t82 = #t80 << #t81
	c = #t82
	#t83 = c
	#t84 = 1
	#t85 = #t83 >> #t84
	c = #t85
	#t86 = .str0
	save registers  
	stackpointer -8 
	param #t86 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t87 = addition
	save registers  
	stackpointer -8 
	param #t87 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t88 = subtraction
	save registers  
	stackpointer -8 
	param #t88 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t89 = multiplication
	save registers  
	stackpointer -8 
	param #t89 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t90 = floor_division
	save registers  
	stackpointer -8 
	param #t90 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t91 = modulo
	save registers  
	stackpointer -8 
	param #t91 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t92 = exponentiation
	save registers  
	stackpointer -8 
	param #t92 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t93 = .str1
	save registers  
	stackpointer -8 
	param #t93 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t94 = is_equal
	save registers  
	stackpointer -8 
	param #t94 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t95 = not_equal
	save registers  
	stackpointer -8 
	param #t95 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t96 = greater_than
	save registers  
	stackpointer -8 
	param #t96 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t97 = less_than
	save registers  
	stackpointer -8 
	param #t97 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t98 = greater_than_or_equal
	save registers  
	stackpointer -8 
	param #t98 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t99 = less_than_or_equal
	save registers  
	stackpointer -8 
	param #t99 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t100 = .str2
	save registers  
	stackpointer -8 
	param #t100 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t101 = logical_and
	save registers  
	stackpointer -8 
	param #t101 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t102 = logical_or
	save registers  
	stackpointer -8 
	param #t102 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t103 = logical_not_a
	save registers  
	stackpointer -8 
	param #t103 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t104 = logical_not_b
	save registers  
	stackpointer -8 
	param #t104 
	call print_bool 1
	stackpointer +8 
	restore registers  
	#t105 = .str3
	save registers  
	stackpointer -8 
	param #t105 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t106 = bitwise_and_op
	save registers  
	stackpointer -8 
	param #t106 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t107 = bitwise_or_op
	save registers  
	stackpointer -8 
	param #t107 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t108 = bitwise_xor_op
	save registers  
	stackpointer -8 
	param #t108 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t109 = bitwise_complement_a
	save registers  
	stackpointer -8 
	param #t109 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t110 = bitwise_complement_b
	save registers  
	stackpointer -8 
	param #t110 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t111 = left_shift_op
	save registers  
	stackpointer -8 
	param #t111 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t112 = right_shift_op
	save registers  
	stackpointer -8 
	param #t112 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t113 = .str4
	save registers  
	stackpointer -8 
	param #t113 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t114 = c
	save registers  
	stackpointer -8 
	param #t114 
	call print_int 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 


check_number:
	beginfunc 0
	#t115 = num
	#t116 = 0
	#t115 = #t115 > #t116
	ifFalse #t115 jump L0
	#t117 = .str5
	leave
	return #t117 
	jump L2

L0:
	#t118 = num
	#t119 = 0
	#t118 = #t118 < #t119
	ifFalse #t118 jump L1
	#t120 = .str6
	leave
	return #t120 
	jump L2

L1:
	#t121 = .str7
	leave
	return #t121 

L2:
	#t122 = .str8
	leave
	return #t122 
	endfunc 


sum_of_numbers:
	beginfunc 16
	#t123 = 0
	total = #t123
	i = 0
	#t124 = i
	#t125 = 1
	#t126 = limit
	#t127 = 1
	#t126 = #t126 + #t127
	i = #t125
	#t128 = i
	jump L4

L3:
	#t128 = #t128 + 1
	i = #t128

L4:
	#t129 = #t128 < #t126
	ifFalse #t129 jump L5
	#t130 = total
	#t131 = i
	#t132 = #t130 + #t131
	total = #t132
	jump L3

L5:
	#t133 = total
	leave
	return #t133 
	endfunc 


even_numbers:
	beginfunc 16
	#t134 = 0
	#t135 = 0
	#t136 = 0
	#t137 = 0
	#t138 = 0
	#t139 = 0
	#t140 = 0
	#t141 = 0
	#t142 = 0
	#t143 = 0
	#t144 = 88
	save registers  
	stackpointer -8 
	param #t144 
	call allocmem 1
	#t144 = return_value
	stackpointer +8 
	restore registers  
	#t145 = #t144
	*(#t145) = 10
	#t145 = 8 + #t145
	*(#t145) = #t134
	#t145 = 8 + #t145
	*(#t145) = #t135
	#t145 = 8 + #t145
	*(#t145) = #t136
	#t145 = 8 + #t145
	*(#t145) = #t137
	#t145 = 8 + #t145
	*(#t145) = #t138
	#t145 = 8 + #t145
	*(#t145) = #t139
	#t145 = 8 + #t145
	*(#t145) = #t140
	#t145 = 8 + #t145
	*(#t145) = #t141
	#t145 = 8 + #t145
	*(#t145) = #t142
	#t145 = 8 + #t145
	*(#t145) = #t143
	evens = #t144
	#t146 = 0
	num = #t146

L6:
	#t147 = num
	#t148 = limit
	#t147 = #t147 < #t148
	ifFalse #t147 jump L10
	#t149 = num
	#t150 = 1
	#t151 = #t149 + #t150
	num = #t151
	#t152 = num
	#t153 = 2
	#t152 = #t152 % #t153
	#t154 = 0
	#t152 = #t152 == #t154
	ifFalse #t152 jump L7
	#t155 = evens
	#t156 = num
	#t157 = 2
	#t156 = #t156 // #t157
	#t158 = 8 * #t156
	#t158 = #t155 + #t158
	#t158 = 8 + #t158
	#t159 = *(#t158)
	#t160 = num
	*(#t158) = #t160
	jump L8

L7:
	jump L6

L8:
	#t161 = evens
	#t162 = *(#t161)
	#t163 = 3
	#t162 = #t162 == #t163
	ifFalse #t162 jump L9
	jump L10
	jump L9

L9:
	jump L6

L10:
	#t164 = evens
	leave
	return #t164 
	endfunc 


calculate_sum:
	beginfunc 32
	#t165 = 10
	save registers  
	stackpointer -8 
	param #t165 
	call even_numbers 1
	#t166 = return_value
	stackpointer +8 
	restore registers  
	result_while = #t166
	#t167 = 5
	save registers  
	stackpointer -8 
	param #t167 
	call check_number 1
	#t168 = return_value
	stackpointer +8 
	restore registers  
	result_if = #t168
	#t169 = 5
	save registers  
	stackpointer -8 
	param #t169 
	call sum_of_numbers 1
	#t170 = return_value
	stackpointer +8 
	restore registers  
	result_for = #t170
	#t171 = .str9
	save registers  
	stackpointer -8 
	param #t171 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t172 = result_if
	save registers  
	stackpointer -8 
	param #t172 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t173 = .str10
	save registers  
	stackpointer -8 
	param #t173 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t174 = result_for
	save registers  
	stackpointer -8 
	param #t174 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t175 = .str11
	save registers  
	stackpointer -8 
	param #t175 
	call print_str 1
	stackpointer +8 
	restore registers  
	i = 0
	#t176 = i
	#t177 = result_while
	#t178 = *(#t177)
	i = 0
	#t179 = i
	jump L12

L11:
	#t179 = #t179 + 1
	i = #t179

L12:
	#t180 = #t179 < #t178
	ifFalse #t180 jump L13
	#t181 = result_while
	#t182 = i
	#t183 = 8 * #t182
	#t183 = #t181 + #t183
	#t183 = 8 + #t183
	#t184 = *(#t183)
	save registers  
	stackpointer -8 
	param #t184 
	call print_int 1
	stackpointer +8 
	restore registers  
	jump L11

L13:
	leave
	return  
	endfunc 


factorial:
	beginfunc 0
	#t185 = n
	#t186 = 1
	#t185 = #t185 <= #t186
	ifFalse #t185 jump L14
	#t187 = 1
	leave
	return #t187 
	jump L15

L14:
	#t188 = n
	#t189 = n
	#t190 = 1
	#t189 = #t189 - #t190
	save registers  
	stackpointer -8 
	param #t189 
	call factorial 1
	#t191 = return_value
	stackpointer +8 
	restore registers  
	#t188 = #t188 * #t191
	leave
	return #t188 

L15:
	#t192 = 1
	#t192 =  - #t192
	leave
	return #t192 
	endfunc 


Shape.__init__:
	beginfunc 0
	#t193 = self
	#t194 = #t193
	#t194 = 0 + #t194
	#t195 = name
	*(#t194) = #t195
	leave
	return  
	endfunc 


Shape.get_name:
	beginfunc 0
	#t196 = self
	#t197 = #t196
	#t197 = 0 + #t197
	#t198 = *(#t197)
	leave
	return #t198 
	endfunc 


Square.__init__:
	beginfunc 0
	#t199 = self
	#t200 = #t199
	#t200 = 0 + #t200
	#t201 = name
	*(#t200) = #t201
	#t202 = self
	#t203 = #t202
	#t203 = 8 + #t203
	#t204 = side_length
	*(#t203) = #t204
	leave
	return  
	endfunc 


Square.area:
	beginfunc 0
	#t205 = self
	#t206 = #t205
	#t206 = 8 + #t206
	#t207 = *(#t206)
	#t208 = 2
	#t207 = #t207 ** #t208
	leave
	return #t207 
	endfunc 


Math.__init__:
	beginfunc 0
	#t209 = 1
	leave
	return  
	endfunc 


Math.add:
	beginfunc 0
	#t210 = x
	#t211 = y
	#t210 = #t210 + #t211
	leave
	return #t210 
	endfunc 


main:
	beginfunc 16
	#t212 = 5
	save registers  
	stackpointer -8 
	param #t212 
	call calculate_sum 1
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -0 
	call basics 0
	stackpointer +0 
	restore registers  
	#t213 = 4
	save registers  
	stackpointer -8 
	param #t213 
	call factorial 1
	#t214 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -8 
	param #t214 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t215 = .str12
	#t216 = 4
	#t217 = 16
	save registers  
	stackpointer -8 
	param #t217 
	call allocmem 1
	#t217 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -24 
	param #t216 
	param #t215 
	param #t217 
	call Square.__init__ 3
	stackpointer +24 
	restore registers  
	square = #t217
	#t218 = square
	save registers  
	stackpointer -8 
	param #t218 
	call Shape.get_name 1
	#t219 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -8 
	param #t219 
	call print_str 1
	stackpointer +8 
	restore registers  
	#t220 = square
	save registers  
	stackpointer -8 
	param #t220 
	call Square.area 1
	#t221 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -8 
	param #t221 
	call print_int 1
	stackpointer +8 
	restore registers  
	#t222 = 0
	save registers  
	stackpointer -8 
	param #t222 
	call allocmem 1
	#t222 = return_value
	stackpointer +8 
	restore registers  
	save registers  
	stackpointer -8 
	param #t222 
	call Math.__init__ 1
	stackpointer +8 
	restore registers  
	math = #t222
	#t223 = math
	#t224 = 2
	#t225 = 3
	save registers  
	stackpointer -24 
	param #t225 
	param #t224 
	param #t223 
	call Math.add 3
	#t226 = return_value
	stackpointer +24 
	restore registers  
	save registers  
	stackpointer -8 
	param #t226 
	call print_int 1
	stackpointer +8 
	restore registers  
	leave
	return  
	endfunc 

