<%-- 
    Document   : update_profile
    Created on : Jan 27, 2018, 9:07:36 PM
    Author     : KAUSHIK
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            h1{color:red}
            u{color:red}
        </style>       
    </head>
    
    <body background="23.jpg">
        <%
         if (session.getAttribute("aid")==null)
            {response.sendRedirect("admin_login.jsp");
            }
         %>
    <center><br>
        <u><h1>UPDATE PROFILE</h1></u><br><br><br><br><br>
        <form>
            <input type="text" placeholder="Enter user-id to delete" name="t"><br><br><br><br>       
                    <button type="submit" class="btn btn-success btn-sm" name="b1">Update Department</button>&nbsp;&nbsp;<input type="text" placeholder="Enter new department" name="t1"><br><br><br><br><br>
                    <button type="submit" class="btn btn-success btn-sm" name="b2">Update Project-ID</button>&nbsp;&nbsp;<input type="text" placeholder="Enter new project-id" name="t2"><br><br><br><br>
                    <button type="submit" class="btn btn-danger btn-sm" name="b3">Return to previous page</button>            
        </form>
        </center>
       <%
           String s1=request.getParameter("b1");
           String s2=request.getParameter("b2");  
           String s3=request.getParameter("b3");
           if(s1!=null)
           {
                 try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
                    Statement st=con.createStatement();
                    String sql="update job_profile set Department='"+ request.getParameter("t1")+"' where uid='"+request.getParameter("t")+"'";
                    st.executeUpdate(sql);
               }
               catch (Exception e){}
           }
           else if(s2!=null){
               
                 try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
                    Statement st=con.createStatement();
                    String sql="update job_profile set Project='"+ request.getParameter("t2")+"' where uid='"+request.getParameter("t")+"'";
                    st.executeUpdate(sql);
               }
               catch (Exception e){}
           }
           else if(s3!=null){
               response.sendRedirect("employee_management.jsp");
           }
           %>
    </body>
</html>
