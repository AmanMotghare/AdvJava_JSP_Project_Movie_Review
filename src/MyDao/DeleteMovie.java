package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteMovie {
	
	private static final String Delete_Query="DELETE FROM movies WHERE id =?";
	
	public static int delteMovieById(int id){
		
		int status = 0;
		
		try {
			Connection con = GetConnection.Connect();
			PreparedStatement ps = con.prepareStatement(Delete_Query);
			
			ps.setInt(1, id);
			
			status = ps.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}

}
