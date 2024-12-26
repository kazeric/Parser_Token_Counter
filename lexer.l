%{
#include "parser.tab.h" // Include the YACC-generated header file
%}

%%
a               { return 'a'; }  // Return token for 'a'
b               { return 'b'; }  // Return token for 'b'
[ \t\n]+        ;                // Ignore whitespace
&         { return 0; }
.               { return yytext[0]; } // Return other characters as-is
%%
int yywrap() {
    return 1; // Indicate no more input to process
}