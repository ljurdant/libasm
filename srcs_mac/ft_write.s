global _ft_write
section .text
extern ___error

_ft_write:	mov rax, 0x2000004
			syscall
			jc error
			ret

error:
			mov r15, rax
			push rax
			call ___error
			mov [rax], r15
			pop rax
			mov rax, -1
			ret
