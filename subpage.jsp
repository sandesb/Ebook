<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>
<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, TemplateMo.com" />
<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--  Free CSS Templates from www.templatemo.com -->
<div id="templatemo_container">
	<div id="templatemo_menu">
<ul>

                <li><a href="http://localhost:8081/Ebook1/in.jsp" >Home</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage.jsp"class="current">Search</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage2.jsp">My Books</a></li>            
                <li><a href="http://localhost:8081/Ebook1/bestsellers/ugly.jsp">New Releases</a></li>  

                <li><a href="http://localhost:8081/Ebook1/login1.jsp">Login</a></li> 
                <li><a href="http://localhost:8081/Ebook1/register1.jsp">Register</a></li>
                <li><a href="http://localhost:8081/Ebook1/admin1.jsp">Admin</a></li>
            </ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	<div id="templatemo_special_offers">
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
         </div> 
        <!-- end of content left -->
       
       
                <form action="servlet1?s=<%=request.getParameter("search")%>" method="post" class="form-inline my-2 my-lg-0">
       
                    <input class="form-control mr-sm-2 " type="text" name="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-primary my-2 my-sm-3  " type="submit">Search</button>
      </form>
     
             <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection(
                                "jdbc:mysql://localhost:3306/ebook-app", "root", "");
   //here sonoo is database name, root is username and password  
 
                       
                        Statement stmt = con.createStatement();
                         String search = request.getParameter("search");
                        ResultSet rs = stmt.executeQuery("select * from book_details where bookName like '"+ search+"'");

                        while (rs.next()) {
                         //   if( rs.getString(2).equals(search) ) {
                    %>
                 
            <br>
                    <div class="templatemo_product_box">
                        <h1> <%=rs.getString("bookname")%> <span>(<%=rs.getString("Author")%>)</span></h1>
                        <img  src="<%=rs.getString(7)%> " alt="image" />
                        <div class="product_info">
                            <p> <%=rs.getString(8)%> </p>
                            <br>
                                <div class="buy_now_button"><a href="http://localhost:8081/Ebook1/dune.jsp">Read Now</a></div>
                                <div class="detail_button"><a href="test2?id=<%=rs.getString("tag")%>">Save</a></div>
                        </div>
                             
               </div> 
    </div>
       
    
    	<div class="cleaner_with_height">&nbsp;</div>
   <!-- end of content -->
    <% }%>
    <!-- end of footer -->
<!--  Free CSS Template www.templatemo.com -->
<!-- end of container -->
</body>
</html>