global ft_write
section .text
extern __errno_location

ft_write:	
			mov rax, 1
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
