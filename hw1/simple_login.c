/* Compile with
   gcc -Wall -O0 -g -zexecstack -fno-stack-protector -g simple_login.c -o simple_login
   Make sure you change the owner and group of the binary to root
   chown root:root ./simple_login
   And then set the sticky bit as root
   sudo chown +s ./simple_login
*/

#include <stdio.h>
#include <string.h>
#include <unistd.h>

char *secret = "joshua";

void go_shell()
{
	char *shell =  "/bin/sh";
	char *cmd[] = {"/bin/sh", NULL };
	printf("Would you like to play a game...\n");
	setreuid(0, 0);
	execve(shell,cmd,NULL);
}

int authorize()
{
	char password[64];
	printf("%p\nEnter Password: ", password);
	gets(password);
	if (!strcmp(password,secret))
		return 1;
	else
		return 0;
}

int main()
{
	if (authorize())
	{
		printf("login successful\n");
		go_shell();
	} else {
		printf("Incorrect password\n");
	}
	return 0;
}
	
