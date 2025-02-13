<%-- Document : editUser Created on : Feb 6, 2025, 7:41:33 PM Author : LAPTOP
ASUS --%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="assests/css/editstyles.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User Management</h1>
        <h2><a href="users">Back to List</a></h2>
        <form action="users" method="post">
            <input type="hidden" name="action" value="edit" />
            <table>
                <caption>
                    <h2>Edit User</h2>
                </caption>
                <tr>
                    <th>User ID:</th>
                    <c:set var="u" value="${requestScope.user}" />
                    <td>
                        <input
                            type="text"
                            name="id"
                            id="id"
                            readonly=""
                            value="${u.id}"
                        />
                    </td>
                </tr>
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
                        <input type="submit" value="Edit User" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
