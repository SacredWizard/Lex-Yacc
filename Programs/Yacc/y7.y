%{
	#include<stdio.h>
	int flag=0;
%}
%token NUM
%left '+''-'
%left '*''/'
%%
E:S	{flag=1; printf("The result is %d\n",$1);return 0;}
S:S'+'S		{$$=$1+$3;	}
|S'-'S		{$$=$1-$3;}
|S'*'S		{$$=$1*$3;}
|S'/'S		{$$=$1/$3;}
|'('S')'	{$$=$2;}
|NUM		{$$=$1;}
;
%%
int main()
{
	printf("Enter the expression:");
	yyparse();
	return 0;
}

int yyerror()
{
	if(flag==0)
		printf("Invlid expression");
	return 0;
}
