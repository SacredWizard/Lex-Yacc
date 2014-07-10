%{
	#include<stdio.h>
	int vow=0,con=0,others=0;
%}

%%
[aeiouAEIOU]	{	con++;	}
[a-zA-Z]	{	vow++;	}
.		{ 	others++;}
%%

int main()
{
	FILE *fp;
	char ss[20];

	printf("\nEnter the filename:");
	scanf("%s",ss);
	fp=fopen(ss,"r");
	if(fp==NULL)
	{
		printf("Invalid File\n");
		return 0;
	}	
	yyin=fp;
	yylex();
	printf("No.of vowels=%d",vow);
	printf("\nNo.of consonants=%d\n\n",con);

	return 0;
}
