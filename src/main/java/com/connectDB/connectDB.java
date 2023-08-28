package com.connectDB;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectDB {

	public static void main(String[] args) {
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String connectionUrl =
                "jdbc:sqlserver://127.0.0.1:1433;"
                        + "database=XXX;"
                        + "user=XXX;"
                        + "password=XXX;"
                        + "encrypt=true;"
                        + "trustServerCertificate=false;"
                        + "loginTimeout=30;";
        
        
		 try (Connection connection = DriverManager.getConnection(connectionUrl);) {
			System.out.println("SC sql server");
        }
        // Handle any errors that may have occurred.
        catch (SQLException e) {
            e.printStackTrace();
        }
	}

}
