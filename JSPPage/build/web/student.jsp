
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.DatabaseManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

<div class="container">
  <div class="row">
    <div class="col-sm">
                <div class="dropdown show">
                    <label>Filter</label>
                  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Student
                  </a>

                  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="teacher.jsp">Teacher</a>
                    <a class="dropdown-item" href="student.jsp">Student</a>
                    <a class="dropdown-item" href="course.jsp">Course</a>
                  </div>
                </div>
    </div>
    <div class="col-sm">
            <input type="text" name="search" placeholder="Search">
            <button type="submit">Search</button>

    </div>
    
  </div>
</div>



<br>



<div class="container">
  <div class="row">
    <div class="col-12">
		<table class="table table-image">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
                      <th scope="col">Name</th>
		      <th scope="col">Email</th>
		      <th scope="col">Course</th>
		      <th scope="col">Payment</th>
		    </tr>
		  </thead>
		  <tbody>
                   <%
                              try{
             
               
                
                
                            Connection con=DatabaseManager.getConnection();
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery("select * from student ");
                            while(rs.next())
                            { 
                   
                   %>   
		    <tr>
		      <th scope="row"><%=rs.getInt(1)%></th>
		      <td><%=rs.getString(2)%></td>
		      <td><%=rs.getString(3)%></td>
		      <td><%=rs.getString(4)%></td>
                      <td><%=rs.getString(5)%></td>
		    </tr>
            <% 		}
            }catch(Exception e)
            {
            System.out.println(e);	
            }
            %>		
		  </tbody>
		</table>   
    </div>
  </div>
</div>


    </body>
</html>
