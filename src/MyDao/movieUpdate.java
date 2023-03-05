package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import MyPojo.MoviesModelClass;

public class movieUpdate {
	
	private static final String get_Review_Avg_Query = "SELECT AVG(USER_RATING) FROM reviews WHERE id=? ";
	private static final String set_Review_Avg_Query = "UPDATE MOVIES SET RATING=? WHERE id=? ";
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
	
	public static float getReviewAvg(int id){
		
		Connection con;
		float avg = 0;
		try {
			
			con = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(get_Review_Avg_Query);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				avg = rs.getFloat(1);
				System.out.println("Average Rating is  : " + rs.getFloat(1));
			}
			
			setReviewAvg(avg, id);
			
			con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return avg;
	}
	
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	
public static void setReviewAvg(float avg, int id){
		
		Connection con;
		int status=0 ;
		try {
			
			con = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(set_Review_Avg_Query);
			
			ps.setFloat(1, avg);
			ps.setInt(2, id);
			
			status = ps.executeUpdate();
			
			if(status >0){
				System.out.println("AVG UPDATED");
			}
			
			con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

}
