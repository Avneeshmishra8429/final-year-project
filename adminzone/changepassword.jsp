<%-- 
    Document   : changepassword
    Created on : 17 Sep, 2023, 7:24:10 AM
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
        <title>Farmer Merchant Integration</title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.bundle.js"></script>
        <style>
         #fmi{
	text-transform: uppercase;
	background: linear-gradient(to bottom,tomato, orange, tomato 100%);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
        a:hover{
            background-color: red;
            color:white;
        }
        </style>
    </head>
    <body>
        <script>
           function validate()
           {
              var op=document.getElementById("oldpassword");
              var np=document.getElementById("newpassword");
              var cp=document.getElementById("confirmpassword");
              if(op.value=="" || op.value==null)
              {
                  alert("please enter old password");
                  op.focus();
              }
              else if(np.value=="" || np.value==null)
              {
                  alert("Please Enter Your New Password");
                  np.focus();
               }
              else if(cp.value=="" || cp.value==null)
              {
                  alert("Please Enter Your Confirm Password");
                  cp.focus();
                  
              }
              else if(np.value!=cp.value)
              {
                  alert("Confirm password is not matched");
                  np.focus();
              }
              else
              {
                  document.getElementById("frmchangepassword").submit();
              }
           }
        </script>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2" >
                <div class="col-sm-12" style="min-height: 600px; background-color: aliceblue;">
                    <h2 style="text-align: center; color:blue;">Change Password </h2>
                    <form class="form-group" method="post" id="frmchangepassword" onsubmit="event.preventDefault();validate();" class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="changepassword"/>
                        <table class="table table-success" style="width:60%; margin:auto;">
                            <tr>
                                <td style="font-size:28px; color:navy;">Enter the Old Password</td>
                                <td><input type="text" name="oldpassword" class="form-control" id="oldpassword"/></td>
                            </tr>
                            <tr>
                                <td style="font-size:28px; color:navy;">Enter the new password</td>
                                <td><input type="text" name="newpassword" class="form-control" id="newpassword"</td>
                            </tr>
                            <tr>
                                <td style="font-size:28px; color:navy;">Enter the Confirm Password</td>
                                <td><input type="text" name="confirmpassword" class="form-control" id="confirmpassword"/></td>
                            </tr>
                             <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Change password
                                </button>
                            </td>
                            </tr>
                        </table>
                    </form>
                </div>
                </div>
                <div class="row"><div class="col-sm-6" style="height:80px; background-color: green;"/><span style="color: white; font-size:22px"> Copyright(c) to Farmer Merchant Integration</span></div>
                <div class="col-sm-6" style="height:80px; background-color: navy;"/><span style="color: white; font-size:22px">Developed By -Saurabh Verma</span> </div>
            </div>
            
        </div>
    </body>
</html>
<% } %>