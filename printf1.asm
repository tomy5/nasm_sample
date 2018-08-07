	extern printf
	section .data

	a: dq 5
fmt: db "a=%ld, rax=%ld", 10, 0

	section .text

	global _start

_start:
	push rbp

	mov rax, [a]
	add rax, 2
	mov rdi, fmt
	mov rsi, [a]
	mov rdx, rax
	mov rax, 0
	call printf
	
	pop rbp


	mov rax, 1
	mov rbx, 0
	int 0x80
	;ret

