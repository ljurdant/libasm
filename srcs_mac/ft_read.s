section .text
global	_ft_read
extern	___error

_ft_read:	mov rax, 0x2000003
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
