package MyServlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import MyDao.GetConnection;

/**
 * Servlet implementation class AddMovie
 */
@WebServlet("/addimage")
@MultipartConfig
public class AddImage extends HttpServlet {
	
	private static final String Insert_Image_Query = "UPDATE MOVIES SET IMAGE=? WHERE MOVIE_NAME=? AND RELEASE_DATE=?";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Part file = request.getPart("image");
		
		
		
		System.out.println(file);
		
		String imageFileName=getSubmittedFileName(file);
		System.out.println("Selected Image File Name : "+ imageFileName);
		String uploadPath="D:/JAVAPROJECT/JSP_PROJECT/WebContent/imgs/movie_posters/"+imageFileName;
		System.out.println("Upload Path : "+uploadPath);
		
		//Uploading Image to a folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//Upload image name to data base
		String movie_name = request.getParameter("movie_name");
		String release_date = request.getParameter("release_date");
		
		if(imageFileName.equals(null)){
			
			out.print("<script>alert(' Warning : Insert Image first !!')</script>");
		}
		else{
		
			try {
				Connection con = GetConnection.Connect();
				
				PreparedStatement ps = con.prepareStatement(Insert_Image_Query);
				
				ps.setString(1, imageFileName);
				ps.setString(2, movie_name);
				ps.setString(3, release_date);
				
				int status = ps.executeUpdate();
				
				if(status>0)
				{
					
					response.sendRedirect("profileAdmin.jsp");
					out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
							+ "<strong>Movie Added Successfully!</strong>"
							+ "<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
							+ "</div>");
	
				}
				
				else
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("profileAdmin.jsp");
					dispatcher.include(request,response);
					out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
							+ "<strong>Failed to upload!</strong>"
							+ "<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
							+ "</div>");
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		
		
	}
	
	private static String getSubmittedFileName(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	    }
	return null;
	
	}

}
