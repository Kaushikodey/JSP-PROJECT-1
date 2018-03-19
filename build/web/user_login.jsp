<%-- 
    Document   : user_login
    Created on : Jan 25, 2018, 9:22:02 AM
    Author     : KAUSHIK
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
		<meta charset="utf-8">
                <title>User Login Form</title>
		<link rel="stylesheet" href="style_user.css">
	</head>
	<body>
		<div class="loginBox">
			<img src="user.png" class="user">
			<h2>User Log In</h2>
			<form action="" method="post">
				<p>User-Id</p>
				<input type="text" name="uid" placeholder="User-Id">
				<p>Password</p>
				<input type="password" name="pass" placeholder="••••••">
				<input type="submit" value="Login">
                                <a href="user_registration.jsp">New User?  Register now</a><br>
                                <a href="welcome.html">Back to previous page</a>
			</form>
		</div>
             <%
                
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
            Statement st= con.createStatement(); 
            String sql="select * from user where uid='"+request.getParameter("uid")+"' and  password='"+request.getParameter("pass")+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next()){
                session.setAttribute("uid",request.getParameter("uid"));
                response.sendRedirect("employee_page.jsp");
              // out.println("<center><h2>Login succesful</h2></center>");               
            }
           
            else
                //out.println("<center><h2>Login unsuccesful</h2></center>");
               // out.print
                //response.sendRedirect("Error");
            con.close();

        %>
	</body>
</html>
