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
         String sql = "SELECT name, balance, position FROM Players";

        try {
            Statement stmt = conn.createStatement();

             // execute the query
             ResultSet rs = stmt.executeQuery(sql);

             while (rs.next()) {
                 //read each row of the result set ( = response from the query execution)
                 String row = rs.getString("name") + ", " + rs.getInt("balance")+", "+ rs.getInt("position");
                 //add the string to the ArrayList
                 data.add(row);
             }

          } catch (SQLException e) {
            System.out.println(e.getMessage());
     }
        return data;
}

    public ArrayList<String> selectFields() {

        // initialize a List to return the selected data as string elements
        ArrayList<String> data = new ArrayList<>();

        String sql = "SELECT label, field_type, cost, income FROM Fields";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while(rs.next()){
                String label = rs.getString("label");
                String field_type = rs.getString("field_type");
                int cost = rs.getInt("cost");
                int income = rs.getInt("income");
                String field = label+", "+field_type+", "+income;
                data.add(field);
            }


        }catch(SQLException exception){

        }
        return data;
    }

    public void registerOwner(int field_id, int player_id){
        String sql =  "UPDATE Fields SET owner_id="+player_id+" WHERE id =" + field_id;

        try {
            Statement stmt = conn.createStatement();
            stmt.executeQuery(sql);


        }catch (SQLException e){

        }



    }
}

