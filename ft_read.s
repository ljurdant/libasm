section .text
global	_ft_read
extern	___error

_ft_read:	mov rax, 0x2000003
			syscall
			cmp rbx, 0
			jz error
			ret

error:
		mov rbx, rax
		mov rax, -1
		ret
