
import java.io.*;



public class occurences //classe principale
{ 
	public static void main(String[]args) throws IOException // Yylex va prendre en entre args[0]�
	{
	
		
		Yylex yy = new Yylex(new BufferedReader(new FileReader(args[0])));
		Yytoken token;

		int cptReel = 0;
		int cptEntier = 0;
	
		while((token=yy.yylex())!=null){// la fin de fichier est codé par le token null
		    /*System.out.println(token.image());
		System.out.println(token.type());
		    */
		    if(token.type() == "REEL"){
			cptReel ++;
		    }
		    if(token.type() == "ENTIER"){
			cptEntier ++;
		    }

		}

		System.out.println("Nb entier = "+cptEntier);
		System.out.println("Nb reel = "+cptReel);

	}
}
