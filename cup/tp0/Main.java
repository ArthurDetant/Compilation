import java.io.FileReader;
public class Main {
	public static void main(String args []){
		try{
			parser p = new parser ( new Yylex (new FileReader(args[0])));
			Object result = p.parse().value;
			System.out.println("\nSyntaxe  correcte");
		}catch(Exception e ){
			System.out.println("\nSyntax  Error ");
			e.printStackTrace();
		}
	}
}
