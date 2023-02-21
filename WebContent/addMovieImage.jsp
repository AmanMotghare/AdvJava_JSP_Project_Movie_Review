<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Image </title>
</head>
<body class="container">
<%
String Email = (String)session.getAttribute("email");
String Password = (String)session.getAttribute("password");

String Movie_Name = request.getParameter("Movie_Name");
String Release_Date = request.getParameter("Release_Date");

%>

<jsp:include page="navbar.jsp"></jsp:include>

<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Movie Added Successfully!</strong> You should check in on some of those fields below.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<form class="row g-3" action="addimage" method="post" enctype="multipart/form-data">
	
	  <div class="col-md-6">
	    <input type="text" name="movie_name" value ="<%=Movie_Name%>"class="form-control" placeholder="Movie Name" readonly>
	  </div>
	  
	   <div class="col-md-6">
	    <input type="text" name="release_date" value ="<%=Release_Date%>" class="form-control" placeholder="Release Date" readonly>
	  </div>
	 
	   <div class="input-group">
		  <input type="file" class="form-control" name="image" required aria-label="Upload">
		  <input type=submit class="btn btn-outline-secondary" value="Add Image" id="inputGroupFileAddon04"></input>
	   </div>
	 <br>

	</form>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>