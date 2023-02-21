package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import MyPojo.AdminModelClass;
import MyPojo.MoviesModelClass;
import MyPojo.ReviewsModelClass;

public class SelectAllData {
	
	private static final String select_admin_data = "select * from admin where email=? and password=? ";
	private static final String select_movies_query = "select * from movies";
	private static final String select_details_Id = "select * from movies where id=? ";
	private static final String select_details_Name = "select * from movies where MOVIE_NAME=? ";
	private static final String select_reviews_query = "select * from reviews";
////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	public static AdminModelClass getAdminDetails(String email, String password){
		
		AdminModelClass pojo = new AdminModelClass();
		Connection con;
		try {
			
			con = GetConnection.Connect();
			PreparedStatement ps = con.prepareStatement(select_admin_data);
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				pojo.setName(rs.getString(2));
				pojo.setEmail(rs.getString(3));
				
//				pojo.setPassword(rs.getString(3));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pojo;

	}
///////////////////////////////////////////////////////////////////////////////////////////////////////
	public static ArrayList<MoviesModelClass> getAllMovies(){
		
		ArrayList<MoviesModelClass> list = new ArrayList<MoviesModelClass>();
		
		try {
			Connection con = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(select_movies_query);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				MoviesModelClass pojo = new MoviesModelClass();
				
				pojo.setMovie_Id(rs.getInt(1));
				pojo.setMovie_Name(rs.getString(2));
				pojo.setDirector_Name(rs.getString(3));
				pojo.setGenre(rs.getString(4));
				pojo.setRelease_Date(rs.getString(5));
				pojo.setDescription(rs.getString(6));
				pojo.setActor_Name(rs.getString(7));
				pojo.setActress_name(rs.getString(8));
				pojo.setSupporting_Actor(rs.getString(9));
				pojo.setImage(rs.getString(10));
				pojo.setRatings(rs.getFloat(11));
				
				list.add(pojo);
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}
//////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public static MoviesModelClass getMovieDetailsById(int id){
		
		MoviesModelClass pojo =new MoviesModelClass();
		
		try {
			Connection con = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(select_details_Id);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				pojo.setMovie_Id(rs.getInt(1));
				pojo.setMovie_Name(rs.getString(2));
				pojo.setDirector_Name(rs.getString(3));
				pojo.setGenre(rs.getString(4));
				pojo.setRelease_Date(rs.getString(5));
				pojo.setDescription(rs.getString(6));
				pojo.setActor_Name(rs.getString(7));
				pojo.setActress_name(rs.getString(8));
				pojo.setSupporting_Actor(rs.getString(9));
				pojo.setImage(rs.getString(10));
				pojo.setRatings(rs.getFloat(11));
				
			}
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return pojo;
		
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////
	
public static ArrayList<MoviesModelClass> getMoviesByName(String Name){
		
		ArrayList<MoviesModelClass> list = new ArrayList<MoviesModelClass>();
		
		try {
			Connection con = GetConnection.Connect();
			
			PreparedStatement ps = con.prepareStatement(select_details_Name);
			ps.setString(1, Name);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				MoviesModelClass pojo = new MoviesModelClass();
				
				pojo.setMovie_Id(rs.getInt(1));
				pojo.setMovie_Name(rs.getString(2));
				pojo.setDirector_Name(rs.getString(3));
				pojo.setGenre(rs.getString(4));
				pojo.setRelease_Date(rs.getString(5));
				pojo.setDescription(rs.getString(6));
				pojo.setActor_Name(rs.getString(7));
				pojo.setActress_name(rs.getString(8));
				pojo.setSupporting_Actor(rs.getString(9));
				pojo.setImage(rs.getString(10));
				pojo.setRatings(rs.getFloat(11));
				
				list.add(pojo);
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}

//////////////////////////////////////////////////////////////////////////////////////////////

public static ArrayList<ReviewsModelClass> getAllReviews(){
	
	ArrayList<ReviewsModelClass> list = new ArrayList<ReviewsModelClass>();
	
	try {
		Connection con = GetConnection.Connect();
		
		PreparedStatement ps = con.prepareStatement(select_reviews_query);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()){
			
			ReviewsModelClass pojo = new ReviewsModelClass();
			
			pojo.setMovie_id(rs.getInt(1));
			pojo.setMovie_Name(rs.getString(2));
			pojo.setReviewer_Name(rs.getString(3));
			pojo.setReview_Headline(rs.getString(4));
			pojo.setReview(rs.getString(5));
			pojo.setUser_Rating(rs.getFloat(6));
			
			
			list.add(pojo);
			
		}
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return list;
	
}

}
