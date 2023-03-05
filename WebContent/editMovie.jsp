<%@page import="MyPojo.AdminModelClass"%>
<%@page import="MyDao.SelectAllData"%>
<%@page import="MyPojo.MoviesModelClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="imgs/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="imgs/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="imgs/favicon/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">

<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
  rel="stylesheet"
/>
<title>Update Movie || Admin</title>
</head>
<body class="container">

<%
String Email = (String)session.getAttribute("email");
String Password = (String)session.getAttribute("password");

if(Email!=null && Password!=null){
	
	String id1 = request.getParameter("id");
	int id = Integer.parseInt(id1);
	//out.print(request.getParameter("id"));
	
	AdminModelClass pojoAdmin = SelectAllData.getAdminDetails(Email, Password);
	MoviesModelClass pojoMovie = SelectAllData.getMovieDetailsById(id);%>
	
	
	
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="container">
	<div class="container">
		<h4 style="color: #7D6608 ;" align="center"><b>Welcome <%=pojoAdmin.getName() %>, Hope you are doing Good !</b></h4>
	</div><hr>
	
	<form class="row g-3" action="updateMovieDetails.jsp" method="post" >
	
	  <!-- hiddenfield -->
	  <input type="text" name="id" value="<%=id %>" class="form-control" required>
	  <!-- hiddenfield -->
	  
	  <div class="col-md-3">
	  <label>&nbsp;Name of a Movie</label>
	    <input type="text" name="movie_name" value="<%=pojoMovie.getMovie_Name() %>" class="form-control" placeholder="Movie Name" required>
	  </div>
	 
	  <div class="col-md-3">
	  <label>&nbsp;Director Name</label>
	    <input type="text" name="director_name" value="<%=pojoMovie.getDirector_Name() %>" class="form-control"  placeholder="Directed By" required>
	  </div>
	  
	  <div class="col-md-3">
	  <label>&nbsp;Select Genre</label>
	    <select class="form-select" name="genre"  required>
	      <option selected><%=pojoMovie.getGenre()%></option>
	      <option value="Action">Action</option>
	      <option value="Drama">Drama</option>
	      <option value="Horror">Horror</option>
	      <option value="Thriller">Thriller</option>
	      <option value="Romance">Romance</option>
	      <option value="Adventure">Adventure</option>
	      <option value="Superhero">Superhero</option>
	      <option value="Science fiction">Science fiction</option>
	    </select>
	  </div>
	  
	   <div class="col-md-3">
	  	<label>&nbsp;Release Date</label>
	    <input type="date" name="release_date" value="<%=pojoMovie.getRelease_Date() %>" class="form-control" placeholder="Release Date " required>
	  </div>
	  
	  <div class="input-group">
		 <span class="input-group-text">Movie Description</span>
		 <textarea class="form-control" name="description"  aria-label="With textarea" required><%=pojoMovie.getDescription()%></textarea>
	  </div>
	  
	  <div class="col-md-3">
	    <input type="text" name="movie_rating" value="<%=pojoMovie.getRatings() %>" class="form-control" placeholder="Ratings out of 5" required>
	  </div>
	  
	  <div class="col-md-3">
	    <input type="text" class="form-control" name="actor" value="<%=pojoMovie.getActor_Name() %>" placeholder="Actor Name" required>
	  </div>
	  
	  <div class="col-md-3">
	    <input type="text" class="form-control" name="actress" value="<%=pojoMovie.getActress_name() %>" placeholder="Actress Name" required>
	  </div>
	  
	  <div class="col-md-3">
	    <input type="text" class="form-control" name="support_actor"value="<%=pojoMovie.getSupporting_Actor() %>"  placeholder="Supporting Actor Name" required>
	  </div>
	   
	 <br>
	 
	  <div class="col-12 " align="center">
	    <input type="submit" value="Update Details" class="btn btn-dark"></input>
	  </div>
	  
	</form>
</div>
<div class =" container text-center">
	<hr class="new5">
</div>

<jsp:include page="footer.jsp"></jsp:include>
	
<%}
else{
	response.sendRedirect("loginAdmin.jsp");
}
%>
</body>
</html>