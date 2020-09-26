section .text
global _ft_strdup
extern _ft_strlen
extern _malloc

_ft_strdup: push rbp
        	push r12
        	push rbx
			call _ft_strlen
			add rax, 1
			mov rdi, rax
			call _malloc
			pop rbx
        	pop r12
        	pop rbp

