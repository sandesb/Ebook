

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        content="text/html; charset=UTF-8">
        <title>Ebook: Index</title>
        <%@include file="allCSS.jsp"%>
        <style type="text/css">
            .back-img{
                background:url("img.png");
                height:75vh;
                width:100%;
                background-repeat: no-repeat;                 
            }
            .crd-ho:hover{
                background-color: #fcf7f7 
            }
        </style>
    </head>
  
  <%@ include file="navbar.jsp"%>
  <div class="container-fluid back-img">
      <h2 class="text-center "> EBook Reader </h2> </div>
     
      
      <div class="container" >
           <h3 class="text-center"> Recent Book </h3>
      <div class=""row">
           <div class="col-md-3">
                <div class="card crd-ho">
                <div class="card-body text-center">
                     <img alt="" src="book.png" style="width:150px; height:200px" class="img-thumblin">
                    <p>DUNE eBook</p>
                    <p>Frank Herbert</P>
                    <p>Categories: New</P>
                    <div class="row" >
                        <a href="" class="btn btn-danger btn-sm ml-1">Read Now</a>
                        <a href="" class="btn btn-success btn-sm ml-1">Read Later</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                    </div>
                  </div>
              </div>
         </div>      
      </div>
           
      </div>
           <hr>
         <div class="container" >
           <h3 class="text-center"> New Books </h3>
      <div class=""row">
           <div class="col-md-3">
                <div class="card crd-ho">
                <div class="card-body text-center">
                     <img alt="" src="book.png" style="width:50px; height:100px" class=""img-thumblin">
                    <p>DUNE eBook</p>
                    <p>Frank Herbert</P>
                    <p>Categories: New</P>
                    <div class="row" >
                        <a href="" class="btn btn-danger btn-sm ml-1">Read Now</a>
                        <a href="" class="btn btn-success btn-sm ml-1">Read Later</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                    </div>
                    
                  </div>
              </div>
         </div>
         </div>
           <br> </br>
               <div class=""row">
           <div class="col-md-3">
                <div class="card crd-ho">
                <div class="card-body text-center">
                     <img alt="" src="book.png" style="width:50px; height:100px" class=""img-thumblin">
                    <p>DUNE eBook</p>
                    <p>Frank Herbert</P>
                    <p>Categories: New</P>
                    <div class="row" >
                        <a href="" class="btn btn-danger btn-sm ml-1">Read Now</a>
                        <a href="" class="btn btn-success btn-sm ml-1">Read Later</a>
                        <a href="" class="btn btn-danger btn-sm ml-1">View Details</a>
                    </div>
                    
                  </div>
              </div>
         </div>
         </div>
           
           
           </div>
           <div class="text-center mt-1">
               <a href="" class="btn btn-danger btn-sm text-white">View All</a>
           </div>
           </div>
          </div>
           </div>
  
           <%@include file="footer.jsp"%> 
    

