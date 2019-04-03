
<html>
    <head>

        <title>Register User</title>
    </head>
    <body>
        <form action="SaveDetails.jsp" method="post">
            <table>
                <tr>
                    <th>EmployeeId</th>
                    <td><input type="text" name="txt_id" />  </td>
                </tr>
                <tr>
                    <th>EmployeeName</th>
                    <td><input type="text" name="txt_name" />  </td>
                </tr>
                <tr>
                    <th>EmployeeContact</th>
                    <td><input type="text" name="txt_contact" />  </td>
                </tr>
                <tr>
                    <th>EmployeeEmail</th>
                    <td><input type="text" name="txt_email" />  </td>
                </tr>
                <tr>
                    <th>EmployeePassword</th>
                    <td><input type="password" name="txt_password" />  </td>
                </tr>
                <tr>
                    <th>Employee Type</th>
                    <td>
                        <select name="txt_type">
                            <option value="admin" >Admin</option>
                            <option value="employee">Employee</option>
                            <option value="hr">HR</option>
                        </select>   
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Save Details" /> </td>
                </tr>
                
            </table>
            
            
        </form>
    </body>
</html>
