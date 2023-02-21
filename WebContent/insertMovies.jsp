<%@page import="MyDao.AdminInsert"%>
<%@page import="MyPojo.MoviesModelClass"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page errorPage="error.jsp" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String Email = (String)session.getAttribute("email");
String Password = (String)session.getAttribute("password");

if(Email!=null && Password!=null){
	
	String Movie_Name = request.getParameter("movie_name");
	String Release_Date = request.getParameter("release_date");
	String director_name = request.getParameter("director_name");
	String genre = request.getParameter("genre");
	String description = request.getParameter("description");
	String actor = request.getParameter("actor");
	String actress = request.getParameter("actress");
	String support_actor = request.getParameter("support_actor");

	MoviesModelClass pojo = new MoviesModelClass();

	pojo.setMovie_Name(Movie_Name);
	pojo.setRelease_Date(Release_Date);
	pojo.setDirector_Name(director_name);
	pojo.setGenre(genre);
	pojo.setDescription(description);
	pojo.setActor_Name(actor);
	pojo.setActress_name(actress);
	pojo.setSupporting_Actor(support_actor);

	int status = AdminInsert.InsertMoviesAdmin(pojo);

	if(status>0){%>
		
		<jsp:forward page="addMovieImage.jsp">
			<jsp:param value="<%=Movie_Name%>" name="Movie_Name"/>
			<jsp:param value="<%=Release_Date%>" name="Release_Date"/>
		</jsp:forward>
		
	<% }
	else{
		response.sendRedirect("loginAdmin.jsp");
		
	}
}
else{
	response.sendRedirect("error.jsp");
}
%>

