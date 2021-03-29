package com.pluralsight.organized;
import java.sql.*;

public class DBConnect {
    public static void main(String[] args) {
       // Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        // Create a variable for the connection string.
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String connectionUrl = "jdbc:sqlserver://localhost:100;databaseName=Census2011;integratedSecurity=true";

        try (Connection con = DriverManager.getConnection(connectionUrl);
             Statement stmt = con.createStatement()) {
            String SQL = "SELECT TOP 10 * FROM GenderList";
            ResultSet rs = stmt.executeQuery(SQL);

            // Iterate through the data in the result set and display it.
            while (rs.next()) {
                System.out.println(rs.getString("State_name") + " " + rs.getString("Male_Population")+
                        " "+rs.getString("Female_Population")+" "+rs.getString("Sex_Ratio")+" "+
                        rs.getString("Remark"));
            }
        }
        // Handle any errors that may have occurred.
        catch (SQLException e) {
            e.printStackTrace();

        }

    }
}
