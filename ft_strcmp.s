section .text
global _ft_strcmp

_ft_strcmp: 	dec rsi
				dec rdi

loop:			inc rdi
				inc rsi
				mov dl, [rdi]
				mov cl, [rsi]
				cmp dl, byte 0
				je end_of_string
				cmp cl, byte 0
				je end_of_string
				cmp dl, cl
				je loop

end_of_string:	sub dl, cl
				movsx rax, dl
				ret
