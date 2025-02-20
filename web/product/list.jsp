<%-- 
    Document   : list
    Created on : Feb 20, 2025, 11:22:42 AM
    Author     : LAPTOP ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="product" class="model.Product" scope="session" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="/lab3/bean">tiep tuc them san pham</a>
        <table>
            <tr>
                <th>name</th>
                <th>price</th>
                <th>des</th>
                <th>stock</th>
            </tr>
            <tr>
                <td><jsp:getProperty name="product" property="name" /></td>
                <td><jsp:getProperty name="product" property="price" /></td>
                <td><jsp:getProperty name="product" property="description" /></td>
                <td><jsp:getProperty name="product" property="stock" /></td>
            </tr>
        </table>
    </body>
</html>
