<%-- Document : addUser Created on : Feb 6, 2025, 6:44:12 PM Author : LAPTOP
ASUS --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Add New User</title>
        <link rel="stylesheet" href="assests/css/addstyles.css" />
    </head>
    <body>
        <h1>User Management</h1>
        <h2><a href="users">Back to List</a></h2>

        <form action="users" method="post">
            <input type="hidden" name="action" value="add" />
            <table>
                <caption>
                    <h2>Add New User</h2>
                </caption>
                
                <tr>
                    <th>User Name:</th>
                    <td>
                        <input
                            type="text"
                            name="username"
                            id="username"
                            required
                        />
                    </td>
                </tr>
                <tr>
                    <th>User Email:</th>
                    <td>
                        <input type="email" name="email" id="email" required />
                    </td>
                </tr>
                <tr>
                    <th>Country:</th>
                    <td>
                        <input
                            type="text"
                            name="country"
                            id="country"
                            required
                        />
                    </td>
                </tr>
                <tr>
                    <th>Role:</th>
                    <td>
                        <input type="text" name="role" id="role" required />
                    </td>
                </tr>
                <tr>
                    <th>Status:</th>
                    <td>
                        <select name="status" id="status">
                            <option value="0">0</option>
                            <option value="1">1</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>Password:</th>
                    <td>
                        <input
                            type="password"
                            name="password"
                            id="password"
                            required
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Add User" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
