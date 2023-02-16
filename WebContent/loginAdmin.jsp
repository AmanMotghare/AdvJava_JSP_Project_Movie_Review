<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In || Critique It !</title>
<link rel="stylesheet" href="style.css">
</head>
<body class="container">

<jsp:include page="navbar.jsp"></jsp:include>

<section>

<%
	String Email = request.getParameter("Email");
	String Password = request.getParameter("Password");
	String mail="";
	String pass="";
	if(Email==null && Password == null){
		
		mail = "";
		pass = "";
	}
	else{
		mail = Email;
		pass = Password;
	}
%>
<div class="vh-100 admin-bg-image">
  <div class=" d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card admin-card ">
            <div class="card-body p-5">
              <h2 class=" text-center mb-5">Admin Login</h2><hr>

              <form action="checkAdminLogin.jsp" method="post">


                <div class="form-outline mb-4">
                  <input type="email"  name="email" value ="<%= mail %>" class="form-control form-control-lg" placeholder ="Your Email" />
                </div>

                <div class="form-outline mb-4">
                  <input type="text" name="pass" value ="<%= pass %>" class="form-control form-control-lg" placeholder ="Password" />
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-outline-secondary btn-block btn-lg gradient-custom-4 text-body">Login</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Not having an account? <a href="admin.jsp"
                    class="fw-bold text-body"><u>Register here</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>

<section>
<jsp:include page="footer.jsp"></jsp:include>
</section>

</body>
</html>


