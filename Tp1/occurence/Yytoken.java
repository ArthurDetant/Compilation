import java.io.*;

//la classe Yytoken
public class Yytoken{
private String image;
    private String type;
    public Yytoken(String image, String type){
this.image=image;
this.type = type;
}
public String image(){
return image;
}

    public String type(){
return type;
}
}
