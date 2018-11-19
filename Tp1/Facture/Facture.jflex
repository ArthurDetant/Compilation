%%
%unicode
%line
%standalone
FACTURE= "FACTURE"
NO = [a-zA-Z]{2}[0-9]{3}
LIB = [a-zA-Z]+
NB = [0-9]+
VIRG = ","
TOTAL = "TOTAL"
PT = "."
%%

{FACTURE} {System.out.println("Ligne " +(yyline+1) + " : " +"FACTURE");}
{NO} {System.out.println("Ligne " +(yyline+1) + " : " +"NO");}
{LIB} {System.out.println("Ligne " +(yyline+1) + " : " +"LIB");}
{NB} {System.out.println("Ligne " +(yyline+1) + " : " +"NB");}
{VIRG} {System.out.println("Ligne " +(yyline+1) + " : " +"VIRG");}
{TOTAL} {System.out.println("Ligne " +(yyline+1) + " : " +"TOTAL");}
{PT} {System.out.println("Ligne " +(yyline+1) + " : " +"PT");}
.	{;}
"\n"	{;}
