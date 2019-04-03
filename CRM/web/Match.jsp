<%@page  import="java.sql.*" %>
<%
 String id=request.getParameter("txt1");
String password=request.getParameter("txt2");

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";

Connection cn=DriverManager.getConnection(url, uname, pass);
Statement st=cn.createStatement();
String query="select * from login where (id='"+id+"' or email='"+id+"' or contact='"+id+"') and password='"+password+"'";
ResultSet rs= st.executeQuery(query);
if(rs.next())
{
    session.setAttribute("id", rs.getInt("id"));
    session.setAttribute("name",rs.getString("name"));
    String type=rs.getString("type");
    if(type.equals("admin"))
    {
    %>
    <jsp:forward page="AdminHome.jsp" ></jsp:forward>
    <%
    }
    else if(type.equals("employee"))
    {
    }
}
else
{
out.print("<script>alert('Invalid Credentials')</script>");
}
cn.close();


%>