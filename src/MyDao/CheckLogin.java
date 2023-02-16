package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CheckLogin {
	
	private static final String Select_Query = "select * from admin where email=? and password=? ";
	
	public static boolean validate(String Email, String Password) throws ClassNotFoundException, SQLException{
		
		boolean status = false;

		
		try {
			Connection con = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(Select_Query);
			
			ps.setString(1, Email);
			ps.setString(2, Password);
			
			ResultSet rs = ps.executeQuery();
			
			status = rs.next();//returns true if any row is found
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;

	}

}
