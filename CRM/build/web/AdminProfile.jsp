<%@page  import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";

Connection cn=DriverManager.getConnection(url, uname, pass);
Statement st=cn.createStatement();
String query="select * from login  where id='"+session.getAttribute("id").toString()+"'";

ResultSet rs= st.executeQuery(query);

if(rs.next())
{
%>
<table>
    <tr>
        <th>Employee Id</th>
        <td><%=session.getAttribute("id").toString()%></td>
    </tr>
     <tr>
        <th>Employee Name</th>
        <td><%=rs.getString("name")%></td>
    </tr>
     <tr>
        <th>Employee Contact</th>
        <td><%=rs.getString("contact")%></td>
    </tr>
     <tr>
        <th>Employee Email</th>
        <td><%=rs.getString("email")%></td>
    </tr>
     <tr>
        <th>Employee Type</th>
        <td><%=rs.getString("type")%></td>
    </tr>
</table>
    <br>
    <a href="AdminHome.jsp">Back To AdminHome</a>
    



<%
    }
%>

