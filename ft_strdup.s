section .text
global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc

_ft_strdup: 
			push rdi
			mov rbx, rdi
			call _ft_strlen
			add rax, 1
			mov rdi, rax
			call _malloc
			cmp rax, byte 0
			jz error
			mov rdi, rax
			mov rsi, rbx
			call _ft_strcpy
			pop rdi
			ret

error:
		mov rax, 0x0
		pop rdi
		ret
			
