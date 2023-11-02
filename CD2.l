%{
#include <stdio.h>
%}

%option noyywrap


%%
int|float|char|while|double|if|else|return|case|switch|goto|long|void|break {
    printf("Keyword: %s\n", yytext);
}
[a-zA-Z_][a-zA-Z0-9_]* {
    printf("Identifier: %s\n", yytext);
}
[0-9]+ {
    printf("Number: %s\n", yytext);
}
[+\-*/=] {
    printf("Operator: %s\n", yytext);
}
[ \t\n] {
    // Ignore whitespace characters
}
. {
    printf("Invalid: %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}
