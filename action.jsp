<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Action And Adventure</title>
    <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
    <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
    <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="http://localhost:8081/Ebook1/helpcss.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'>
           
           
        </script>
    
    <style>
        .subimage {
            margin: 0 auto;
        }
                  .btn {
    background-color: #5a3d1b;
    position: relative;
    align-content: center;
    bottom: 750px;
    left: 880px;
    color: white;
    border-radius: 22px;
    font-size: 16px;
    /* border: 5px; */
}
    </style>
    
</head>

<body>
    <!--  Free CSS Templates from www.templatemo.com -->
    <div id="templatemo_container">
        <div id="templatemo_menu">
            <ul>

                  <li><a href="http://localhost:8081/Ebook1/in.jsp" class="current">Home</a></li>
                <li><a class="current">Action and Adventure</a></li>
             
            </ul>
            <div class="col-md-3 ">

                <%String id = request.getParameter("");%>
             
            </div>       
        </div> <!-- end of menu -->

        <div id="templatemo_header">



            <div id="templatemo_new_books">

            </div>
        </div> <!-- end of header -->

        <div id="templatemo_content">

            <div id="templatemo_content_left">
                <div class="templatemo_content_left_section">
                    <h1>Categories</h1>
                    <ul>
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
            </div> <!-- end of content left -->
            <div id="templatemo_content_right">
                
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection(
                                "jdbc:mysql://localhost:3306/ebook-app", "root", "");
   //here sonoo is database name, root is username and password  
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("select * from action");
                        while (rs.next()) {
                    %>

                    <div class="templatemo_product_box">
                        <h1> <%=rs.getString("bookname")%> <span>( <%=rs.getString("Author")%> )</span></h1>
                        <img  src="<%=rs.getString(7)%> " alt="image" />
                        <div class="product_info">
                            <p> <%=rs.getString(8)%> </p>
                            <br>
                          <div class="buy_now_button"><a href="http://localhost:8081/Ebook1/starwars.epub">Read Now</a></div>
                                <div class="detail_button"><a href="http://localhost:8081/Ebook1/subpage_1.jsp">Save</a></div>
                        </div>
                        
                        
                        <div class="cleaner_with_width">&nbsp;</div>
                        <div class="cleaner">&nbsp;</div>
                        </div>
                        <%
                            }
                            rs.close();
                            con.close();
                        %>
                    
              
                
 <!-- dialog box -->
        <div id="white-background">
        </div>
        <div id="dlgbox">
            <div id="dlg-header">
                     Welcome to the Categories :)
            </div>
            <div id="dlg-body">
                <div id="dlg-img">
                    <img src="click.png" width="100" height="100">
                </div>
                <div id="dlg-link">
                    <h3>Action Genre</h3>
                    <br>
                        <p>- Select Read Now For PDF </p>
                        <p>- Click on Dark Mode,</p>
                        <p>  for EPUB or Mobile View.</p>
                       
                </div>
                <div id="dlg-text">
                    <p>- Check Out All Genre/Categories.</p>
                </div>
                </div>
            <div id="dlg-footer">
                <a><button onclick="dlgOK()">OK</a></button>
            </div>
            </div>
        <!-- rest of the page -->
        <button class="btn" onclick="showDialog()"><a>
                  <i class=" fa fa-info-circle"></i>  Help  <i class=" fa fa-question"></i>
              </a></button> 
         <script>
            function dlgOK(){
                var whitebg = document.getElementById("white-background");
                var dlg = document.getElementById("dlgbox");
                whitebg.style.display = "none";
                dlg.style.display = "none";
            }
            
            function showDialog(){
                var whitebg = document.getElementById("white-background");
                var dlg = document.getElementById("dlgbox");
                whitebg.style.display = "block";
                dlg.style.display = "block";
                
                var winWidth = window.innerWidth;
                var winHeight = window.innerHeight;
              
                dlg.style.left = (winWidth/2) - 100/2 + "px";
                dlg.style.top = "55px";
            }
        </script>


            <div class="cleaner_with_height">&nbsp;</div>
        </div> <!-- end of content -->

        <div id="templatemo_footer">

            <a href="subpage.html">Home</a> | <a href="subpage.html">Search</a> | <a href="subpage.html">Books</a> | <a href="#">New Releases</a> | <a href="#">FAQs</a> | <a href="#">Contact Us</a><br />
            Copyright © 2069 <a href="#"><strong>E-Book Reader</strong></a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Designed By</a> by <a href="http://www.templatemo.com" target="_parent">Sandesh Bajracharya</a></div> 
        <!-- end of footer -->
        <!--  Free CSS Template www.templatemo.com -->
    </div> <!-- end of container -->

</body>
</html>