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
            <div class="col-sm-4" style="min-height: 600px; background-image: url('images/registation.webp'); background-size: 100% 100%"">
                
                
            </div>
            <div class="col-sm-8" style="min-height: 600px; background-image: url('images/farmer2.jpg')">
                <h2 style=" color: blue; text-align:center; ">REGISTRATION FORM</h2>
                <form class="form-group" method="post" action="controller.jsp" >
                    <input type="hidden" name="page" value="registation"/>
                    <table class="table"style="width:80%;margin:auto " >
                        <tr>
                          
                            <td> Enter Name  </td>
                            <td> <input type="text" name="name" class="form-control"/> </td>
                        </tr>
                        <tr>
                             <td> Enter Father Name  </td>
                            <td> <input type="text" name="fname" class="form-control"/> </td>
                        </tr>
                        <tr>
                             <td> Enter Mother Name  </td>
                            <td> <input type="text" name="mname" class="form-control"/> </td>
                        </tr>
                        <tr>
                            <td>Select Gender</td>
                            <td>  <input type="radio"name="gender" value="male" class="form-check-input"/>male
                                         <input type="radio" name="gender" value="female" class="form-check-input"/>female
                            </td>                              
                        </tr>
                        <tr>
                            <td>Enter Village</td>
                            <td><textarea name="village" class="form-control"></textarea></td>                            
                        </tr>
                        <tr>
                             <td> Enter POST </td>
                            <td> <input type="text" name="post" class="form-control"/> </td>
                        </tr>
                        <tr>
                             <td> Enter District</td>
                            <td> <input type="text" name="district" class="form-control"/> </td>
                        </tr>
                         <td> Enter State </td>
                            <td> <input type="text" name="state" class="form-control"/> </td>
                        </tr>
                        <tr>
                            <td>Enter Pincode</td>
                            <td><input type="text" name="pincode" class="form-control"</td>
                        </tr>
                        <tr>
                            <td>Enter contact No</td>
                            <td><input type="text" name="contactno" class="form-control"</td>
                        </tr>
                        <td>Enter Aadhar-No</td>
                            <td><input type="text" name="aadharno" class="form-control"</td>
                        </tr>
                        <td>Enter Pan-No</td>
                            <td><input type="text" name="panno" class="form-control"</td>
                        </tr>
                      
                        <tr>
                              <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Submit</button>
                            </td>
                            
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
