<%@page import="MyDao.movieUpdate"%>
<%@page import="MyPojo.MoviesModelClass"%>
<%@page import="sun.rmi.server.Dispatcher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page errorPage="error.jsp" %>
<%
String Email = (String)session.getAttribute("email");
String Password = (String)session.getAttribute("password");

if(Email!=null && Password!=null){
	
	String id1 = request.getParameter("id");
	
	int movie_Id = Integer.parseInt(id1);
	
	
	String movie_Name = request.getParameter("movie_name");
	String release_Date = request.getParameter("release_date");
	String director_name = request.getParameter("director_name");
	String genre = request.getParameter("genre");
	String description = request.getParameter("description");
	String actor = request.getParameter("actor");
	String actress = request.getParameter("actress");
	String support_actor = request.getParameter("support_actor");
	String rating = request.getParameter("movie_rating");
	float movie_rating = Float.parseFloat(rating);
	
	System.out.print("ID"+movie_Id);
	System.out.print("rating"+movie_rating);
	
	MoviesModelClass pojo = new MoviesModelClass();
	
	pojo.setMovie_Id(movie_Id);
	pojo.setMovie_Name(movie_Name);
	pojo.setRelease_Date(release_Date);
	pojo.setDirector_Name(director_name);
	pojo.setGenre(genre);
	pojo.setDescription(description);
	pojo.setActor_Name(actor);
	pojo.setActress_name(actress);
	pojo.setSupporting_Actor(support_actor);
	pojo.setRatings(movie_rating);
	
	int status = movieUpdate.updateMovieDetails(pojo);
	
	if(status>0){%>
	
	<jsp:forward page="addMovieImage.jsp">
			<jsp:param value="<%=movie_Name%>" name="Movie_Name"/>
			<jsp:param value="<%=release_Date%>" name="Release_Date"/>
		</jsp:forward>
	
	<%}
	else{
		response.sendRedirect("editMovie.jsp");	
		out.print("<script>alert('Failed to Update');</script>");
	}
}
else{
response.sendRedirect("error.jsp");
}
%>