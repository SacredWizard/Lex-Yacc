%{
	#include<stdio.h>
	int flag=0;
%}
%token FOR CCB OCB CB OB ST SC DQ
%%
S:F		{ flag=1; printf("\nValid statement\n"); return 0;}
F:FOR OB ST SC ST SC ST CB A
;
A:OCB A CCB
|SC
|ST SC
|ST OB DQ ST DQ CB SC
|F
;
%%
int main()
{
	printf("Enter the for statements:");
	yyparse();
	return 0;
}
int yyerror()
{
	if(flag==0)
		printf("Invalid");
	return 0;
}				
