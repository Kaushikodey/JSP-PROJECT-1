<%-- 
    Document   : employee_management
    Created on : Jan 26, 2018, 9:33:27 AM
    Author     : KAUSHIK
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            h1{color:green}
            u{color:green}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLOYEE MANAGEMENT</title>
        <link rel="stylesheet" href="style_em.css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            if (session.getAttribute("uid")==null && session.getAttribute("aid")==null)
            {response.sendRedirect("welcome.html");
            }
         %>
    <center>
        <br><u><h1>EMPLOYEE MANAGEMENT SYSTEM</h1></u>
    <form action="" method="post">
        <div class="container">
            <br>
                    <button type='submit' class='btn btn-success ' name='b1'>Create Profile</button><br><br><br>
                    <button type="submit" class="btn btn-warning " name="b2">Read Profile</button><br><br><br>
                    <button type="submit" class="btn btn-danger  " name="b3">Update Profile</button>&nbsp;&nbsp;                    
       
        <%
            if(session.getAttribute("aid")!=null)
              out.println("<button type='submit' class='btn btn-danger' name='b6'>Delete Profile</button>");
            
        %>
        
        <br><br><br>
        <button type="submit" class="btn btn-warning" name="b4">Back to previous page</button><br><br><br><br>
        <button type="submit" class="btn btn-success" name="b5">LOG OUT</button>
        </div>
    </form>
    </center>
         <%
             String s1=request.getParameter("b1");
             String s2=request.getParameter("b2");
             String s3=request.getParameter("b3");
             String s4=request.getParameter("b4");
             String s5=request.getParameter("b5");
             String s6=request.getParameter("b6");
             if(s1!=null)
             {response.sendRedirect("create_profile.jsp");}
             else if(s2!=null)
             {
                 if(session.getAttribute("aid")!=null)
                    response.sendRedirect("read.jsp");
                 else if(session.getAttribute("uid")!=null)
                    response.sendRedirect("read_user.jsp");
             }
             else if(s3!=null)
             {
                 if(session.getAttribute("uid")!=null)
                    response.sendRedirect("update_profile.jsp");
                 else if(session.getAttribute("aid")!=null)
                     response.sendRedirect("admin_update_profile.jsp");
             }
             else if(s4!=null)
             {response.sendRedirect("employee_page.jsp");}
             else if(s5!=null){
                 if(session.getAttribute("uid")!=null)
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
                 response.sendRedirect("welcome.html");
             }
             else if(s6!=null)
             {
                 if(session.getAttribute("aid")!=null)
                 {
                     response.sendRedirect("Delete.jsp");
                 }
             }
         %>
    </body>
</html>
