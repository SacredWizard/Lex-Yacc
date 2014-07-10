%{
	#include<stdio.h>
	int flag=0;
%}
%token H K
%%
T:S	{flag=1; printf("String is accepted");	return 0;}
S:A B
A:H A
|
;
B:K B
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
	if(!flag)
		printf("Error");
	return 0;
}					
