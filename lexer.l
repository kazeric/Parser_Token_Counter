%{
#include "parser.tab.h" // Include the YACC-generated header file
%}

%%
a               { return 'a'; }  // Return token for 'a'
b               { return 'b'; }  // Return token for 'b'
[ \t\n]+        ;                // Ignore whitespace
.               { return yytext[0]; } // Return other characters as-is
<<EOF>>         { return 0; }  // Signal end of input

%%
int yywrap() {
    return 1; // Indicate no more input to process
}