<%-- 
    Document   : employee_page
    Created on : Jan 26, 2018, 3:56:33 PM
    Author     : KAUSHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style_ep.css">
        <style>
            h1{color:pink}
            u{color:pink}
        </style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
   <body>
        <%
            if (session.getAttribute("uid")==null && session.getAttribute("aid")==null)
            {response.sendRedirect("welcome.html");}
        %>
            <br>
            <center><u><h1>EMPLOYEES' PAGE</h1></u><br><br><br>
            <form action='' method='get'>
                <div class="container">
                    <button type='submit' class='btn btn-success btn-lg' name='b1'>EMPLOYEE MANAGEMENT</button><br><br><br>
                    <button type="submit" class="btn btn-warning btn-lg" name="b2">PROJECT MANAGEMENT</button><br><br><br>
                    <button type="submit" class="btn btn-danger btn-lg" name="b3">LEAD MANAGEMENT</button><br><br><br>
                    <button type="submit" class="btn btn-primary btn-lg" name="b4">LOG OUT</button>
                </div>
            </form>
            </center>
        <%
            String s1=request.getParameter("b1");
            String s2=request.getParameter("b2");
            String s3=request.getParameter("b3");
            String s4=request.getParameter("b4");
            if(s1!=null){
                response.sendRedirect("employee_management.jsp");
            }
            else if(s2!=null){
                response.sendRedirect("project_management.jsp");  //project mamagement
            }
            else if (s3!=null){
                response.sendRedirect("lead_management.jsp");  //lead management
            }
            else if(s4!=null)
            { if(session.getAttribute("uid")!=null)
                 {
                     request.getSession();
                     session.removeAttribute("uid");
                     session.invalidate();
                     //response.sendRedirect("user_login.jsp");
                 }
               else if(session.getAttribute("aid")!=null){
                request.getSession();
                session.removeAttribute("aid");
                session.invalidate();
               // response.sendRedirect("admin_login.jsp");
                 } 
                 response.sendRedirect("welcome.html");}
         %>
    </body>
</html>
