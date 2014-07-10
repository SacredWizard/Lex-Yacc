%{
	#include<stdio.h>
	int flag=0,pos=0,neg=0;
%}

%%
[+]?[0-9]+[./][1-9][0-9]*		{   pos++;	}
[-][0-9]+[./][1-9][0-9]*		{   neg++;	}
[+-]?[+-]*[0-9]*[./]*[+-]*[./]*[0-9]*[+-]*[./]*[+-]*	{ flag++; }
[a-zA-Z]+			{ flag++;}
%%

int main()
{
	printf("Enter the fractions:");
	yylex();
	if(flag)
	{
		printf("No.of Invalid Inputs=%d\n",flag);
		printf("No.of positive fractions=%d\n",pos);
		printf("No.of negative fractions=%d\n",neg);
		return 0;
	}
	printf("No.of positive fractions=%d\n",pos);
	printf("No.of negative fractions=%d\n",neg);
	return 0;
}
