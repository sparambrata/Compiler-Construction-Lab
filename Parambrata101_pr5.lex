%{
#include <stdio.h>

void printHex(char *decStr) {
	int num = 0;
	for (int i = 0; decStr[i] != '\0'; i++) {
		num = num * 10 + (decStr[i] - '0');
	}

	if (num == 0) {
		printf("0\n");
		return;
	}

	char hex[20];
	int i = 0;
	while (num > 0) {
		int rem = num % 16;
		if (rem < 10)
			hex[i++] = '0' + rem;
		else
			hex[i++] = 'A' + (rem - 10);
		num /= 16;
	}

	for (int j = 0; j < i / 2; j++) {
		char temp = hex[j];
		hex[j] = hex[i - j - 1];
		hex[i - j - 1] = temp;
	}

	hex[i] = '\0';
	printf("%s\n", hex);
}
%}

%%
[0-9]+ { printHex(yytext); }
%%

int main() {
	yylex();
	return 0;
}
