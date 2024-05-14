<%-- 
    Document   : adminhome
    Created on : 15 Sep, 2023, 10:09:52 AM
    Author     : User
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
                <div class="col-sm-12" style="min-height: 600px; background-image: url('../images/enquiry.jpg'); background-size: 100% 100% ">
                    <h2 style="text-align:center; color: window">Enquiry Management</h2>
                    <table class="table table-bordered" style="width:90%; margin: auto;">
                        <tr>
                            
                            <th>Id</th>
                            <th>name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact</th>
                            <th>Email Address</th>
                            <th>Enquiry text</th>
                            <th>posted Date</th>
                             <th>DELETE</th>
                        </tr> 
                        <%
                    DbManager dm=new DbManager();
                    String query="Select *from enquiry";
                    ResultSet rs=dm.select(query);
                    
                    while(rs.next())
                    {
                        
                        %>
                        <tr> 
                            <td><%=rs.getInt("id")%></td>
                            <td><%=rs.getString("name")  %></td>
                              <td><%=rs.getString("gender")  %></td>
                                <td><%=rs.getString("address")  %></td>
                                  <td><%=rs.getString("contactno")  %></td>
                                    <td><%=rs.getString("emailaddress")  %></td>
                                      <td><%=rs.getString("enquirytext")  %></td>
                                      <td><%=rs.getString("enquirydate")  %></td>
                                      <td>
                                          <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                              <button class="btn btn-danger">DELETE
                                                  
                                              </button>
                                              
                                              
                                              
                                          </a>
                                      </td>
                        </tr>
                      <%  }%>
                    </table>
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
