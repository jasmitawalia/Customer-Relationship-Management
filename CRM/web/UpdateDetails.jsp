<%@page  import="java.sql.*" %>
<%
 String id=request.getParameter("txt1");
String name=request.getParameter("txt2");
String contact=request.getParameter("txt3");
String email=request.getParameter("txt4");



Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";

Connection cn=DriverManager.getConnection(url, uname, pass);
Statement st=cn.createStatement();
String query="update login set name='"+name+"',contact='"+contact+"',email='"+email+"' where id='"+id+"'";
st.executeUpdate(query);
cn.close();

%>
<jsp:forward page="AdminHome.jsp"></jsp:forward>