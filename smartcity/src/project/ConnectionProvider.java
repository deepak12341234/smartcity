package project;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	public static Connection getCon()
	{
		try
		{

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/smartcity";
String username="root";
String psw="9795910490";

Class.forName(driver);	
Connection con=DriverManager.getConnection(url,username,psw);
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
	
}
