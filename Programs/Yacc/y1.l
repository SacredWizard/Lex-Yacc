%{
	#include"y.tab.h"
	int a=0,b=0,c=0;
%}
%%
[a]	{a++;return H;}
[b]	{ b++; return K;}
.	{ c++; printf("Error"); exit(0);}
%%
