<%-- 
    Document   : Login
    Created on : Jan 19, 2018, 2:58:29 PM
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
		<meta charset="utf-8">
                <title>Admin Login Form</title>
		<link rel="stylesheet" href="style_admin.css">
     </head>
    <body>
        
		<div class="loginBox">
			<img src="user.png" class="user">
			<h2>Admin Log In</h2>
			<form action=" " method="post">
				<p>Username</p>
				<input type="text" name="uname" placeholder="username">
				<p>Password</p>
				<input type="password" name="pass" placeholder="••••••">
				<input type="submit" value="Login">
                                <a href="welcome.html">Back to previous page</a>
			</form>
		</div>
        <%
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
            Statement st= con.createStatement(); 
            String sql="select * from admin where username='"+request.getParameter("uname")+"' and  password='"+request.getParameter("pass")+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next()){
                session.setAttribute("aid",request.getParameter("uname"));
                response.sendRedirect("employee_page.jsp");
              // out.println("<center><h2>Login succesful</h2></center>");
            }
            
           // else
                //out.println("<center><h2>Login unsuccesful</h2></center>");
               // out.print
                //response.sendRedirect("Error");
            con.close();

        %>
    </body>
</html>
