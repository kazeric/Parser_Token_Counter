%{
#include <stdio.h>
#include <stdlib.h>


int a_count = 0; // Counter for 'a'
int yylex(void);
void yyerror(const char *s);
%}

%token a b

%%


S: 'a' S           { a_count++; }   // Increment 'a' count
|'b' 
 ;                        

%%
int main() {
    printf("Enter a string: ");
    yyparse();
    printf("Number of 'a's: %d\n", a_count);
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
