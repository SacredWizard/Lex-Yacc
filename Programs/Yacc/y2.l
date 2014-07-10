%{
	#include"y.tab.h"
%}
%%
[a]	{ return H;}
[b]	{return K;}
[c]	{return L;}
.	{ return 0;}
%%	
