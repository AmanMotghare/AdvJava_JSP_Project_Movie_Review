package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import MyPojo.AdminModelClass;

public class AdminInsert {
	
	private static final String Insert_Query ="INSERT INTO ADMIN (NAME,EMAIL,PASSWORD) VALUES (?,?,?)";
	
	public static int Insert(AdminModelClass pojo){
		
		
		int status = 0 ;
		
		try {
			
			Connection con = GetConnection.Connect();
			PreparedStatement ps = con.prepareStatement(Insert_Query);
			
			ps.setString(1, pojo.getName());
			ps.setString(2, pojo.getEmail());
			ps.setString(3, pojo.getPassword());
			
			status = ps.executeUpdate();
			System.out.println(status);
			
			con.close();
			
		} catch (Exception ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		
		
		return status;
		
	}

}
