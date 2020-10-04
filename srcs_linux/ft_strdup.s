section .text
global ft_strdup
extern ft_strlen
extern ft_strcpy
extern malloc

ft_strdup: 
			push rdi
			mov rbx, rdi
			call ft_strlen
			add rax, 1
			mov rdi, rax
			call malloc
			cmp rax, byte 0
			jz error
			mov rdi, rax
			mov rsi, rbx
			call ft_strcpy
			pop rdi
			ret

error:
		mov rax, 0x0
		pop rdi
		ret
			
