%%
%unicode
%line

CHIFFRE = [0-9]
ENTIER = {CHIFFRE}+
REEL = {ENTIER}*"."{ENTIER}
%%
{REEL} {return new Yytoken(yytext(), "REEL");}
{ENTIER} {return new Yytoken(yytext(),"ENTIER");}
. {}
\n {}
