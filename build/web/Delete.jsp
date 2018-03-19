<%-- 
    Document   : Delete
    Created on : Jan 28, 2018, 2:37:55 AM
    Author     : KAUSHIK
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="24.jpg">
        <%
            if(session.getAttribute("aid")==null)
               response.sendRedirect("admin_login.jsp");
            %>
    <center>
        <h1>Delete user details from employee management system</h1><br><br>
        <form action="" method="">
            <input type="text" placeholder="Enter user-id to delete" name="t"><br><br>
            <input type="submit" value="Delete" name="b1">
        </form>
    
    <%
         try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from job_profile");
            String sql;
            if(rs.next()){
                sql="delete from job_profile where uid='"+request.getParameter("t")+"'";
                st.executeUpdate(sql);}
            else
                out.println("<br><b>Database is empty now");
            
          }
          catch(Exception e){}
         
        %>
        <br><br>
        <h3><a href="employee_management.jsp">Back to previous page</a></h3>
        </center>    
    </body>
</html>
