<%-- 
    Document   : read_leadprofile
    Created on : Jan 28, 2018, 8:55:10 PM
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
        <style>
            h1{color:aqua}
            u{color:deeppink}
            th {color:aqua}
            tr{color:white}
            a{color:chartreuse}
        </style>
    </head>
    <body background="21.jpg">
       
    <center>
        <u><b><h1>VIEW LEAD PROJECT DETAILS</h1></b></u><br><br>
        <%
             try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
                   Statement st=con.createStatement();
                   String sql="select * from  lead_project";
                   ResultSet rs=st.executeQuery(sql);
                   out.println("<table border='2'><tr><th>LEAD-ID</th><th>LEAD-NAME</th><th>LOCATION</th><th>STARTDATE</th>");
                   while(rs.next())
                   { 
                        out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
                   }
                   out.println("</table>");
                  }
                  catch(Exception e){}
        %>
        <br><br>
        <a href="lead_management.jsp">Return to previous page</a>
    </center>
    </body>
</html>
