%{
#include <stdio.h>
int count_A=0;
%}

%%
[A][a-zA-Z0-9_]* {count_A++;}
. {}
%%

int yywrap(){
	return 1;
}

int main(){
	printf("Enter the words : ");
	yylex();
	printf("Number of words starting with 'A' : %d\n", count_A);
}
