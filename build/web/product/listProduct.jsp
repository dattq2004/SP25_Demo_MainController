<%-- 
    Document   : listProduct
    Created on : Feb 12, 2025, 5:22:43 PM
    Author     : LAPTOP ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Management</title>
    </head>
    <body>
        <h1>
            Product Management
        </h1>
        <table>
            <caption>
                <h2>List of product</h2>
            </caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Stock</th>
            </tr>
            <c:set var="productsPerPage" value="5" />
            <c:set var="totalProducts" value="${requestScope}"
        </table>
    </body>
</html>
