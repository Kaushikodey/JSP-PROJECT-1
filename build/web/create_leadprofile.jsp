<%-- 
    Document   : create_leadprofile
    Created on : Jan 28, 2018, 8:33:55 PM
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
        <link rel="stylesheet" href="style_clp.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{color:white}
            u{color:white}
        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       
    </head>
    <body>
    <center>
        
        <b><u><h1>Lead management</h1></u></b><br><br>
        <form action="" method="post">
            <input type="text" placeholder="LEAD-ID" name="pid"><br><br><br><br>
            <input type="text" placeholder="LEAD-NAME" name="pname"><br><br><br><br>
            <input type="text" placeholder="LEAD-LOCATION" name="ploc"><br><br><br><br>
            <input type="text" placeholder="START-DATE" name="pdate"><br><br><br><br><br>
            <button type="submit" class="btn btn-info" name="b1">INSERT</button><br><br><br>
        <a href="employee_page.jsp"><b>RETURN TO PREVIOUS PAGE</b></a>
        </form>
        <%
           try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
            Statement st=con.createStatement();          
            String q="select * from lead_project";
            ResultSet rs = st.executeQuery(q);
            while(rs.next())
            {
                String s1=rs.getString("pid");
                if (s1.equals(request.getParameter("pid")))
                {
                    response.sendRedirect("duplicate_userid.html");
                }
                
            }
            String sql="INSERT INTO  lead_project VALUES('"+request.getParameter("pid")+"','"+request.getParameter("pname")+"','"+request.getParameter("ploc")+"','"+request.getParameter("pdate")+"')";
            st.executeUpdate(sql);
            
          }
          catch(Exception e){}
        %>
        </center>
    </body>
</html>
