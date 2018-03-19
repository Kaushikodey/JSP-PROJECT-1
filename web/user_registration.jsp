<%-- 
    Document   : user_registration
    Created on : Jan 26, 2018, 11:43:25 AM
    Author     : KAUSHIK
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Registration form</title>
<link rel="stylesheet" type="text/css" href="style_userreg.css">
</head>
<body>
    
   <div id="nav">
Registration Form
 <form action="user_registration.jsp" method="post">
User Id:<input type="text" placeholder="within 5 letters" name="uid"><br> 
<input type="text" placeholder="Name" name="name"> <br>
<input type="text" placeholder="Email" name="mail">
<input type="text" placeholder="Mobile No" name="phone"><br>
<input type="text" placeholder="Age" name="age">
<input type="text" placeholder="Gender" name="sex"> <br>
<input type="password" placeholder="Enter Password" name="pass">
<input type="Submit" value="Register" name="reg"><br>
</div>
   <%
      
          
        try {
            //1 Register jdbc driver            
            Class.forName("com.mysql.jdbc.Driver");
            
            //2. Create a connection
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "");
           
            //3. Create a statement class object            
            Statement st=con.createStatement();
                   
            //4. Write the query
            String q="select * from user where uid='"+request.getParameter("uid")+"'";
            ResultSet rs=st.executeQuery(q);
            if(rs.next())
                response.sendRedirect("duplicate_userid.html");
               
            String sql="INSERT INTO user VALUES('"+request.getParameter("uid")+"','"+request.getParameter("name")+"','"+request.getParameter("mail")+"','"+request.getParameter("phone")+"','"+request.getParameter("age")+"','"+request.getParameter("sex")+"','"+request.getParameter("pass")+"')";
            
            //5. execute the query
            st.executeUpdate(sql);
            response.sendRedirect("user_login.jsp");
            con.close();
        }
        catch(Exception e){}
    
       %>
</body>
</html>