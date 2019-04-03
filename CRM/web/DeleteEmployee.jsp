<%@page  import="java.sql.*" %>
<%
 String id=request.getParameter("txt_id");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";
Connection cn=DriverManager.getConnection(url, uname, pass);
Statement st=cn.createStatement();
String query="insert into ex_login (id,name,contact,email,password,type) select id,name,contact,email,password,type from login where id='"+id+"'";
String query1="delete from login where id='"+id+"'";
Statement st1=cn.createStatement();
st.executeUpdate(query);
st1.executeUpdate(query1);
cn.close();
%>
<jsp:forward page="AdminHome.jsp"></jsp:forward>