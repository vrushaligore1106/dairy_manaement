<html>
    <head>
      <title>Purchase Order</title>
      <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 20px;
        }
    
        h1 {
          text-align: center;
        }
    
        form {
          max-width: 600px;
          margin: 0 auto;
        }
    
        table {
          width: 100%;
          border-collapse: collapse;
          margin-bottom: 20px;
        }
    
        th, td {
          padding: 10px;
          border: 1px solid #ccc;
        }
    
        th {
          background-color: #f2f2f2;
        }
    
        input[type="text"], input[type="number"] {
          width: 100%;
          padding: 8px;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
        }
    
        input[type="submit"], button {
          background-color: #4CAF50;
          color: white;
          padding: 10px 20px;
          border: none;
          border-radius: 4px;
          cursor: pointer;
        }
    
        button {
          margin-bottom: 10px;
        }
    
        @media screen and (max-width: 600px) {
          table {
            display: block;
            overflow-x: auto;
          }
    
          th, td {
            white-space: nowrap;
          }
        }
      </style>
    </head>
    <body>
      <h1>Purchase Order</h1>
    
      <form action="createOrder.jsp" method="post">
        <table>
          <tr>
            <th>Product Name</th>
            <th>Product Type</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
          </tr>
          <tr>
            <td><input type="text" name="product[0]" required></td>
            <td><input type="text" name="productType[0]" required></td>
            <td><input type="number" name="quantity[0]" id="quantity_0" onchange="calculateTotal(0)" required></td>
            <td><input type="number" name="price[0]" id="price_0" onchange="calculateTotal(0)" required></td>
            <td id="total_0"></td>
          </tr>
        </table>
    
        <input type="hidden" id="productCount" value="0">
        <button type="button" onclick="addProduct()">Add Product</button>
    
        <br><br>
    
        <label>Supplier Name:</label>
        <input type="text" name="supplierName" required>
    
        <br><br>
    
        <label>Supplier Address:</label>
        <input type="text" name="supplierAddress" required>
    
        <br><br>
    
        <label>Supplier Contact:</label>
        <input type="text" name="supplierContact" required>
    
        <br><br>
    
        <input type="submit" value="Submit Order">
      </form>
    </body>
    </html>
    