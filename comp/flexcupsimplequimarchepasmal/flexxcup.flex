import java_cup.runtime.Symbol;

%%

%cup
%line
%unicode

%eof{
	 System.out.println("\nTerminé ");
%eof}

lettre = [a-zA-Z]
mot = {lettre}+
chiffre = [0-9]
nombre = {chiffre}+

%%



[\t]			{ ; }

TOTAL			{ System.out.print("TOTAL"); return new Symbol(sym.TOTAL);}
FACTURE			{ System.out.print("FACTURE"); return new Symbol(sym.FACTURE);}
NO{chiffre}{3}	{ System.out.println("NO"); return new Symbol(sym.NO);}
{mot}			{ System.out.print("ID"); return new Symbol(sym.ID);}
{nombre}		{ System.out.print("ENTIER"); return new Symbol(sym.ENTIER);}
\,				{ System.out.println("VIRG "); return new Symbol(sym.VIRG);}
\.				{ System.out.print("POINT "); return new Symbol(sym.POINT);}
\n				{ ;}
.				{ ;}





