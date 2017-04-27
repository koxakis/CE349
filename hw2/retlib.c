/* a_hole successor*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int bof(FILE *badfile){
	char buffer[12];

	/* Buffer overflow point */
	fread(buffer, sizeof(char), 64, badfile);

	return 1;
}

int main(int argc, char const *argv[]) {
	FILE *badfile;

	badfile = fopen("badfile","r");
	bof(badfile);

	printf("Returned Properly\n" );

	fclose(badfile);
	return 1;
}
