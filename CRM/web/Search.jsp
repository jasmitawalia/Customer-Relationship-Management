<%@page  import="java.sql.*" %>

<html>
    <head>
        <title>Search Page</title>
    </head>
    <body>
        <form action="Search.jsp" method="post">
            <table>
                <tr>
                    <th>Enter Id/Name/Contact/Email</th>
                    <td><input type="text" name="txt1" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Search Details" /> </td>
                </tr>
                
            </table>            
        </form>
  <%
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
 %>
  
        <br/>
        <table border="1" >
  <tr>
        <th>Employee Id</th>
        <td><%=rs.getInt("id")%> </td>
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
        <%}
cn.close();
%>  
    </body>
</html>


