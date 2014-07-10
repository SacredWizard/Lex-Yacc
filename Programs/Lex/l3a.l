%{
	#include<stdio.h>
	int posint=0,nint=0;
	int flag=0;
%}

%%
[-][1-9][0-9]*		{   nint++; }
[+]?[0-9]+		{   posint++; }
[ \n]			{;}
[+-]*[0-9]*[+-]*[./]*[+-]*[0-9]*[+-]*	{   flag++;	}     

%%

int main()
{
//[+|-][+|-]+[0-9]*[.|/]*[0-9]*[+|-]*|	
	printf("Enter the integers:");
	yylex();
	if(flag)
	{
		printf("No.of Invalid Input=%d",flag);
		printf("\nNo.of positive integers=%d",posint);
	        printf("\nNo.of Negative Integers=%d\n",nint);
		return 0;
	}
	printf("\nNo.of positive integers=%d",posint);
	printf("\nNo.of Negative Integers=%d\n",nint);

	return 0;
}
	
