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
;Owned!!! =  4f,77,6e,65,64,21,21,21
;push e,n,w,O
push 0x656e774f
;push !,!,!,d
mov dword [rsp+4], 0x21212164
mov rsi, rsp
mov dl, 8
syscall
;restore stack
add rsp, 8

xor rax, rax
;exit(int ret)
mov al,60
xor rdi, rdi
syscall
