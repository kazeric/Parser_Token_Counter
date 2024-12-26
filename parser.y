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
| '&'
 ;                        

%%
int main() {
    printf("Enter a string: ");
    if (yyparse() == 0) { // Successful parsing
        printf("The string is valid")
        printf("Number of 'a's: %d\n", a_count);
    } else {
        printf("Invalid string.\n");
    }
    return 0;
}
void yyerror(const char *s) {}
