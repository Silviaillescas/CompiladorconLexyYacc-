%{
#include "y.tab.h"
#include <stdio.h>
%}

%%
[0-9]+          { yylval = atoi(yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]*   { yylval = 0; return IDENTIFIER; }
[ \t\n]+        ; // Ignorar espacios y saltos de línea
"+"             { return PLUS; }
"-"             { return MINUS; }
"*"             { return TIMES; }
"/"             { return DIVIDE; }
"="             { return ASSIGN; }
";"             { return SEMICOLON; }
.               { printf("Token no reconocido: %s\n", yytext); }
%%

int yywrap() {
    return 1;
}
