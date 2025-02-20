<%-- 
    Document   : editProduct
    Created on : Feb 12, 2025, 5:22:59 PM
    Author     : LAPTOP ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
        <link rel="stylesheet" href="assests/css/editProduct.css" />
    </head>
    <body>
        <h1>Update Product</h1>
        <h2><a href="/lab3/products">Back to Product List</a></h2>
        <form action="${pageContext.request.contextPath}/products" method="post">
            <input type="hidden" name="action" value="update" />
            <table>
                <caption>
                    <h2>Update Product</h2>
                </caption>
                <tr>
                    <th>Product ID:</th>
                <c:set var="p" value="${p}" />
                <td>
                    <input
                        type="text"
                        name="id"
                        id="id"
                        readonly=""
                        value="${p.id}"
                        />
                </td>
                </tr>
                <tr>
                    <th>Product Name:</th>
                    <td>
                        <input
                            type="text"
                            name="name"
                            id="name"
                            required
                            />
                    </td>
                </tr>
                <tr>
                    <th>Price: </th>
                    <td>
                        <input type="number" step="any" name="price" id="price" required />
                    </td>
                </tr>
                <tr>
                    <th>Description: </th>
                    <td>
                        <input
                            type="text"
                            name="description"
                            id="desciption"
                            required
                            />
                    </td>
                </tr>
                <tr>
                    <th>Stock: </th>
                    <td>
                        <input type="number" name="stock" id="stock" required />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Update Product" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
