
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory</title>
    </head>
    <body>
        <%
String user=request.getParameter("msg");

%> 
        <h1>Home Inventory for <%=user%></h1>
        <h3>Add Items</h3>
        <form action="InventoryServlet" method="post">
<label>Category:</label>

<select name="category">
  <option value="bedroom">bedroom</option>
  <option value="garage">garage</option>
  <option value="garage">garage</option>
  <option value="living room">living room</option>
</select>            <br>
            
            
            <label>Item Name:</label>
            <input type="text" name="item" ><br>
            <label>Price:</label>
            <input type="text" name="price" ><br><br>
            
            <input type="hidden" name="username" value="<%=user%>" >
            <input type="submit" value="Add">
        </form>      
        <%
String msg=request.getParameter("msg");
if("invalid".equals(msg))
{
%> 
  <h4>Invalid! please re-enter</h4>
<%} %>            
<%
if("success".equals(msg))
{
%>
  <h4>Item was successfully added to your inventory</h4>
<%} %>         
<br>
  <a href="login.jsp">
    Logout
  </a>             
        
    </body>
</html>
