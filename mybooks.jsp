<%-- 
    Document   : mybooks
    Created on : May 6, 2022, 10:43:02 AM
    Author     : home
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            String bid="10";
            try{  
                Class.forName("com.mysql.jdbc.Driver");  
                Connection con=DriverManager.getConnection(  
                "jdbc:mysql://localhost:3306/ebook-app","root","");  
                //here sonoo is database name, root is username and password  
                Statement stmt=con.createStatement();  
                stmt.execute("Insert into userbook values("+id+","+bid+")");
            }catch(Exception e){
                System.out.println(e);
            }  
        %>
    </body>
</html>
