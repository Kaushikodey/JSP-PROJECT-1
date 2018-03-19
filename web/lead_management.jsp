<%-- 
    Document   : Lead_management
    Created on : Jan 28, 2018, 8:12:51 PM
    Author     : KAUSHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1 {color:white;}
            u{color:white}
        </style>
        <link rel="stylesheet" href="style_lm.css">
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
           <u><b><h1>LEAD PROJECT MANAGEMENT</h1></b></u><br><br><br>
           <form action="" method="post">               
                <button type='submit' class='btn btn-success' name='b1'>CREATE LEAD</button><br><br><br><br>
                <button type="submit" class="btn btn-danger" name="b2">VIEW LEAD</button><br><br><br><br>
                <button type="submit" class="btn btn-primary" name="b3">RETURN TO PREVIOUS PAGE</button><br><br><br><br>
                <button type="submit" class="btn btn-warning" name="b4">LOG OUT</button>               
           </form>
        </center>
       <%
           String s1=request.getParameter("b1");
           String s2=request.getParameter("b2");
           String s3=request.getParameter("b3");
           String s4=request.getParameter("b4");
           if(s1!=null)
           {
                 response.sendRedirect("create_leadprofile.jsp");
           }
           else if(s2!=null)
           { response.sendRedirect("read_leadprofile.jsp");}
           else if(s3!=null)
           { response.sendRedirect("employee_page.jsp");}
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
