
<%-- 
    Document   : payment
    Created on : Sep 20, 2023, 9:43:30 PM
    Author     : Tanmay
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Payment</title>

    </head>
    <body style="background-image: url('../images/0bfa5af418bfb0f81f3a485d083bc546.jpg')">
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>

            <div class="container-fluid" style="min-height: 40vw;">
                <h2 style="color:#73bf44;" align="center">Do Payment</h2>

                <%
                    DbManager dm = new DbManager();
                    String ano = request.getParameter("ano");
                    String query = "select * from booking where aadharno='" + ano + "'";
                    ResultSet rs = dm.select(query);
                    if (rs.next()) {
                %>
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="payment"/>
                    <table class="table table-bordered" style="width: 60%; margin:auto">
                        <tr>
                            <td>Aadhar No</td>
                            <td>
                                <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td>Total Amount</td>
                            <td>
                                <input type="number" name="totalamt" value="<%=rs.getString("totalamt")%>" class="form-control" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td>Rest Amount</td>
                            <td>
                                <input type="number" name="restamt" value="<%=rs.getString("restamt")%>" class="form-control" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td>Pay Amount</td>
                            <td>
                                <input type="number" name="payamt" >
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button type="submit" class="btn btn-outline-success">Pay</button></td>
                        </tr>
                    </table>

                </form>

                <%}%>
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