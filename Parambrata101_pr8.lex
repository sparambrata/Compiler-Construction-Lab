%{
#include "y.tab.h"
#include <stdlib.h> // Needed for the atoi() function
%}

%%
[0-9]+ 	{ yylval = atoi(yytext); return NUMBER; }
[ \t]+ 	; // ignore whitespace
\n 	{ return EOL; }
"+" 	{ return PLUS; }
"-" 	{ return MINUS; }
"*" 	{ return MULT; }
"/" 	{ return DIV; }
"(" 	{ return LPAREN; }
")" 	{ return RPAREN; }
. 	{ return yytext[0]; } // catch unexpected character
%%
