<%-- 
    Document   : closing
    Created on : 21 Sep, 2023, 7:35:59 AM
    Author     : Prakh
--%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Booking
        </title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style.css"  rel="stylesheet" type="text/css">
        <script src="../js/bootstrap.bundle.js" type="text/javascript"></script>
    </head>
    <body style="background-image: url('../images/payment.jpg')">
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>
            <div class="container-fluid" style="min-height: 40vw;">
                <h2 align="center" style="color: #73bf44;margin:1vw auto 1vw auto;" class="text-light">Manage Booking</h2>
                <table class="table table-bordered">
                    <tr>
                        <th>Reg. ID</th>
                        <th>Name</th>
                        <th>Aadhar No</th>
                        <th>No of Packets</th>
                        <th>Duration</th>
                        <th>Rate</th>
                        <th>Total Amount</th>
                        <th>Advance Amount</th>
                        <th>Rest Amount</th>
                        <th>Pay</th>
                    </tr>
                    <%
                        DbManager dm = new DbManager();
                        ResultSet rs = dm.select("select * from booking");
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td><%=rs.getString("noofpacket")%></td>
                            <td><%=rs.getString("duration")%></td>
                            <td><%=rs.getString("rate")%></td>
                            <td><%=rs.getString("totalamt")%></td>
                            <td><%=rs.getString("advanceamt")%></td>
                            <td><%=rs.getString("restamt")%></td>
                            <td>
                                <a href="payment.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-outline-success">Pay</button>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                </table>
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