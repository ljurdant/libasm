section .text
global _ft_strcpy

_ft_strcpy: mov rcx, rdi
			dec rdi
			dec rsi 
			
			

loop:		inc rdi
			inc rsi
			mov rdx, [rsi]
			mov [rdi], rdx
			cmp [rdi], byte 0
			jnz loop

return:			
		mov rax, rcx
		ret

