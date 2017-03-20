; Attempts to remove NULL bytes inserted by the copies.

section .data

msg db 'Owned!!',0xa

section .text

global _start

_start:

;write(int fd, char *msg, unsigned int len)
mov al, 1
mov dil, 1
mov rsi, msg
mov dl, 8
syscall

;exit(int ret)
mov al, 60
mov dil, 0
syscall
