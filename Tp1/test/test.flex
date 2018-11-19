
%%
%standalone
%unicode

%%

a[a-z]+	{System.out.println(yytext());}
[\t]	{;}
.		{;}
