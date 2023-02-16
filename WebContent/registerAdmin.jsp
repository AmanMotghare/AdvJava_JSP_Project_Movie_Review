<%@page import="MyDao.AdminInsert"%>
<%@page import="MyPojo.AdminModelClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>  


<%
String Name = request.getParameter("name");
String Email = request.getParameter("email");
String Password = request.getParameter("pass");
String RepeatPassword = request.getParameter("repeatpass");

if(Name=="" && Email == "" && Password=="" && RepeatPassword==""){%>
	
	<jsp:include page="admin.jsp"></jsp:include>
	<script>alert("Warning : All fields are required . ");</script>
<%}
else{
	
	if(Password.equals(RepeatPassword)){%>
		
		
	<%
		AdminModelClass pojo = new AdminModelClass();
	
		pojo.setName(Name);
		pojo.setEmail(Email);
		pojo.setPassword(Password);
		
		int status  = AdminInsert.Insert(pojo);
		
		if(status>0){%>
			
			<jsp:forward page="loginAdmin.jsp">
			<jsp:param value="<%=Email%>" name="Email"/>
			<jsp:param value="<%=Password%>" name="Password"/>
			</jsp:forward>	
				
		<%}
		else{%>
			<jsp:include page="admin.jsp"></jsp:include>
			<script>alert("Warning : Registration Failed !! ");</script>
		<%}
	}
	else{%>	
		<jsp:include page="admin.jsp"></jsp:include>
		<script>alert("Warning : Passwords did not match !! Please fill details again. ");</script>
	<%}
}%>



