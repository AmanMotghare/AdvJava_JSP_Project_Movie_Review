package MyDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConnection {
	
	public static Connection Connect() throws SQLException, ClassNotFoundException{
	
			//Register the Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Registered.");
			
			//Build Connection
			String url="jdbc:mysql://localhost:3306/critiqueit";
			String username="root";
			String password="abc123";
			
			Connection con = DriverManager.getConnection(url,username,password);
			
		
		return con;
	}

}
