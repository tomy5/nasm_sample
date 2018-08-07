	SECTION .data
msg: db "Hello World", 0x0a
len: equ $-msg

	SECTION .text
	global _start
_start:
	mov rdx, len
	mov rcx, msg
	mov rbx, 1
	mov rax, 4
	int 0x80

	mov rbx, 0
	mov rax, 1
	int 0x80
