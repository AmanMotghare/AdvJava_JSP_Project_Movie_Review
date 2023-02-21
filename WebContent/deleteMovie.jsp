<%@page import="MyDao.DeleteMovie"%>
<%@page import="MyPojo.AdminModelClass"%>
<%@page import="MyDao.SelectAllData"%>
<%@page import="MyPojo.MoviesModelClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>

<%
String Email = (String)session.getAttribute("email");
String Password = (String)session.getAttribute("password");

if(Email!=null && Password!=null){
	
	String id1 = request.getParameter("id");
	int id = Integer.parseInt(id1);
	//out.print(request.getParameter("id"));
	
	int status = DeleteMovie.delteMovieById(id);
	
	if(status > 0){%>
		
		<jsp:include page="profileAdmin.jsp"></jsp:include>
		
	<%}
	
}
else{
	response.sendRedirect("profileAdmin.jsp");
}
%>