<%-- 
    Document   : index
    Created on : Sep 10, 2023, 10:09:17 AM
    Author     : Avneesh Mishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"> </script> 
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-4">
                <div class="col-sm-4" style="min-height: 600px; background-image: url('images/contact-us.jpg'); background-color:aqua; background-size: 100% 100%"></div>
                <div class="col-sm-8" style="min-height: 600px; background-image: url('images/cold2.jpg'); background-color:aliceblue; background-size: cover"></div>
            </div> 
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
