
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Home Inventory</h1>
        <h3>Login</h3>
        <form action="LoginServlet" method="post">
            <label for="fname">Username:</label>
            <input type="text" id="username" name="username" ><br>
            <label for="lname">Password:</label>
            <input type="password" id="pass" name="pass" ><br><br>
            <input type="submit" value="Submit">
        </form> 
        <%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
%> 
  <h4>Invalid login</h4>
<%} %>
        
    </body>
</html>
