<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, TemplateMo.com" />
<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website from TemplateMo.com" />

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Book Store Template, Free CSS Template, TemplateMo.com</title>
        <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, TemplateMo.com" />
        <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website from TemplateMo.com" />
        <link href="templatemo_style1.css" rel="stylesheet" type="text/css" />
        <link href="formcss.css" rel="stylesheet" type="text/css" />
          <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
                  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'>
           
           
        </script>
    </head>
    <body>
        <!--  Free CSS Templates from www.templatemo.com -->
        <div id="templatemo_container">
            <div id="templatemo_menu">
              <ul>

  <li><a href="http://localhost:8081/Ebook1/in.jsp" >Home</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage.jsp">Search</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage2.jsp">My Books</a></li>            
                <li><a href="http://localhost:8081/Ebook1/bestsellers/ugly.jsp">New Releases</a></li>  

                <li><a href="http://localhost:8081/Ebook1/login1.jsp"class="current">Login</a></li> 
                <li><a href="http://localhost:8081/Ebook1/register1.jsp">Register</a></li>
                        <li><a href="http://localhost:8081/Ebook1/admin1.jsp">
                        <i class="fa fa-user-tie" aria-hidden="true"></i> Admin</a></li>
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
                            <li><a href="#">Action and Adventure</a></li>
                            <li><a href="#">Autobiography</a></li>
                            <li><a href="#">Classics</a></li>
                            <li><a href="#">Comic Book or Graphic Novel</a></li>
                            <li><a href="#">Detective and Mystery</a></li>
                            <li><a href="#">Fantasy</a></li>
                            <li><a href="#">History</a></li>
                            <li><a href="#">Horror</a></li>
                            <li><a href="#">Science Fiction</a></li>
                        </ul>
                    </div>
                    <div class="templatemo_content_left_section">
                        <h1>Bestsellers</h1>
                        <ul>
                            <li><a href="#">The Lord of the Rings </a></li>
                            <li><a href="#">The Little Prince</a></li>
                            <li><a href="#">Harry Potter and the Sorcerer's Stone</a></li>
                            <li><a href="#">Atomic Habits</a></li>
                            <li><a href="#">It Ends with Us</a></li>
                            <li><a href="#">The Seven Husbands of Evelyn Hugo</a></li>
                            <li><a href="http://www.flashmo.com" target="_parent">Verity</a></li>
                            <li><a href="http://www.templatemo.com" target="_parent">Art of Seduction</a></li>
                            <li><a href="http://www.webdesignmo.com" target="_parent">Ugly Love</a></li>
                            <li><a href="http://www.photovaco.com" target="_parent">The Mountain Is You</a></li>
                        </ul>
                    </div>
			
            
         
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
            <button class="btn" onclick="showDialog()"><a href="http://localhost:8081/Ebook1/admin1.jsp"><i class="fa fa-user-tie " aria-hidden="true"></i> 
                    Are you the ADMIN  <i class=" fa fa-question"></i></a>
              </button> 
            <br>
            <h1>Login <span></span></h1>
           
          
             <div class="cleaner_with_height">&nbsp;</div>
              <div class="container">
        <div class="row mt-2">
        <div class="col-md-4 offset-md-4">
        <div class="card">
            <div class="card-body">
          
                <form action="loginServlet" method="post">


                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address:</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" name="username">
                            <div id="emailHelp" class="form-text" required="required"></div>
                    </div>
                    <br>

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password:</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="password" required="required">
                        </div> <br>
                            
                              
                                    <label for="exampleCheck1">Are you a human?</label> <br>
                                       
                                        <div class="text-center">
                                            <br> <button type="submit" class="btn btn-primary">Login</button><br>
                                                    <br> <a href="register.jsp"> Create Account</a>
                                                        </form>
                <br>
                
                </div> 
            </div>
     
                    <br>
           
           
                                 </div>
        </div>
        </div>
        </div>
         
            
        </div> <!-- end of content right -->
    
    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
	       <a href="index.html">Home</a> | <a href="index.html">Search</a> | <a href="index.html">Books</a> | <a href="#">New Releases</a> | <a href="#">FAQs</a> | <a href="#">Contact Us</a><br />
     Copyright © 2069 <a href="#"><strong>E-Book Reader</strong></a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Designed By</a> by <a href="http://www.templatemo.com" target="_parent">Sandesh Bajracharya</a>
	</div> <!-- end of footer -->
<!--  Free CSS Template www.templatemo.com -->
</div> <!-- end of container -->
</body>
</html>