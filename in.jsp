<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% session=request.getSession(false);
System.out.println("The session value in jsp is"+session.getAttribute("username"));
if(session.getAttribute("username")!=null) {
%>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>E-Book</title>
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
   
  .part {
    float:left;
    margin:0 5px;
  }
  .stars {
		display:inline-block;
		width:auto;
		position:relative;
		font-size:28px;
		border-radius:5px;

	}
	.stars:BEFORE {
		content:"*****";
		width: 100%;
		overflow:hidden;
		
    /* everything below here is optional. */
		color:#FC0;
		text-shadow:0px 1px 0 #000, 0 -1px 0 #fff;
	}
/*
the AFTER:pseudo element. This will represent the total possible  stars available. It is set to relative to ensure it takes up the proper amount of space.
*/
	.stars:AFTER {
		content:"*****";
		position:relative;
		color:#fff;
                
	}
/*
if including user rating controls, float the AFTER element.
*/
	.stars.rate:AFTER {
		position:absolute;
		left:0px;
	}
/*
default state for the  user rating controls. invisible, but floating above the BEFORE and AFTER elements
*/
	.stars.rate > A {
		color:transparent;
		text-decoration:none;
		position:relative;
		z-index:2;
	}
/*
if the user is floating thier mouse above the rating, hide the display stars.
*/
	.stars.rate:HOVER:BEFORE,
	.stars.rate:HOVER:AFTER {
		display:none;
	}
/*
turn all sthe start "ON" by default.
*/
	.stars.rate:HOVER > A {
		color:#FC0;
		text-shadow:0px 1px 0 #000, 0 -1px 0 #fff;
	}
/*
optional style for the specific star control a user is directly above.
*/
  .stars.rate:HOVER > A:HOVER {
		color:#FC0;
		text-shadow:0px 2px 0 #000, 0 -1px 0 #fff;
		top:-1px;
	}
/*
turn "OFF" all stars after the one the user is hovering over.
*/
	.stars.rate >A:HOVER ~ A {
		color:#fff;
		text-shadow:none;
	}
/* 
  all the styles below are used to display the apropriate portion of the BEFORE element based on percentage rating. unfortunately you will need to create a specific rule for each level of granularity you wish to display.


  if the CSS3 attr() function proposal ever gets implimented
  the remaining rules could all be replaced with the following:
  .stars[data-percent]:BEFORE {
    width:attr(data-percent,%,0);
  }
  
*/
	.
/* 1/2 a star */
	.stars[data-percent="10"]:BEFORE {
		width:10%;
	}
/* 1 star */
	.stars[data-percent="20"]:BEFORE {
		width:20%;
	}
/* 1 & 1/2 stars */
	.stars[data-percent="30"]:BEFORE {
		width:30%;
	}
/* etc. */
	.stars[data-percent="40"]:BEFORE {
		width:40%;
	}
	.stars[data-percent="50"]:BEFORE {
		width:50%;
	}
	.stars[data-percent="60"]:BEFORE {
		width:60%;
	}
	.stars[data-percent="70"]:BEFORE {
		width:70%;
	}
	.stars[data-percent="80"]:BEFORE {
		width:80%;
	}
	.stars[data-percent="90"]:BEFORE {
		width:90%;
	}
	.stars[data-percent="100"]:BEFORE {
		width:100%;
	}
    </style>
</head>

<body>
    <!--  Free CSS Templates from www.templatemo.com -->
    <div id="templatemo_container">
        <div id="templatemo_menu">
            <ul>

                <li><a href="http://localhost:8081/Ebook1/in.jsp" class="current"><i class='fas fa-home'></i> Home</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage2_1.jsp"><i class="fa fa-search" aria-hidden="true"></i> Search</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage_1.jsp"><i class='fas fa-bookmark'></i> My Books</a></li>            
                <li><a href="http://localhost:8081/Ebook1/bestsellers/ugly.jsp"><i class='fas fa-book-open'></i> New Releases</a></li>  
                <li><a href="http://localhost:8081/Ebook1/login1.jsp"><i class="fa fa-users" aria-hidden="true"></i> Login</a></li> 
                <li><a href="http://localhost:8081/Ebook1/register1.jsp"><i class="fas fa-user-plus" ></i> Register</a></li>
        
                <li><a href="http://localhost:8081/Ebook1/admin1.jsp"><%String id = request.getParameter("id");%>
                Welcome <%=id%> <i class='fas fa-book-reader'></i></a></li>
            </ul>
        
        </div> <!-- end of menu -->

        <div id="templatemo_header">

            <div id="templatemo_new_books">

            </div>
        </div> <!-- end of header -->

        <div id="templatemo_content">

            <div id="templatemo_content_left">
                <div class="templatemo_content_left_section">
                    <h1><i class="fas fa-theater-masks " aria-hidden="true"></i> Categories</h1>
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
            	<h1><i class="fas fa-award " aria-hidden="true"></i> Bestsellers</h1>
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
                        ResultSet rs = stmt.executeQuery("select * from book_details");

                        while (rs.next()) {
                    %>

                    <div class="templatemo_product_box">
                        <h1> <%=rs.getString("bookname")%> <span>( <%=rs.getString("Author")%> )</span></h1>
                        <img  src="<%=rs.getString(7)%> " alt="image" />
                        <div class="product_info">
                            <p> <%=rs.getString(8)%> </p>
                           
                            <br>
                                <div class="buy_now_button"><a href="<%=rs.getString(9)%>">Read Now</a></div>
                                <div class="detail_button"><a href="test2?id=<%=rs.getString("tag")%>">Save</a></div>
                        </div>
        <div class="stars rate" data-percent="30"><a href="in_1.jsp" title="awful">*
            </a><a href="in_2.jsp" title="ok">*</a><a href="in_3.jsp" title="good">
                *</a><a href="in_4.jsp" title="great"> *</a><a href="in_5.jsp" title="awesome"> *</a></div><br>
                        
                        
                        <div class="cleaner_with_width">&nbsp;</div>
                        <div class="cleaner">&nbsp;</div>
                        </div>
                        
                        <%
                            }
                            rs.close();
                            con.close();
                        %>
               <%}
else {
response.sendRedirect("http://localhost:8081/Ebook1/login1.jsp");
}
%>     

 <!-- dialog box -->
        <div id="white-background">
        </div>
        <div id="dlgbox">
            <div id="dlg-header">
                     Thank You For Clicking This Box :)
            </div>
            <div id="dlg-body">
                <div id="dlg-img">
                    <img src="click.png" width="100" height="100">
                </div>
                <div id="dlg-link">
                    <h3>Hello There! </h3>
                    <br>
                        <p>We are here to help you.</p>
                        <p>-Click on READ BOOKS.</p>
                        <p>-SAVE BOOKS for later.</p>
                       
                </div>
                <div id="dlg-text">
                    <p>-Click on SEARCH on the top-most tab.</p>
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
