package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import MyPojo.MoviesModelClass;

public class movieUpdate {
	
	private static final String Update_Query = "UPDATE MOVIES SET MOVIE_NAME=?,DIRECTOR=?,GENRE=?,RELEASE_DATE=?,DESCRIPTION=? ,ACTOR_NAME=?,ACTRESS_NAME=?,SUPPORTING_ACTOR=?,RATING=? WHERE id=?";
	//private static final String Insert_movies_query ="INSERT INTO (MOVIE_NAME, DIRECTOR, GENRE, RELEASE_DATE, DESCRIPTION, ACTOR_NAME, ACTRESS_NAME ,SUPPORTING_ACTOR ) VALUES (?,?,?,?,?,?,?,?)";

	
	public static int updateMovieDetails(MoviesModelClass pojo){
		
		Connection con;
		int status=0 ;
		try {
			
			con = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(Update_Query);
			
			ps.setString(1, pojo.getMovie_Name());
			ps.setString(2, pojo.getDirector_Name());
			ps.setString(3, pojo.getGenre());
			ps.setString(4, pojo.getRelease_Date());
			ps.setString(5, pojo.getDescription());
			ps.setString(6, pojo.getActor_Name());
			ps.setString(7, pojo.getActress_name());
			ps.setString(8, pojo.getSupporting_Actor());
			ps.setFloat(9, pojo.getRatings());
			ps.setInt(10, pojo.getMovie_Id());
			
			
			status = ps.executeUpdate();
			
			con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;	
	}

}
