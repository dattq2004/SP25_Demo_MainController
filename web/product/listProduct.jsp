<%-- Document : listProduct Created on : Feb 12, 2025, 5:22:43 PM Author :
LAPTOP ASUS --%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
                            %> <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Product Management</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assests/css/listProduct.css" />
    </head>
    <body>
        <h1>Product Management</h1>
        <h2>
            <a href="/lab3/products?action=create">Create New Product</a>
        </h2>
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
                <th colspan="2">Actions</th>
            </tr>
            <c:set var="productsPerPage" value="5" />
            <c:set
                var="totalProducts"
                value="${fn:length(requestScope.products)}"
                />
            <c:set
                var="totalPages"
                value="${(totalProducts+productsPerPage-1)/productsPerPage}"
                />

            <c:set
                var="currentPage"
                value="${param.page != null ? param.page : 1}"
                />
            <c:set
                var="currentPage"
                value="${currentPage < 1 ? 1 : (currentPage > totalPages ? totalPages : currentPage)}"
                />

            <c:set
                var="start"
                value="${currentPage * productsPerPage - productsPerPage}"
                />
            <c:set var="end" value="${start + productsPerPage}" />

            <c:forEach
                var="p"
                items="${requestScope.products}"
                varStatus="status"
                >
                <c:if test="${status.index >= start && status.index < end}">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.price}</td>
                        <td>${p.description}</td>
                        <td>${p.stock}</td>
                        <td>
                            <a
                                href="/lab3/products?action=update&id=${p.id}"
                                >Update</a>
                        </td>
                        <td>
                            <a
                                href="/lab3/products?action=delete&id=${p.id}"
                                >Delete</a>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>

        <div class="pageNums">
            <c:forEach var="i" begin="1" end="${totalPages}">
                <c:choose>
                    <c:when test="${i == currentPage}">
                        <a class="num-active" href="?page=${i}">${i}</a>
                    </c:when>
                    <c:otherwise>
                        <a class="num" href="?page=${i}">${i}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </body>
</html>
