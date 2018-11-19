import java.io.FileReader;

import java_cup.runtime.*;

public class Main {
	public static void main(String argv[]) {
		
		
		try {
			Yylex l = new Yylex(new FileReader(argv[0]));
			parser p = new parser(l);
			Object result = p.parse();
			System.out.println("\nfile ok");			
		}catch(Exception e){
			System.out.println("\nSyntax error");
			e.printStackTrace();		
		}	
	}
}
