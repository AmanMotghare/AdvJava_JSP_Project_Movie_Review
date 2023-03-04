<%@page import="MyPojo.ReviewsModelClass"%>
<%@page import="MyDao.InsertReview"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  

<%
	String id1 = request.getParameter("movie_Id");
	int id = Integer.parseInt(id1);
	
	String Reviewer_Name = request.getParameter("userName");
	String Movie_Name = request.getParameter("movie_name");
	String Headline = request.getParameter("reviewHeadline");
	String User_Review = request.getParameter("userReview");
	String User_Rating1 = request.getParameter("userRating");
	
	float User_Rating = Float.parseFloat(User_Rating1);
	
	ReviewsModelClass pojo = new ReviewsModelClass();
	
	pojo.setMovie_id(id);
	pojo.setMovie_Name(Movie_Name);
	pojo.setReviewer_Name(Reviewer_Name);
	pojo.setReview(User_Review);
	pojo.setReview_Headline(Headline);
	pojo.setUser_Rating(User_Rating);
	
	int status = InsertReview.Insert(pojo);
	
	if(status>0){%>
		
		<jsp:forward page="review.jsp">
			<jsp:param value="<%=id%>" name="id"/>
		</jsp:forward>
		
		<%}
	else
	{
		response.sendRedirect("errorReview.jsp");
	}
%>
	

