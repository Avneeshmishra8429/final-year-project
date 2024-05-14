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
       
        <title>farmer merchant  Integration</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
        
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px;  background-image: url('../images/news.webp'); background-size: 100% 100%">
                    <h2 style="color:white; text-align:center;"> Add News and Event</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="news"/>
                    
                        <table class="table table-bordered" style="width:70%; margin: auto; ">
                            <tr>
                                <td>Enter news</td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                                
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                            
                        </table>
                        
                    </form>
                    <br/>
                    <h1 style="text-align:center; color: black"><b>news management</b></h1>
                   
                    <table class="table table-bordered" style="width: 80%; margin:auto ">
                       
                       
                   
                          
                        <tr>
                            <th>Id</th>
                            <th>newstext</th>
                            <th>posted date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        DbManager dm=new DbManager();
                       ResultSet rs=dm.select("select * from news");
                       while(rs.next())
                       {
                       %>
                       <tr>
                           <td><%=rs.getInt("id")%></td>
                            <td><%=rs.getString("newstext")%></td>
                              <td><%=rs.getString("posteddate")%></td>
                              <td>
                                  <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                                      <button class="btn btn-danger">Delete</button>
                                      
                                  </a>
                              </td>
                       </tr>
                       
                       
                    <%   }
                         
                        %>                    
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