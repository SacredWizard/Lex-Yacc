%{
	#include<stdio.h>
	int flag=0;
%}
%token DIGIT OPND
%left '+''-'
%left '*''/'
%%
E:S	{flag=1; printf("\nValid Expression\n");}
S:S'+'S
|S'-'S
|S'/'S
|S'*'S
|'('S')'
|DIGIT
|OPND;
%%
int main()
{
	printf("\nEnter the expression:");
	yyparse();
	return 0;
}
int yyerror()
{
	if(!flag)
		printf("Error\n");
	return 0;
}
