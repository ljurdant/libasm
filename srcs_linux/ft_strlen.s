section .text
global ft_strlen

ft_strlen:	mov rcx, -1
			dec rdi

loop:		
			inc rdi
			inc rcx
			cmp [rdi], byte 0
			jnz loop
			mov rax, rcx
			ret
