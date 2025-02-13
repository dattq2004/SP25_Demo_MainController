<%-- Document : listUser Created on : Feb 6, 2025, 2:46:31 PM Author : LAPTOP
ASUS --%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="assests/css/liststyles.css" />
        <title>User Management Application</title>
    </head>
    <body>
        <h1>User Management</h1>
        <h2>
            <a href="/lab3/users?action=add">Add New User</a>
        </h2>
        <table>
            <caption>
                <h2>List of user</h2>
            </caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Country</th>
                <th colspan="2">Actions</th>
            </tr>
            <c:forEach var="u" items="${requestScope.users}">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.username}</td>
                    <td>${u.country}</td>
                    <td>
                        <a href="/lab3/users?action=edit&id=${u.id}">Edit</a>
                    </td>
                    <td>
                        <a href="/lab3/users?action=delete&id=${u.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
