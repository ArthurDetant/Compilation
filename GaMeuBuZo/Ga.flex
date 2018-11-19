import java_cup.runtime.*;

%%

%cup
%unicode
%line


Ga = "Ga"

Meu = "Meu"
Bu = "Bu"
Zo = "Zo"

%%

{Ga} 		{System.out.println("Ga"); return new Symbol(sym.Ga);}
{Meu} 		{System.out.println("Meu"); return new Symbol(sym.Meu);}
{Bu} 		{System.out.println("Bu"); return new Symbol(sym.Bu);}
{Zo}		{System.out.println("Zo"); return new Symbol(sym.Zo);}
"\n"  		{;}
"//".*  { ; }
.			{System.out.println(yytext());}
