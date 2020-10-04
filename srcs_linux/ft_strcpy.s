section .text
global ft_strcpy

ft_strcpy: mov rcx, rdi
			dec rdi
			dec rsi 
			
			

loop:		inc rdi
			inc rsi
			mov rdx, [rsi]
			mov [rdi], rdx
			cmp [rdi], byte 0
			jnz loop
			mov [rdi], byte 0

return:			
		mov rax, rcx
		ret

