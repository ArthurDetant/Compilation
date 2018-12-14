%%
%unicode
%line
%standalone

DECLARATIONS= "DECLARATIONS"
double = "double"
d = "identificateur"
int = "int"
i = "identificateur"



%%

{DECLARATIONS} {System.out.println("DECLARATIONS type -> DECLARATIONS ");}
{double} {System.out.println(" double type -> double ");}
{d} {System.out.println("d type -> identificateur " );}


"//".*  { ; }
"."	{;}
"\n"	{;}
