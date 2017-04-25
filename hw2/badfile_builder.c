/* Badfile builder */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[]) {
	char buf[40];
	FILE *badfile;

	*(long *) &buf[0] = /*address*/;
	*(long *) &buf[8] = /*address*/;
	*(long *) &buf[16] = /*address*/;

	fwrite(buf, sizeof(buf), 1, badfile);
	fclose(badfile);
	return 0;
}
