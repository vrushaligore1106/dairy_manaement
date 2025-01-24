<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
    <title>Purchase Order</title>
</head>
<body>
    <h1>Purchase Order</h1>
    <h2>Supplier Details</h2>
    <p><strong>Name:</strong> <%= request.getAttribute("supplierName") %></p>
    <p><strong>Address:</strong> <%= request.getAttribute("supplierAddress") %></p>
    
    <h2>Product Details</h2>
    <table border="1">
        <tr>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
        </tr>
        <% 
        try {
            String[] productNames   = (String[]) request.getAttribute("productNames");
            String[] quantities = (String[]) request.getAttribute("quantities");
            String[] prices = (String[]) request.getAttribute("prices");

            for (int i = 0; i < productNames.length; i++) { 
                String productName = productNames[i];
                int quantity = 0;
                double price = 0.0;
                double total = 0.0;

                try {
                    quantity = Integer.parseInt(quantities[i]);
                    price = Double.parseDouble(prices[i]);
                    total = quantity * price;
                } catch (NumberFormatException e) {
                     out.println(e);
                    // Handle the exception if the quantity or price cannot be parsed to int or double
                    // You can display an error message or take any other appropriate action
                }
        %>
        <tr>
            <td><%= productName %></td>
            <td><%= quantity %></td>
            <td><%= price %></td>
            <td><%= total %></td>
        </tr>
        <% 
            }
        } catch (Exception e) {
            // Handle any other exception that may occur
            // You can display an error message or take any other appropriate action
        }
        %>
    </table>
    
    <h2>Total Purchase</h2>
    <p><strong>Total Quantity:</strong> <%= request.getAttribute("totalQuantity") %></p>
    <p><strong>Total Price:</strong> <%= request.getAttribute("totalPrice") %></p>
</body>
</html>
