section .text
extern	__errno_location
global	ft_read

ft_read:	
			
			mov rax, 0
			syscall
			cmp rax, byte 0
			jl error
			ret

error:		
			mov rbx, rax
			neg rbx
			push rax
			call __errno_location
			mov [rax], rbx
			pop rax
			mov rax, -1	
			ret
