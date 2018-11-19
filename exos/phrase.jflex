import java_cup.runtime.*;


%%


%unicode
%line
%cup

%eof{
	System.out.println("\nTerminé "):
%eof}
	
bl = [ \t]
adj = grande?s?|petite?s?
lib = {lettre}



%%

{bl ';}
