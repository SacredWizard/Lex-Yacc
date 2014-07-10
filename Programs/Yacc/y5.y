%{
	#include<stdio.h>
	int flag=0,nest=0;
%}
%token IF SEMI OB CB ST OCB CCB SC DQ
%%
S:A	{ flag=1; printf("\nValid statement\nNo.of times the nesting is done:%d\n",nest-1); return 0;}
	
A:IF B C	{	nest++;}
;
B:OB ST CB
;
C:OCB C CCB
|SC
|ST SC
|ST OB DQ ST DQ CB SC
|A
;
%%

int main()
{
	printf("Enter the if statement:");
	yyparse();
	return 0;
}

int yyerror()
{
	if(flag==0)
		printf("Invalid statement");
	return 0;
}				
