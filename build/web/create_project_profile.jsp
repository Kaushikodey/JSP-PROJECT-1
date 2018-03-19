<%-- 
    Document   : create_project
    Created on : Jan 28, 2018, 3:55:32 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="style_cpp.css">
        <style>
            h1{color:aqua}
            u{color:aqua}
        </style>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
       <center>
           <br><u><h1>ENTER PROJECT DETAILS</h1></u><br><br>
          <form action="" method="post"><b>
                  <input type="text" placeholder=" PROJECT-ID" name="pid"><br><br><br>
                  <input type="text" placeholder=" PROJECT-NAME" name="pname"><br><br><br>
                  <input type="text" placeholder=" PROJECT-LOCATION" name="ploc"><br><br><br>
                  <input type="text" placeholder=" STARTING-DATE" name="pdate"><br><br><br>
                  <input type="text" placeholder=" ALLOTED-EMPLOYEE" name="no_emp"><br><br><br><br></b>
              <button type="submit" class="btn btn-info btn-sm" name="b1">INSERT</button><br><br>
           <h4><a href="project_management.jsp" class="text-primary">Previous page</a></h4>
           </form>     
       </center>
       <%
           try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
            Statement st=con.createStatement();
            String q="select * from  project_management where pid='"+request.getParameter("pid")+"'";
            ResultSet rs=st.executeQuery(q);
            if(rs.next())
                response.sendRedirect("duplicate_userid.html");
            String sql="INSERT INTO project_management VALUES('"+request.getParameter("pid")+"','"+request.getParameter("pname")+"','"+request.getParameter("ploc")+"','"+request.getParameter("pdate")+"','"+request.getParameter("no_emp")+"')";
            st.executeUpdate(sql);
            
          }
          catch(Exception e){}
        %>
    </body>
</html>
