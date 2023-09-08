<%-- 
    Document   : index
    Created on : 27-Feb-2023, 12:35:39 am
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        

    </head>
    <body>
        
        <!--navbar-->
        <%@include file="Normal_Navbar.jsp"%>
        
        <!--banner-->
        <div  class="container-fluid p-0 m-0">
            
            <div class="jumbotron">
                
                <div class="container">
                    <h3 class="display-3">Welcome to Technical Blog</h3>
               
                <p>Welcome to technical blog, world of technology.
                   A programming language is a system of notation for writing computer programs.
                   [1] Most programming languages are text-based formal languages,
                   but they may also be graphical. They are a kind of computer language.</p>
                
                <p>A programming language is a type of written language that tells computers what to do.
                    Examples are: Python, Ruby, Java, JavaScript, C, C++, and C#. 
                    Programming languages are used to write all computer programs and computer software. 
                    A programming language is like a set of instructions that the computer follows to do something.</p>
                
              
             
             <botton class="btn btn-outline-dark btn-lg"><span class="fa fa-external-link"></span>Start ! It's Free</botton>
                <a href="Login_Page.jsp" class="btn btn-outline-dark btn-lg"><span class="fa fa-user-circle fa-spin"></span>Login</a>
                </div>
            </div>   
        </div>
        
        
        <br>
        
        <!-- comment -->
        <!--cards-->
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    
                    <div class="card">
                         <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-primary">Read more</a>
                          </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    
                    <div class="card">
                         <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-primary">Read more</a>
                          </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    
                    <div class="card">
                         <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-primary">Read more</a>
                          </div>
                    </div>
                </div>
            </div>
            
             <div class="row">
                <div class="col-md-4">
                    
                    <div class="card">
                         <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-primary">Read more</a>
                          </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    
                    <div class="card">
                         <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-primary">Read more</a>
                          </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    
                    <div class="card">
                         <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-primary">Read more</a>
                          </div>
                    </div>
                </div>
            </div>
            
            <br>
            
        </div>
        
        
        
        
        
  
<!--        <h1>Hello World!</h1>-->
       
        
        <% 
            try{
               Class.forName("oracle.jdbc.OracleDriver");
              // out.println("Driver loaded");
               System.out.println("Driver Loaded");
               Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","deepika","1234");
               //out.println("Connection opened");
               System.out.println("connection opened");
               Statement st=conn.createStatement();
               ResultSet rs=st.executeQuery("Select * from users");
             %>
             
             
             
             
             
             
             
             
             
<!--            <table style="border:2px solid black;width:50%;margin:0px auto">
                 <tr>
                     <th>Name</th>
                     <th>Age</th>
                 </tr>
                   <%
                      while(rs.next()){
                       String name=rs.getString(1);
                       int age =rs.getInt(2);
                   %>
                   <tr>
                       <td style="text-align: center;"><%= name %></td>
                       <td style="text-align: center;"><%= age %></td>
                   </tr>
         
           
              <%
                }
               %>
    </table>-->
               
               
               
               
               
               
               
               
               
               <%
            }
            catch(Exception ex){
              ex.printStackTrace();
              out.println("error Occur : "+ex.getMessage());            }
        %>
        
         <!--java script-->
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="JS/js.js" type="text/javascript"></script>
        
<!--        <script>
            $(document).ready(function(){
                alert("document loaded")
            })
            </script>-->

    </body>
</html>
