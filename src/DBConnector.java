import java.sql.*;
import java.util.ArrayList;

public class DBConnector {
    Connection conn;
    public void connect(String url) {


        try {

            conn = DriverManager.getConnection(url);
            System.out.println("Connection to SQLite has been established.");

        } catch (SQLException e) {

            System.out.println(e.getMessage());

        }



    }
    public ArrayList<String> selectPlayers(){
         // initialize a List to return the selected data as string elements
         ArrayList<String> data = new ArrayList<>();
         // make the query string
         String sql = "SELECT name, balance FROM Players";

        try {
            Statement stmt = conn.createStatement();

             // execute the query
             ResultSet rs = stmt.executeQuery(sql);

             while (rs.next()) {
                 //read each row of the result set ( = response from the query execution)
                 String row = rs.getString("name") + ", " + rs.getInt("balance");
                 //add the string to the ArrayList
                 data.add(row);
             }

          } catch (SQLException e) {
            System.out.println(e.getMessage());
     }
        return data;
}

}

