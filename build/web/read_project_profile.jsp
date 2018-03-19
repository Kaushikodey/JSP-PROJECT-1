<%-- 
    Document   : read_project_profile
    Created on : Jan 28, 2018, 4:26:18 PM
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
        <link rel="stylesheet" href="style_rpp.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
         if (session.getAttribute("uid")==null && session.getAttribute("aid")==null)
            {response.sendRedirect("welcome.html");
            }
         %>
         <style>
             h1{color:palegoldenrod}
             u{color:palegoldenrod}
             th{color:white}
             td{color:white}
         </style>    
         
    </head>
    <body>
    <center>
        <u><b><h1>PROJECT DETAILS</h1></b></u><br><br>
        <%
             try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
                   Statement st=con.createStatement();
                   String sql="select * from project_management";
                   ResultSet rs=st.executeQuery(sql);
                   out.println("<table border='2'><tr><th>PROJECT-ID</th><th>PROJECTNAME</th><th>LOCATION</th><th>PROJECT STARTDATE</th><th>ALLOTED EMPLOYEE</th></tr>");
                   while(rs.next())
                   { 
                        out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
                   }
                   out.println("</table>");
                  }
                  catch(Exception e){}
        %>
        <br><br>
        <h3><a href="project_management.jsp">Return to previous page</a></h3>
    </center>
    </body>
</html>
