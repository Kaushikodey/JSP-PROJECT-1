<%-- 
    Document   : read_user
    Created on : Feb 19, 2018, 4:22:23 PM
    Author     : KAUSHIK
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style_ru.css">
        <title>JSP Page</title>
        <%
         if (session.getAttribute("uid")==null && session.getAttribute("aid")==null)
            {response.sendRedirect("welcome.html");
            }
         %>
    </head>
    <body >
        <br>
        
    <center>
        <u><h1>USER DETAILS</h1></u><br><br>
        <%
             try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
                   Statement st=con.createStatement();
                   
                   String sql="select * from job_profile where uid='"+session.getAttribute("uid")+"'";
                   ResultSet rs=st.executeQuery(sql);
                   out.println("<table border='2'><tr><th>USER-ID</th><th>USERNAME</th><th>DEPARTMENT</th><th>PROJECT-ID</th></tr>");
                   while(rs.next())
                   { 
                        out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
                   }
                   out.println("</table>");
                  }
                  catch(Exception e){}
        %>
    <br><br><br>
    <h3><a href="employee_management.jsp">Return to previous page</a></h3>
    </center>
    </body>
</html>
