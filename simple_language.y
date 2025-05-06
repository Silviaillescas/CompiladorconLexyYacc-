%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token NUMBER IDENTIFIER
%token PLUS MINUS TIMES DIVIDE ASSIGN SEMICOLON
%token LPAREN RPAREN

%%

program:
    program statement
    |
    ;

statement:
    IDENTIFIER ASSIGN expression SEMICOLON
        { printf("Asignación realizada\n"); }
    ;

expression:
    expression PLUS term
        { printf("Suma\n"); }
    |
    expression MINUS term
        { printf("Resta\n"); }
    |
    term
    ;

term:
    term TIMES factor
        { printf("Multiplicación\n"); }
    |
    term DIVIDE factor
        { printf("División\n"); }
    |
    factor
    ;

factor:
    NUMBER
    |
    IDENTIFIER
    |
    LPAREN expression RPAREN
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    printf("Ingrese expresiones:\n");
    yyparse();
    return 0;
}