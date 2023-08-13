#include <stdio.h>

typedef struct {
	char* name;
} Person;

int main(void)
{
	Person gitahi;
	gitahi.name = "Gitahi";
	printf("Name: %s\n", gitahi.name);
	return (0);
}
