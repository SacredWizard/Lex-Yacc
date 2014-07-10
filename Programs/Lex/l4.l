%{
	#include<stdio.h>
	int co=0;
	FILE *fp,*fp1;
%}

%%
"/*"[\n]*[^"*/"]*[\n]*"*/"	{	co++;	}
.|[\n]				{    fprintf(yyout,yytext);  }
%%

int main()
{
	char cfile[30],target[30];
	
	printf("\nEnter the name of the c file:");
	scanf("%s",cfile);
	fp=fopen(cfile,"r");
	if(fp==NULL)
	{
		printf("Invalid file\n");
		return 0;
	}
	
	printf("Enter the file to which it is to be copied:");
	scanf("%s",target);
	fp1=fopen(target,"w");
	if(fp1==NULL)
	{
		printf("Invalid file\n");
		return 0;
	}
	yyin=fp;
	yyout=fp1;
	yylex();
	
	printf("No.of comments=%d\n\n",co);
	fclose(fp);
	fclose(fp1);
	return 0;
}

	
	
