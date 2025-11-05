%{
#include <stdio.h>
#include <ctype.h>

char* toup(char* str);
char* tolow(char* str);
%}

%%
[a-z]+ { printf("%s", toup(yytext)); }
[A-Z]+ { printf("%s", tolow(yytext)); }
%%

int main(){
	printf("Enter a word in all caps or all small : ");
	yylex();
}

char* toup(char* str){
	int i = 0;
	while(str[i]){
		str[i] = toupper((unsigned char)str[i]);
		i++;
	}
	return str;
}

char* tolow(char* str){
	int i = 0;
	while(str[i]){
		str[i] = tolower((unsigned char)str[i]);
		i++;
	}
	return str;
}
