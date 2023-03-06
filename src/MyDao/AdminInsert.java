package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import MyPojo.AdminModelClass;
import MyPojo.MoviesModelClass;

public class AdminInsert {
	
	private static final String Insert_Query ="INSERT INTO ADMIN (NAME,EMAIL,PASSWORD) VALUES (?,?,?)";
	
	private static final String Insert_movies_query ="INSERT INTO MOVIES (MOVIE_NAME, DIRECTOR, GENRE, RELEASE_DATE, DESCRIPTION, ACTOR_NAME, ACTRESS_NAME ,SUPPORTING_ACTOR, TRAILERID ) VALUES (?,?,?,?,?,?,?,?,?)";

	
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
	
	public static int InsertMoviesAdmin(MoviesModelClass pojo){
		
		int status = 0;
		
		try {
			Connection con  = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(Insert_movies_query);
			ps.setString(1, pojo.getMovie_Name());
			ps.setString(2, pojo.getDirector_Name());
			ps.setString(3, pojo.getGenre());
			ps.setString(4, pojo.getRelease_Date());
			ps.setString(5, pojo.getDescription());
			ps.setString(6, pojo.getActor_Name());
			ps.setString(7, pojo.getActress_name());
			ps.setString(8, pojo.getSupporting_Actor());
			ps.setString(9, pojo.getTrailerID());
			
			status = ps.executeUpdate();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}

}
