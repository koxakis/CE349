#include<stdio.h>
#include<stdlib.h>
#include<string.h>

const char code[] =
/*"\x55"	// push   %rbp
"\x48\x89\xe5"	// mov    %rsp,%rbp
"\x48\x83\xec\x30"	// sub    $0x30,%rsp
"\x89\x7d\xdc"	// mov    %edi,-0x24(%rbp)
"\x48\x89\x75\xd0"	// mov    %rsi,-0x30(%rbp)
"\x64\x48\x8b\x04\x25\x28\x00\x00\x00"	// mov    %fs:0x28,%rax
"\x48\x89\x45\xf8"	// mov    %rax,-0x8(%rbp)
"\x31\xc0"	// xor    %eax,%eax
"\x48\xc7\x45\xe0\x44\x06\x40\x00"	// movq   $0x400644,-0x20(%rbp)
"\x48\xc7\x45\xe8\x00\x00\x00\x00"	// movq   $0x0,-0x18(%rbp)
"\x48\x8b\x45\xe0"	// mov    -0x20(%rbp),%rax
"\x48\x8d\x4d\xe0"	// lea    -0x20(%rbp),%rcx
"\xba\x00\x00\x00\x00"	// mov    $0x0,%edx
"\x48\x89\xce"	// mov    %rcx,%rsi
"\x48\x89\xc7"	// mov    %rax,%rdi
"\xe8\x94\xfe\xff\xff"	// callq  400440 <execve@plt>
"\xbf\x00\x00\x00\x00"	// mov    $0x0,%edi
"\xe8\x9a\xfe\xff\xff"	// callq  400450 <exit@plt>
*/
	"\x48\x31\xc0"				//  xor %rax, %rax
	"\x48\x31\xd2" 				//  xor %rdx, %rdx
	"\x48\x31\xf6"				//	xor %rsi, %rsi
	"\x48\x31\xff"				// 	xor %rdi, %rdi
	"\x55" 						// 	push   %rbp
	"\x48\x89\xe5"				//	mov    %rsp,%rbp
	"\x48\x83\xec\x10" 			//	sub    $0x10,%rsp
	"\x89\x7d\xfc"				//	mov    %edi,-0x4(%rbp)
	"\x48\x89\x75\xf0" 			//	mov    %rsi,-0x10(%rbp)
	"\xba\x00\x00\x00\x00" 		//	mov    $0x0,%edx
	"\xbe\x00\x00\x00\x00" 		//	mov    $0x0,%esi
	"\xbf\x24\x06\x40\x00" 		//	mov    $0x400624,%edi
	"\xe8\xb7\xfe\xff\xff" 		//	callq  400440 <execve@plt>
	"\xbf\x00\x00\x00\x00" 		//	mov    $0x0,%edi
	"\xe8\xbd\xfe\xff\xff" 		//	callq  400450 <exit@plt>
	//"\x66\x2e\x0f\x1f\x84\x00\x00" //	nopw   %cs0x0(%rax,%rax,1)
	//"\x00\x00\x00"
	//"\x0f\x1f\x00" //	nopl   (%rax)
;

int main( int argc, char *argv[]){

    char buf[sizeof(code)];
    strcpy(buf, code);
    ((void(*)( ))buf)( );

}
