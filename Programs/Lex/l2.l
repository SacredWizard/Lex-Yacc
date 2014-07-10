%{
	#include<stdio.h>
	int words=0,flag=0;
%}

%%

[^\n\t. ]+	{   words++;   }
.    {  flag=1; }
%%

int main()
{
	char ss[20];
	FILE *fp;
	
	printf("Enter the filename:");
	scanf("%s",ss);
	fp=fopen(ss,"r");
	if(fp==NULL)
	{
		printf("Invalid File\n");
		return 0;
	}
	yyin=fp;
	yylex();
	printf("\nNo.of words=%d\n\n",words);
	
	return 0;
}
