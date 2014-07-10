%{
	#include<stdio.h>
	int flag=0;
%}
%token	H K L
%%
T:S	{ flag=1; printf("The string is accepted\n");return 0;}
S:A B
;
A:H A K
|
;
B:K B L
|
;
%%

int main()
{
	printf("Enter the string:");
	yyparse();
	return 0;
}

int yyerror()
{
	if(flag==0)
		printf("The string is not accepted\n");
	return 0;
}				
