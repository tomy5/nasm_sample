extern printf
section .data

msg: db "hello, world", 0x00
fmt: db "%s", 0x0a, 0x00

section .text
global _start

_start:
	mov rdi, fmt
	mov rsi, msg
	mov rax, 0
	call printf

	mov rax, 1
	mov rbx, 0
	int 0x80

