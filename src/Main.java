
import processing.core.PApplet;

import java.util.ArrayList;
public class Main extends PApplet {
    public static void main(String[] args) {
        //Todo: tilføj stien til din .db fil
        var url = "jdbc:sqlite:game";
        DBConnector dbConnector = new DBConnector();


        dbConnector.connect(url);


        ArrayList<String> data = dbConnector.selectPlayers();

        printData(data);

        data = dbConnector.selectFields();

        printData(data);

        dbConnector.registerOwner(16, 2);
    }

    private static void printData(ArrayList<String> data) {
        for (String s:data
        ) {
            System.out.println(s);
        }
    }



}