<%-- Document : addProduct Created on : Feb 12, 2025, 5:22:52 PM Author : LAPTOP
ASUS --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Product</title>
    </head>
    <body>
        <h1>Product Management</h1>
        <h2> 
            <a href="/lab3/products">Back to list products</a>
        </h2>
        <form action="${pageContext.request.contextPath}/products" method="post">
            <input type="hidden" name="action" value="create" />
            <table>
                <caption>
                    <h2>Add new product</h2>
                </caption>
                <tr>
                    <th>Name: </th>
                    <td>
                        <input type="text" name="name" required />
                    </td>
                </tr>
                
                <tr>
                    <th>Price: </th>
                    <td>
                        <input type="number" name="price" step="any" required />
                    </td>
                </tr>
                
                <tr>
                    <th>Description</th>
                    <td>
                        <input type="text" name="description" required />
                    </td>
                </tr>
                
                <tr>
                    <th>Stock: </th>
                    <td>
                        <input type="number" name="stock" required />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Add Product" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
