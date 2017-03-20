;hello4.asm  attempts to get rid of all input terminating
; characters

section .text

global _start

_start:
;clear out the registers we are going to need
xor rax, rax
xor rsi, rsi
xor rdi, rdi
xor rdx, rdx

;write(int fd, char *msg, unsigned int len)
mov al, 1
mov dil, 1
;/bin/sh =  2f, 62, 69, 6e, 2f, 73, 68
;push n / s h
push 0x6e69622f
;push / b i
mov dword [rsp+4], 0x68732f2f
mov rsi, rsp
mov dl, 8
syscall
;restore stack
;add rsp, 8

xor rax, rax
;execve(path -> rsi, args -> rdi, envp -> dl)
mov al,59
mov rsi, rsp

syscall
