<%@page  import="java.sql.*" %>
<%
 String id=request.getParameter("txt_id");
String name=request.getParameter("txt_name");
String contact=request.getParameter("txt_contact");
String email=request.getParameter("txt_email");
String password=request.getParameter("txt_password");
String type=request.getParameter("txt_type");

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";

Connection cn=DriverManager.getConnection(url, uname, pass);
Statement st=cn.createStatement();
String query="insert into login values('"+id+"','"+name+"','"+contact+"','"+email+"','"+password+"','"+type+"')";
st.executeUpdate(query);
cn.close();
%>
<jsp:forward page="AdminHome.jsp"></jsp:forward>