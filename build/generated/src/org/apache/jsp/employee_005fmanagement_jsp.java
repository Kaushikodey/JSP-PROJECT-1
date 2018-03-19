package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class employee_005fmanagement_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>EMPLOYEE MANAGEMENT</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style_em.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if ((session.getAttribute("uid")==null) && (session.getAttribute("uid")==null))
            {response.sendRedirect("welcome.html");
            }
         
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <br><h1>EMPLOYEE MANAGEMENT SYSTEM</h1>\n");
      out.write("    <form action=\"\" method=\"post\">\n");
      out.write("        <br><input type=\"submit\" value=\"Create\" name=\"b1\"><br><br><br>\n");
      out.write("        <input type=\"submit\" value=\"Read\" name=\"b2\">&nbsp;\n");
      out.write("        <input type=\"submit\" value=\"Update\" name=\"b3\">&nbsp;\n");
      out.write("        <br><br><br>\n");
      out.write("        <input type=\"submit\" value=\"Back to previous page\" name=\"b4\"><br><br><br>\n");
      out.write("        <input type=\"submit\" value=\"LOG OUT\" name=\"b5\">\n");
      out.write("    </form>\n");
      out.write("    </center>\n");
      out.write("         ");

             String s1=request.getParameter("b1");
             String s2=request.getParameter("b2");
             String s3=request.getParameter("b3");
             String s4=request.getParameter("b4");
             String s5=request.getParameter("b5");
             if(s1!=null)
             {response.sendRedirect("create_profile.jsp");}
             else if(s2!=null)
             {
                 response.sendRedirect("read.jsp");
             }
             else if(s3!=null)
             {response.sendRedirect("update_profile.jsp");}
             else if(s4!=null)
             {response.sendRedirect("employee_page.jsp");}
             else if(s5!=null){
                request.getSession();
                session.removeAttribute("uid");
                session.invalidate();
                response.sendRedirect("user_login.jsp");
             }
         
      out.write("\n");
      out.write("    </body>\n");
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
