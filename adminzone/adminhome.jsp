<%-- 
    Document   : adminhome
    Created on : 15 Sep, 2023, 10:09:52 AM
    Author     : User
--%>
<% 
if(session.getAttribute("adminid")==null)
{
response.sendRedirect("../login.jsp");
}
else
{




%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Farmer merchant  Integration</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
        
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px; background-image:url('../images/farmer1 image.jpg'); background-size: 100% 100%">
                    <H2 style="text-align:center; color: BLACK"> Do not share your password </H2>
                </div>
            </div>
            
            <div class="row">
                <div class="col-sm-6" style="background-color:gold; height: 80px; text-align: center; font-weight: bolder">
                    <p style="margin-top:20px ">Copyrigh &COPY; to Farmer Merchent integration</p>
                   
                </div>
                <div class="col-sm-6" style="background-color: black; height:80px; text-align: center; font-weight: bolder">
                    <p style="color: white; margin-top: 20px;">Developed By : Avneesh mishra</p>
                </div>
        </div>
    </body>
</html>
<%}%>
