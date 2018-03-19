<%-- 
    Document   : create_profile
    Created on : Jan 26, 2018, 4:47:14 PM
    Author     : KAUSHIK
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="style_cp.css">
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
        <form action="" method="post"><br>
        <b><u><h1>PROFILE MANAGEMENT</h1></u><br><br>
        <input type="text" placeholder=" USER-ID" name="uid"><br><br>
        <input type="text" placeholder=" Username" name="uname"><br><br>
        <input type="text" placeholder=" Department" name="dept"><br><br>
        <input type="text" placeholder=" Project-ID" name="proj-id"><br><br>
        <div class="container">
            <button type="submit" class='btn btn-info' name="b1">INSERT</button><br><br>
        </div>   
            <a href="employee_management.jsp">Return to previous page</a>
        </form>
    </center>
        <%
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
            Statement st=con.createStatement();
            String q="select * from user where uid='"+request.getParameter("uid")+"'";
            ResultSet rs=st.executeQuery(q);
            if(rs.next())
                response.sendRedirect("duplicate_userid.html");
            String sql="INSERT INTO job_profile VALUES('"+request.getParameter("uid")+"','"+request.getParameter("uname")+"','"+request.getParameter("dept")+"','"+request.getParameter("proj-id")+"')";
            st.executeUpdate(sql);
            
          }
          catch(Exception e){}
        %>
    </body>
</html>
