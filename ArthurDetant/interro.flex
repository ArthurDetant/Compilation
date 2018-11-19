import java_cup.runtime.*;

%%

%cup
%unicode
%line

chiffre = [0-9]
var = [a-zA-Z]+
entier = {chiffre}+
blanc = [\t]
DECLARATIONS= "DECLARATIONS"
CODE = "CODE"
read = "read("
write = "write("

%%

{DECLARATIONS} {System.out.println("DECLARATIONS"); return new Symbol(sym.DECLARATIONS);}
{CODE} 		{System.out.println("CODE"); return new Symbol(sym.CODE);}
{var} 		{System.out.println("VAR"); return new Symbol(sym.VAR);}
{read}		{System.out.println("FONCTION1"); return new Symbol(sym.FONCTION1);}
{write}		{System.out.println("FONCTION2"); return new Symbol(sym.FONCTION2);}
"="			{System.out.println("EGAL"); return new Symbol(sym.EGAL);}
":"			{System.out.println("DEUXPOINTS"); return new Symbol(sym.DEUXPOINTS);}
";"			{System.out.println("POINTVIRG"); return new Symbol(sym.POINTVIRG);}
"(" 		{System.out.println("PO"); return new Symbol(sym.PO);}
")" 		{System.out.println("PF"); return new Symbol(sym.PF);}
{entier} 	{System.out.println("NUM"); return new Symbol(sym.NUM);}
"\n"  		{;}
{blanc}		{;}
"//".*  { ; }
.			{System.out.println(yytext());}
