<%@page import="MyDao.CheckLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>  
<%
String Email = request.getParameter("email");
String Password = request.getParameter("pass");

if(CheckLogin.validate(Email, Password)){
	
	session.setAttribute("email", Email);
	session.setAttribute("password", Password);
	
	//System.out.print("Session started");
	
	response.sendRedirect("profileAdmin.jsp");	
}
else{%>
	
	<jsp:include page="loginAdmin.jsp"></jsp:include>
	<script>alert("Warning : Invalid Credentials !! Please fill details again. ");</script>
	
<%}
%>