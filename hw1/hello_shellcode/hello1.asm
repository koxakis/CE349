;basic hello world like assembly code that we will turn into shell code
;compile with nasm -f elf64 hello1.asm; ld -o hello1 hello1.o

section .data

msg db '/bin/sh',0xa

section .text

global _start

_start:

;write(int fd, char *msg, unsigned int len)
mov rax, 1
mov rdi, 1
mov rsi, msg
mov rdx, 8
syscall

;exit(int ret)
mov rax, 59
mov rdi, 0
syscall
