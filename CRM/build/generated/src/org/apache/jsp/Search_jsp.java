package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Search Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Search.jsp\" method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Enter Id/Name/Conatact/Email</th>\n");
      out.write("                    <td><input type=\"text\" name=\"txt1\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><input type=\"submit\" value=\"Search Details\" /> </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("            </table>            \n");
      out.write("        </form>\n");
      out.write("  ");

      String id=request.getParameter("txt1");
   Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";
Connection cn=DriverManager.getConnection(url, uname, pass);
String query="select * from login where id='"+id+"'";
   Statement st=cn.createStatement();
 ResultSet rs=  st.executeQuery(query);
 if(rs.next())
 {
 
      out.write("\n");
      out.write("  \n");
      out.write("        <br/>\n");
      out.write("        <table border=\"1\" >\n");
      out.write("  <tr>\n");
      out.write("        <th>Employee Id</th>\n");
      out.write("        <td>");
      out.print(rs.getInt("id"));
      out.write(" </td>\n");
      out.write("    </tr>\n");
      out.write("     <tr>\n");
      out.write("        <th>Employee Name</th>\n");
      out.write("        <td>");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("     <tr>\n");
      out.write("        <th>Employee Contact</th>\n");
      out.write("        <td>");
      out.print(rs.getString("contact"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("     <tr>\n");
      out.write("        <th>Employee Email</th>\n");
      out.write("        <td>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("     <tr>\n");
      out.write("        <th>Employee Type</th>\n");
      out.write("        <td>");
      out.print(rs.getString("type"));
      out.write("</td>\n");
      out.write("    </tr>          \n");
      out.write("        </table>\n");
      out.write("        ");
}
cn.close();

      out.write("\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
