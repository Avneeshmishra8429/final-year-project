<%-- 
    Document   : view.jsp
    Created on : 21 Sep, 2023, 7:14:40 AM
    Author     : Prakh
--%>


<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style.css"  rel="stylesheet" type="text/css">
        <script src="../js/bootstrap.bundle.js" type="text/javascript"></script>
        <title>View</title>
    </head>
    <body style="background-image: url('../images/0bfa5af418bfb0f81f3a485d083bc546.jpg')">
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>
            <div style="min-height:40vw;">

                <%
                    DbManager dm = new DbManager();
                    String ano = request.getParameter("ano");
                    String query = "select * from booking where aadharno='" + ano + "'";
                    ResultSet rs = dm.select(query);

                    if (rs.next()) {
                %>
                <h2 style="color:#73bf44;margin-top:2vw;" align="center">Booking Details of <%=rs.getString("name")%> </h2>
                <table class="table table-bordered" style="width:60%;margin:auto auto 4vw auto;">
                    <tr>
                        <td>Registration ID</td>
                        <td><%=rs.getString("regid")%></td>
                    </tr>
                    <tr>
                        <td>Farmer Name</td>
                        <td><%=rs.getString("name")%></td>
                    </tr>
                    <tr>
                        <td>Village</td>
                        <td><%=rs.getString("village")%></td>
                    </tr>
                    <tr>
                        <td>Post</td>
                        <td><%=rs.getString("post")%></td>
                    </tr>
                    <tr>
                        <td>District</td>
                        <td><%=rs.getString("district")%></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td><%=rs.getString("state")%></td>
                    </tr>
                    <tr>
                        <td>Pin Code</td>
                        <td><%=rs.getString("pincode")%></td>
                    </tr>
                    <tr>
                        <td>Contact No</td>
                        <td><%=rs.getString("contactno")%></td>
                    </tr>
                     <tr>
                        <td>Aadhar No</td>
                        <td><%=rs.getString("aadharno")%></td>
                    </tr>
                     <tr>
                        <td>Number of packets</td>
                        <td><%=rs.getString("noofpacket")%></td>
                    </tr>
                     <tr>
                        <td>Duration</td>
                        <td><%=rs.getString("duration")%> months</td>
                    </tr>
                    <tr>
                        <td>Rate</td>
                        <td>Rs. <%=rs.getString("rate")%></td>
                    </tr>
                    <tr>
                        <td>Total Amount</td>
                        <td>Rs. <%=rs.getString("totalamt")%></td>
                    </tr>
                    <tr>
                        <td>Advance Amount</td>
                        <td>Rs. <%=rs.getString("advanceamt")%></td>
                    </tr>
                     <tr>
                        <td>Rest Amount</td>
                        <td>Rs. <%=rs.getString("restamt")%></td>
                    </tr>
                     <tr>
                        <td>Booking Date</td>
                        <td><%=rs.getString("bookingdate")%></td>
                    </tr>
                </table>
                <%} else {
                %>
                <h2 style="color:Red;">Booking is not available</h2>
                <%}

                %>
            </div>
            <!-- footer -->
            <div class="row">
                <div class="col-sm-6" style="background-color:gold; height: 80px; text-align: center; font-weight: bolder">
                    <p style="margin-top:20px ">Copyrigh &COPY; to Farmer Merchent integration</p>
                   
                </div>
                <div class="col-sm-6" style="background-color: black; height:80px; text-align: center; font-weight: bolder">
                    <p style="color: white; margin-top: 20px;">Developed By : Avneesh mishra</p>
                </div>
        </div>
        </div>
    </body>
</html>
<%}%>