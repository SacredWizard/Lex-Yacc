%{
	#include<stdio.h>
	int id=0;
	FILE *fp;
%}
%%
["int"|"float"|"double"|"FILE"|"char"][ ]([*]*[_|a-z|A-Z][_|a-z|A-Z|0-9]*[,])|([*]*[_|a-z|A-Z][_|a-z|A-Z|0-9]*";")	{	id++;   }
["int"|"float"|"double"|"char"|"FILE"][ ]([*]*[_|a-z|A-Z][_|a-z|A-Z|0-9]*"["[0-9]*"]"[,])|([*]*[_|a-z|A-Z][_|a-z|A-Z|0-9]*"["[0-9]*"]"";")	{	id++;   }
.|\n	{;}
%%

int main()
{
	char fname[20];
	
	printf("Enter the filename:");
	scanf("%s",fname);
	
	fp=fopen(fname,"r");
	if(fp==NULL)
	{
		printf("Invalid file");
		return 0;
	}
	
	yyin=fp;
	
	yylex();
	
	fclose(fp);
	printf("No.of identifiers:%d\n",id);
	
	return 0;
}
