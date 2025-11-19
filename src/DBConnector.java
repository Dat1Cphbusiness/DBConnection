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

}

