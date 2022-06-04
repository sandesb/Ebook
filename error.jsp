<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>
<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, TemplateMo.com" />
<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
            <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style> 
              @import url(https://fonts.googleapis.com/css?family=Open+Sans); 
                div.b {
 position: relative;
bottom: 30px;
  right:30px;

}
  
.search {
  width: 100%;
  position: relative;
  
right: 20px;
  display: flex;
}

.searchTerm {
  width: 100%;
  border: 3px solid White;
  border-right: none;
  padding: 5px;
  height: 20px;
  border-radius: 5px 0 0 5px;
  outline: none;

}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #c39a33;
  background: #c39a33;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}</style>
</head>
<body>
<!--  Free CSS Templates from www.templatemo.com -->
<div id="templatemo_container">
	<div id="templatemo_menu">
                <ul>

               <li><a href="http://localhost:8081/Ebook1/in.jsp" ><i class='fas fa-home'></i> Home</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage2_1.jsp" class="current"><i class="fa fa-search" aria-hidden="true"></i> Search</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage_1.jsp"><i class='fas fa-bookmark'></i> My Books</a></li>            
                <li><a href="http://localhost:8081/Ebook1/bestsellers/ugly.jsp"><i class='fas fa-book-open'></i> New Releases</a></li>  
                <li><a href="http://localhost:8081/Ebook1/login1.jsp"><i class="fa fa-users" aria-hidden="true"></i> Login</a></li> 
                <li><a href="http://localhost:8081/Ebook1/register1.jsp"><i class="fas fa-user-plus" ></i> Register</a></li>
                <li><a href="http://localhost:8081/Ebook1/admin1.jsp"><i class="fa fa-user-tie" aria-hidden="true"></i> Admin</a></li>
            </ul>
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	
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
            
            
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        	   <div class="col-md-6 p-3 ">
               
   <form action="servlet1?s=<%=request.getParameter("search")%>" method="post" class="form-inline my-2 my-lg-0">
       <div class="search">
                     <input type="text" class="searchTerm" name="search" placeholder="What's The Name of The Ebook?">
                     <button type="submit" class="searchButton">
                     <i class="fa fa-search"></i>
                     </button>
                    </div>
      </form>
   
      
               
      </div>
                        
                         
            <br>
                <br>
          
                <div class="b"><img src="404.jpg" width="700" height="480">
            </div>
             <div class="cleaner_with_height">&nbsp;</div>
            
         
            
        </div> <!-- end of content right -->
    
    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
	       <a href="index.html">Home</a> | <a href="index.html">Search</a> | <a href="index.html">Books</a> | <a href="#">New Releases</a> | <a href="#">FAQs</a> | <a href="#">Contact Us</a><br />
        Copyright © 2069 <a href="#"><strong>E-Book Reader</strong></a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Designed By</a> by <a href="http://www.templatemo.com" target="_parent">Sandesh Bajracharya</a>
	</div> <!-- end of footer -->

</div> <!-- end of container -->
</body>
</html>