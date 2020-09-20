section .text
global _ft_strcmp

_ft_strcmp: dec rdi
			dec rsi

loop:	inc rdi
		inc rsi
		mov rdx, [rsi]
		cmp rdx, [rdi]
		jz loop

return:	ret
