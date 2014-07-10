%{
	#include<stdio.h>
	int flag=0;
%}
%token LETTER DIGIT
%%
S:LETTER A	{flag=1;printf("Valid Variable");return 0;}
A:LETTER A
 |DIGIT A
 |;
%%
int main()
{
	printf("\nEnter the variable name:");
	yyparse();
	return 0;
}
int yyerror()
{
	if(!flag)
		printf("\nError\n");
	return 0;
}					
