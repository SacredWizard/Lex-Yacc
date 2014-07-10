%{
	#include"y.tab.h"
%}
%%
[\t \n]*"for"						{return FOR;}
"("							{return OB;}
")"							{return CB;}
[\t \n]*"}"[\t \n]*					{return CCB;}
[\t \n]*"{"[\t \n]*					{return OCB;}
[\t \n]*[-| <>+*/!=%$^&a-zA-Z0-9]+[\t \n]*	{return ST;}
[\t \n]*";"						{return SC;}
["]							{return DQ;}
.							{return yytext[0];}
[\n]							{;}		
%%
