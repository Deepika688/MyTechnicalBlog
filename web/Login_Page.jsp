<%-- 
    Document   : Login_Page
    Created on : 03-Mar-2023, 3:45:45 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.Message"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        
           <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        
<!--        <Style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 30%, 100% 86%, 64% 100%, 33% 89%, 0 100%, 0% 30%);
            }
        </style>-->
    </head>
    <body>
       
        <!--navbar-->
        
        <%@include file = "Normal_Navbar.jsp" %>
        
        <main class="d-flex align-items-center" style="height: 80vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        
                        <div class="card">
                            <div class="card-header primary-background text-white text-center ">
                            <span class="fa fa-user-plus fa-3x"></span>
                            <br>
                            <p>Login here</p>
                        </div>
                           
                            
                            
                            <% 
                                Message m = (Message)session.getAttribute("msg");
                                if(m != null){
                                
                            %>
                            <div class="alert <%= m.getCssClass() %>" role="alert">
                             <%= m.getContent() %>
                             </div>
                             
                             
                            <%  
                              session.removeAttribute("msg");  
                                }
                            %>
                            
                            
                            
                            
                        <div class="card-body">
                                
                             <form action="LoginServlet" method="post">
                                    
                                  <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                  </div> 
                                    
                                  <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                  </div>
                                    
<!--                                  <div class="form-check">
                                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                  </div>-->
                                            
                                  <div class="container text-center">
                                  <button type="submit" class="btn btn-primary">Submit</button>
                                  </div>
                                    
                              </form>
                                
                        </div>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </main> 
        
         <!--java Script-->
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="JS/js.js" type="text/javascript"></script>
    </body>
</html>
