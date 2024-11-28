
import java.util.ArrayList;
public class Main {
    public static void main(String[] args) {
        //Todo: tilføj stien til din .db fil
        var url = "jdbc:sqlite:monopoly.db";
        DBConnector dbConnector = new DBConnector();


        dbConnector.connect(url);


        ArrayList<String> data = dbConnector.selectPlayers();

        printData(data);
    }

    private static void printData(ArrayList<String> data) {
        for (String s:data
        ) {
            System.out.println(s);
        }
    }
}