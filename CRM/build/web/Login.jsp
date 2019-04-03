<%-- 
    Document   : Login
    Created on : Jun 27, 2018, 1:27:20 PM
    Author     : navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
    <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>

        <form action="Match.jsp" method="post" >
  <h1>Log in Panel</h1>
  <div class="inset">
  <p>
    <label for="email">USER NAME</label>
    <input type="text" name="txt1" id="email">
  </p>
  <p>
    <label for="password">PASSWORD</label>
    <input type="password" name="txt2" id="password">
  </p>
  <p>
    <input type="checkbox" name="remember" id="remember">
    <label for="remember">Remember me for 14 days</label>
  </p>
  </div>
  <p class="p-container">
    <span>Forgot password ?</span>
    <input type="submit" name="go" id="go" value="Log in">
  </p>
</form>

</body>

</html>
