package mypack1;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
private static final String DRIVER="com.mysql.cj.jdbc.Driver";
private static final String URL = "jdbc:mysql://localhost:3306/mydatabase";
private static final String USERNAME="root";
private static final String PASSWORD="root";
private static Connection con;
public static Connection getCon() {
	
	try {
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
		System.out.println("Connectin Created Successfully!");
	}
	catch(Exception e) {
		e.printStackTrace();
		return null;
	}
	return con;
}
}
