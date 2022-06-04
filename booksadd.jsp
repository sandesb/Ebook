

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Add Books</title>
        <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, TemplateMo.com" />
        <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website from TemplateMo.com" />
        <link rel="stylesheet" href="templatemo_style.css"/>
        <style>
            .box{
                margin: 20px;
            }
            
        </style>
    </head>
    <body>
        <!--  Free CSS Templates from www.templatemo.com -->
        <div id="templatemo_container">
            <div id="templatemo_menu">
              <ul>

                <li><a href="http://localhost:8081/Ebook1/in.jsp" class="current">Home</a></li>
                <li><a href="http://localhost:8081/Ebook1/subpage2_1.jsp">Search</a></li>
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
                    
                    <div class="col-md-6 p-3 ">
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2 " type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-primary my-2 my-sm-3  " type="submit">Search</button>
                        </form>
                    </div>
                    <br>
                        <h1>Add Books<span></span></h1>
                        <c:if test="${not empty success}">
                            <p class="text-center text-success">${success}</p>
                            <c:remove var="success" scope="session" />
                        </c:if>
                         <c:if test="${not empty failed}">
                            <p class="text-center text-danger">${failed}</p>
                            <c:remove var="success" scope="session" />
                        </c:if>
                        <form action="booksServ" method="post">
                            
                                         
                         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Name: </label>
    <input type="text" name="bname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
                         </div> <br>
                     
                     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Author's Name:</label>
    <input type="text" name="remail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
  </div><br>
     
                     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Sold At Price:</label>
    <input type="number" name="price" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
  </div><br>
                     
  <div class="mb-3">
      <label for="inputState" class="form-label">Book Category:</label> <select id='inputState' name='btype' class='form-control'>
          <option selected>--Select--</option>
          <option value="New">New Book</option>
      </select>
      
      <br> </br>
      
         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Description: </label>
    <input type="text" name="desc" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
                         </div> <br>
                                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Status: </label>
    <input type="text" name="status" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
                         </div> <br>
 
  <div class="form-group">
   
    <label for="exampleFormCOntrolFile1">Upload Photo</label>
    <input type="file" name="bimg" class="form-control-file" id="exampleFormControlFile1" >
       
        
  </div><br>
      <div class="form-group">
   
    <label for="exampleFormCOntrolFile1">Upload</label>
    <input type="file" name="upload" class="form-control-file" id="exampleFormControlFile1" >
       
        
      </div><br>
  <button type="submit" class="btn btn-primary">ADD</button>
  
                        </form>

                        <div class="cleaner_with_height">&nbsp;</div>
                        <div id="container" style="display: flex;">
                                <div class="box">
                                
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