

<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>All Books</title>
        <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, TemplateMo.com" />
        <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website from TemplateMo.com" />
       
        
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link href="http://localhost:8081/Ebook1/templatemo_style1.css" rel="stylesheet" type="text/css" />
    </head>
    <body id="bootstrap-overrides">
        <!--  Free CSS Templates from www.templatemo.com -->
        <div id="templatemo_container">
            <div id="templatemo_menu">
              <ul>

                <li><a href="http://localhost:8081/Ebook1/in.jsp" class="current">Home</a></li>
            <li><a href="http://localhost:8081/Ebook1/subpage2_1.jsp">Search</a></li>
                   <li><a href="http://localhost:8081/Ebook1/subpage_1.jsp">My Books</a></li>            
                <li><a href="http://localhost:8081/Ebook1/bestsellers/ugly.jsp">New Releases</a></li>  

                <li><a href="http://localhost:8081/Ebook1/login1.jsp">Login</a></li> 
                <li><a href="http://localhost:8081/Ebook1/register1.jsp">Register</a></li>
                <li><a href="http://localhost:8081/Ebook1/admin1.jsp">Admin</a></li>
            </ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	<div id="templatemo_special_offers">
        	
        </div>
        
        
        <div id="templatemo_new_books">
        	
        </div>
    </div> <!-- end of header -->
    
    <div id="templatemo_content">
    	
        <div id="templatemo_content_left">
        	<div class="templatemo_content_left_section">
            	<h1>Categories</h1>
<ul>
                      <li><a href="http://localhost:8081/Ebook1/action.jsp">Action and Adventure</a></li>
                        <li><a href="http://localhost:8081/Ebook1/autoo.jsp">Autobiography</a></li>
                        <li><a href="http://localhost:8081/Ebook1/classicss.jsp">Classics</a></li>
                        <li><a href="http://localhost:8081/Ebook1/comicc.jsp">Comic Book or Graphic Novel</a></li>
                        <li><a href="http://localhost:8081/Ebook1/detectivee.jsp">Detective and Mystery</a></li>
                        <li><a href="http://localhost:8081/Ebook1/fantasyy.jsp">Fantasy</a></li>
                        <li><a href="http://localhost:8081/Ebook1/historzz.jsp">History</a></li>
                        <li><a href="http://localhost:8081/Ebook1/self.jsp">Self Help</a></li>
                        <li><a href="http://localhost:8081/Ebook1/science.jsp">Science Fiction</a></li>
                    </ul>
            </div>
			<div class="templatemo_content_left_section">
            	<h1>Bestsellers</h1>
                 <ul>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/lord.jsp">The Lord of the Rings </a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/prince.jsp">The Little Prince</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/harry.jsp">Harry Potter and the Sorcerer's Stone</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/atom.jsp">Atomic Habits</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/ends.jsp">It Ends with Us</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/seven.jsp">The Seven Husbands of Evelyn Hugo</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/ver.jsp" target="_parent">Verity</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/art.jsp" target="_parent">Art of Seduction</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/ugly.jsp" target="_parent">Ugly Love</a></li>
                        <li><a href="http://localhost:8081/Ebook1/bestsellers/mount.jsp" target="_parent">The Mountain Is You</a></li>
                    </ul>
                    </div>

                   
                </div> <!-- end of content left -->

                <div id="templatemo_content_right">
                  
                 
                        <h1>All Books <span></span></h1>
         
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Actual Price</th>
      <th scope="col">Categories</th>
      <th scope="col">Status</th>
  
    </tr>
  </thead>
  <tbody>
       <%
            String tag = request.getParameter("tag");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection(
                                "jdbc:mysql://localhost:3306/ebook-app", "root", "");
   //here sonoo is database name, root is username and password  
   
//                           int tag = request.getParameter("tag");
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("select * from book_details");

                        while (rs.next()) {
                    %>
                    
    <tr>
      <th scope="row"><%=rs.getString(1)%></th>
      
      <td> <%=rs.getString(2)%> </td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td>
          
        <a href='editbooks.jsp?tag=<%=rs.getInt(1)%>' class='btn btn-sm-sm btn-white'> Edit</a>
        <a href='delete?tag=<%=rs.getInt("tag")%>' class='btn btn-sm-sm btn-danger'> Delete</a> </td>
       
 
    </tr>
                    <% }
con.close(); %>
   
</table>




                                                                                    <!-- end of content right -->

                </div>
                                               
                                                                                    <div id="templatemo_footer1">
                                                                                       
                                                                                    </div>
    </div>

    </div>

    </body>
                                                                                    </html>