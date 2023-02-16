<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Sign In|| Critique It!</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="imgs/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="imgs/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="imgs/favicon/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">
</head>

<body class="container">



<jsp:include page="navbar.jsp"></jsp:include>

<section>
<div class="vh-100 admin-bg-image">
  <div class=" d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card admin-card ">
            <div class="card-body p-5">
              <h2 class=" text-center mb-5">Admin Registration</h2><hr>

              <form action="registerAdmin.jsp" method="post">

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example1cg" name="name" class="form-control form-control-lg" placeholder ="Your Name"/>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form3Example3cg" name="email" class="form-control form-control-lg" placeholder ="Your Email" />
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example4cg" name="pass" class="form-control form-control-lg" placeholder ="Password" />
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example4cdg" name="repeatpass" class="form-control form-control-lg" placeholder ="Repeat your password"/>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-outline-secondary btn-block btn-lg gradient-custom-4 text-body">Register</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="loginAdmin.jsp"
                    class="fw-bold text-body"><u>Login here</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</body>
</html>