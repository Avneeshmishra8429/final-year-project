
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style.css"  rel="stylesheet" type="text/css">
        <script src="../js/bootstrap.bundle.js" type="text/javascript"></script>
    </head>
    <body style="background-image: url('../images/Booking-Platform.png')">
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>

            <div class="row mt-2">
                           
                            
                <div class="col-sm-12" style="min-height: 600px;">
                    <h2 style="text-align: center; color:blue; ">List Of Farmers</h2>
                    <table class="table table-bordered">
                        <tr> <th>Reg. Id</th>
                            <th>Name</th>
                            <th>Village</th>
                            <th>Post</th>
                            <th>District</th>
                            <th>State</th>
                            <th>Pincode</th>
                            <th>Contact No.</th>
                            <th>Aadhar No.</th>
                            <th>Book</th>
                        </tr>
                        <% DbManager dm = new DbManager();
                            ResultSet rs = dm.select("select * from farmerinfo");
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("village")%></td>
                            <td><%=rs.getString("post")%></td>
                            <td><%=rs.getString("district")%></td>
                            <td><%=rs.getString("state")%></td>
                            <td><%=rs.getString("pincode")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td><a href="validate.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-outline-success">Book</button></a></td>
                        </tr>
                        <%}%>
                    </table>
                </div>
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
