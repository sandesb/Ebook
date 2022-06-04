<!DOCTYPE html>
<html>
<body>

<h2><%String id = request.getParameter("id");%>
    Welcome <%=id%></h2>

<form action="tryServlet" method="post">

  <label for="fname">First name:</label><br>
  <input type="text" class="form-control" id="fname" name="username" ><br>
  <label for="lname">Last name:</label><br>
  <input type="text" class="form-control" id="lname" name="password" ><br><br>
  <input type="submit" value="Submit">
</form> 

</body>
</html>

