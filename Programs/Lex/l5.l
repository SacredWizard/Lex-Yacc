%{
	#include<stdio.h>
	int print=0,scan=0;
	FILE *fp1,*fp2;
%}
%%
"printf"	{	print++;fprintf(yyout,"writf");	}
"scanf"		{	scan++; fprintf(yyout,"readf");	}
[\n|"%"]|.		{	fprintf(yyout,yytext);		}
%%

int main()
{
	char fname[30];
	
	printf("Enter the filename:");
	scanf("%s",fname);
	
	fp1=fopen(fname,"r");
	if(fp1==NULL)
	{
		printf("Invalid file");
		return 0;
	}
	
	fp2=fopen(fname,"r+");
	if(fp2==NULL)
	{
		printf("Invalid File");
		return 0;
	}
	
	yyout=fp2;
	yyin=fp1;
	
	yylex();
	
	fclose(fp1);
	fclose(fp2);
	
	printf("No.of \"printf\" statements are:%d\n",print);
	printf("No.of \"scanf\" statements are:%d\n",scan);
	
	return 0;
}
