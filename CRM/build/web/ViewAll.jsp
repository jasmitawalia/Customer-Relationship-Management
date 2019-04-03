<%@page  import="java.sql.*" %>
<%
  Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/crm";
String uname="root";
String pass="pass";
Connection cn=DriverManager.getConnection(url, uname, pass);
String query="select * from login";
Statement st=cn.createStatement();
ResultSet rs= st.executeQuery(query);
%>
<table border="1">
    <thead>
        <tr>
            <th>EmpId</th>
             <th>EmpName</th>
              <th>EmpContact</th>
               <th>EmpEmail</th>
               <th>EmpType</th>
        </tr>
    </thead>  
    <tbody>
        <tr>
            <%
                while(rs.next())
                {
                %>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("contact")%></td>
                 <td><%=rs.getString("email")%></td>
                  <td><%=rs.getString("Type")%></td>
        </tr>
        <%
            }
        cn.close();
        %>
    </tbody>  
</table>
    <br>
    <a href="AdminHome.jsp">Back To Admin Panel</a>
    