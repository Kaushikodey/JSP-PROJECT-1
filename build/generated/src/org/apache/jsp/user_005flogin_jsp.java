package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class user_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("       <head>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("                <title>User Login Form</title>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"style_user.css\">\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\t\t<div class=\"loginBox\">\n");
      out.write("\t\t\t<img src=\"user.png\" class=\"user\">\n");
      out.write("\t\t\t<h2>User Log In</h2>\n");
      out.write("\t\t\t<form action=\"\" method=\"post\">\n");
      out.write("\t\t\t\t<p>User-Id</p>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"uid\" placeholder=\"User-Id\">\n");
      out.write("\t\t\t\t<p>Password</p>\n");
      out.write("\t\t\t\t<input type=\"password\" name=\"pass\" placeholder=\"••••••\">\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"Login\">\n");
      out.write("                                <a href=\"user_registration.jsp\">New User?  Register now</a><br>\n");
      out.write("                                <a href=\"welcome.html\">Back to previous page</a>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("             ");

                
            
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

        
      out.write("\n");
      out.write("\t</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
