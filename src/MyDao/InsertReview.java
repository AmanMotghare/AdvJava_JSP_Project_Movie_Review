package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import MyPojo.AdminModelClass;
import MyPojo.ReviewsModelClass;

public class InsertReview {
	
private static final String Insert_Review_Query ="INSERT INTO reviews (id, MOVIE_NAME, USER_NAME ,USER_REVIEW_HEADLINE, USER_REVIEW, USER_RATING ) VALUES (?,?,?,?,?,?)";

	
	public static int Insert(ReviewsModelClass pojo){
		
		
		int status = 0 ;
		
		try {
			
			Connection con = GetConnection.Connect();
			PreparedStatement ps = con.prepareStatement(Insert_Review_Query);
			
			
			ps.setInt(1, pojo.getMovie_id());
			ps.setString(2, pojo.getMovie_Name());
			ps.setString(3, pojo.getReviewer_Name());
			ps.setString(4, pojo.getReview_Headline());
			ps.setString(5, pojo.getReview());
			ps.setFloat(6, pojo.getUser_Rating());
			
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
