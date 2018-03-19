<%-- 
    Document   : project_management
    Created on : Jan 28, 2018, 3:31:48 PM
    Author     : KAUSHIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style_pm.css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body background="26.jpg">
        <%
            if(session.getAttribute("uid")==null && session.getAttribute("aid")==null)
              response.sendRedirect("welcome.html");
         %>
    <center><br><br>
        <b><u><h1>PROJECT MANAGEMENT</h1></u></b><br><br>
         <form action="" method="post">
             <br><button type="submit" class="btn btn-success" name="b1">Create Project</button>&nbsp;&nbsp;&nbsp;&nbsp;
             <button type="submit" class="btn btn-danger"  name="b2">View Project Details</button><br><br><br><br>
        <button type="submit" class="btn btn-primary" name="b4">Back to previous page</button><br><br><br><br>
        <buttton type="submit" class="btn btn-success btn-sm" name="b5">LOG OUT</buttton>
    </form>
    </center>
    <%
             String s1=request.getParameter("b1");
             String s2=request.getParameter("b2");
             String s4=request.getParameter("b4");
             String s5=request.getParameter("b5");
             
             if(s1!=null)
             {response.sendRedirect("create_project_profile.jsp");}
             else if(s2!=null)
             {response.sendRedirect("read_project_profile.jsp");}
             else if(s4!=null){
                 response.sendRedirect("employee_page.jsp");
             }
             else if(s5!=null){ if(session.getAttribute("uid")!=null)
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
