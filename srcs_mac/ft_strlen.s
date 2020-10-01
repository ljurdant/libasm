section .text
global _ft_strlen

_ft_strlen:	mov rcx, -1
			dec rdi

loop:		
			inc rdi
			inc rcx
			cmp [rdi], byte 0
			jnz loop
			mov rax, rcx
			ret
