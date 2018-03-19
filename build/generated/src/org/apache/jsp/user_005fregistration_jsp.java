package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class user_005fregistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Registration form</title>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style_userreg.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("   <div id=\"nav\">\n");
      out.write("Registration Form\n");
      out.write(" <form action=\"user_registration.jsp\" method=\"post\">\n");
      out.write("User Id:<input type=\"text\" placeholder=\"within 5 letters\" name=\"uid\"><br> \n");
      out.write("<input type=\"text\" placeholder=\"Name\" name=\"name\"> <br>\n");
      out.write("<input type=\"text\" placeholder=\"Email\" name=\"mail\">\n");
      out.write("<input type=\"text\" placeholder=\"Mobile No\" name=\"phone\"><br>\n");
      out.write("<input type=\"text\" placeholder=\"Age\" name=\"age\">\n");
      out.write("<input type=\"text\" placeholder=\"Gender\" name=\"sex\"> <br>\n");
      out.write("<input type=\"password\" placeholder=\"Enter Password\" name=\"pass\">\n");
      out.write("<input type=\"Submit\" value=\"Register\" name=\"reg\"><br>\n");
      out.write("</div>\n");
      out.write("   ");

      
          boolean f=true;
        try {
            //1 Register jdbc driver            
            Class.forName("com.mysql.jdbc.Driver");
            
            //2. Create a connection
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "");
           
            //3. Create a statement class object            
            Statement st=con.createStatement();
                   
            //4. Write the query
            String q="select * from user";
            ResultSet rs = st.executeQuery(q);
            
            while(rs.next())
            {
                String s1=rs.getString("uid");
                if (s1.equals(request.getParameter("uid")))
                {
                    f=false;
                    response.sendRedirect("Duplicate.html");
                }
                
            }
            
            if(f){
               
                String sql="INSERT INTO user VALUES('"+request.getParameter("uid")+"','"+request.getParameter("name")+"','"+request.getParameter("mail")+"','"+request.getParameter("phone")+"','"+request.getParameter("age")+"','"+request.getParameter("sex")+"','"+request.getParameter("pass")+"')";
            
            //5. execute the query
               st.executeUpdate(sql);
               response.sendRedirect("user_login.jsp");
            }
            else{
                out.println("Give unique user id");
            }
            con.close();
            response.sendRedirect("user_login.jsp");
        }
        catch(Exception e)
        {
        }
    
       
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
