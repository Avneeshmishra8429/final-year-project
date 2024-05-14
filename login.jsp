<%-- 
    Document   : index
    Created on : 10 Sep, 2023, 10:06:43 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>farmer merchant integration</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"> </script>
    </head>
    <body>
        <!--head start-->
        <div class="container">
            <jsp:include page="header.jsp"/>
        <div class="row mt-2">
            <div class="col-sm-4 " style="min-height: 600px; background-image: url('images/login.png'); background-size: 100% 100%">
                
            </div>
            <div class="col-sm-8 " style="min-height: 600px; background-image:url('images/background3.jpg'); background-size: cover; ">
                
                <h2 style="margin-top:15%;  text-align:center; color:blue ">LOGIN </h2>
                
                <form class="form-group px-4 py-5" method="post" action="controller.jsp" style="background-color:rgba(100,100,100,0.301); width:100%; height: 60%; " >
                    <input type="hidden" name="page" value="login"/>
                    <table class="table"style="width:80%;  margin:auto; "> 
                        
                        <tr style="background-color:rgba(100,100,100,0.301);">
                            <td>Profile</td>
                            <td>
                                <select class="form-control">
                                    <option>Admin</option>
                                    <option>User</option>
                                </select>
                            </td>
                        </tr>
                        <tr style="background-color:rgba(100,100,100,0.301);">
                            <td>USERID</td>
                            <td><input type="text" name="userid" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>PASSWORD</td>
                            <td>
                                <input type="password" name="password" class="form-control"/>
                            </td>
                            
                        </tr>
                        <tr>
    
                            <td></td>
                            <td><button type="submit" class="btn btn-success">login</button></td>
                        </tr>
                    
                    </table>
                    
                    
                </form>
            </div>
        </div>
         <!--section end-->
         <jsp:include page="footer.jsp"/>

        </div>
       
    </body>
</html>