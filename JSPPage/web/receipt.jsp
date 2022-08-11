
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        


        <!--javascript-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
<!--        navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light"  >
  <a class="navbar-brand" href="home.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Data<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="payment.jsp">Payment</a>
      </li>
      

    </ul>
    <form class="form-inline my-2 my-lg-0">
     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">logout</button>
    </form>
  </div>
</nav>
<!--navbar end-->

<br>

                       <% 
           String amount=(String)request.getSession().getAttribute("amount");
           String date=(String)request.getSession().getAttribute("date");
           String time=(String)request.getSession().getAttribute("time");
           String name=(String)request.getSession().getAttribute("name");


       
       %>

<div class="card">
  <div class="card-body mx-4">
    <div class="container">
      <p class="my-5 mx-5" style="font-size: 30px;"></p>
      <div class="row">
        <ul class="list-unstyled">
          <li class="text-black"><%=name%></li>
          <li class="text-muted mt-1"><span class="text-black">Time:</span> <%=time%></li>
          <li class="text-muted mt-1"><span class="text-black">Date:</span> <%=date%></li>
          <li class="text-muted mt-1"><span class="text-black">Amount of Payment:</span> <%=amount%></li>
        </ul>
 
      </div>
    
    <div class="col-sm">
            <button type="submit"><a  href="payment.jsp">Done</a></button>

    </div>
        
    </div>
  </div>
</div>


    </body>
</html>
