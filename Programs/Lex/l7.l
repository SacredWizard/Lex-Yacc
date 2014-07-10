%{
	#include<stdio.h>
	FILE *fp1,*fp2;
	int c=0;
	char replace[30];
%}
%%
(good)	{ c++; fprintf(yyout,replace);}
.|[\n]	{fprintf(yyout,yytext);}
%%
int main()
{
	char fname1[20],fname2[20];
	
	printf("Enter the filename:");
	scanf("%s",fname1);
	fp1=fopen(fname1,"r");
	if(!fp1)
	{
		printf("Invalid filename");
		return 0;
	}
	
	printf("Enter the destination file:");
	scanf("%s",fname2);
	fp2=fopen(fname2,"w");
	if(!fp2)
	{
		printf("Invalid file");
		return 0;
	}
	printf("Enter the replacing word:");
	scanf("%s",replace);
	yyin=fp1;
	yyout=fp2;
	
	yylex();
	
	fclose(fp1);
	fclose(fp2);
	
	printf("No.of replacements done:%d",c);
	return 0;
}					
