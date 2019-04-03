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
<form action="UpdateDetails.jsp" method="post">
<table>
    <tr>
        <th>Employee Id</th>
        <td><input type="text" name="txt1" value="<%=session.getAttribute("id").toString()%>" readonly="" /> </td>
    </tr>
     <tr>
        <th>Employee Name</th>
        <td> <input type="text" name="txt2"  value="<%=rs.getString("name")%>" /> </td>
    </tr>
     <tr>
        <th>Employee Contact</th>
        <td> <input type="text" name="txt3" value="<%=rs.getString("contact")%>" /> </td>
    </tr>
     <tr>
        <th>Employee Email</th>
        <td><input type="text" name="txt4" value="<%=rs.getString("email")%>" /> </td>
    </tr>
    <tr>
        <td><a href="AdminHome.jsp" >Back</a> </td>
        <td><input type="submit" value="Update Details" /> </td>
    </tr>  
</table>

    <br>
    



<%
    }
cn.close();
%>

</form>