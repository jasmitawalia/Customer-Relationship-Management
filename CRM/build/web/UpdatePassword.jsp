<%@page  import="java.sql.*" %>
<%
  String op=request.getParameter("oldpass");
  String np=request.getParameter("newpass");
  String cp=request.getParameter("conpass");
  Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";
Connection cn=DriverManager.getConnection(url, uname, pass);
Statement st=cn.createStatement();
String query="select * from login where id='"+session.getAttribute("id").toString()+"' and password='"+op+"'";
ResultSet rs=st.executeQuery(query);
if(rs.next())
{
    if(np.equals(cp))
    {
    String  query1="update login set password='"+np+"' where id='"+session.getAttribute("id").toString()+"'";
    Statement st1=cn.createStatement();
    st.executeUpdate(query1);
    out.print("<script>alert('Password Changed Successfully')</script>");
    }
    else
    {
        out.print("<script>alert('Both Password Should be Same')</script>");
    }
}
cn.close();
%>