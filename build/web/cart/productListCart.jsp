<%-- 
    Document   : listCart
    Created on : Feb 20, 2025, 9:36:14 PM
    Author     : LAPTOP ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="productDAO.ProductDAO" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<% 
  ProductDAO dao = new ProductDAO();
  List<Product> productList = dao.showListProducts();
  request.setAttribute("products", productList);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping</title>
    </head>
    <body>
        <h1>Product Shopping</h1>

        <c:forEach var="p" items="${requestScope.products}">
            <div>
                <h2>${p.name}</h2>
                <p>${p.price}</p>
            </div>
        </c:forEach>
    </body>
</html>
