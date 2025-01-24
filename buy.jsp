<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>Buy Product</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
    }
    
    form {
      width: 300px;
      margin-bottom: 20px;
    }
    
    input[type="number"] {
      width: 100%;
      padding: 8px;
    }
    
    input[type="submit"] {
      width: 100%;
      padding: 8px;
      background-color: #4CAF50;
      color: white;
      border: none;
    }
    
    .message {
      color: red;
      font-weight: bold;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
  <h1>Buy Product</h1>
  
  <% 
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
      // Load the MySQL JDBC driver
      Class.forName("com.mysql.jdbc.Driver");
      
      // Establish a connection to the MySQL database
      String url = "jdbc:mysql://localhost:3306/projectdb";
      String username = "root";
      String password = "nilange@12345";
      conn = DriverManager.getConnection(url, username, password);
      
      String product = request.getParameter("typee");
      
      if (product != null) {
        int quantityToBuy = Integer.parseInt(request.getParameter("qty"));
        
        // Check if the product exists in the stock
        String checkProductSql = "SELECT quantity FROM stock WHERE stock = cow";
        pstmt = conn.prepareStatement(checkProductSql);
        pstmt.setString(1, product);
        ResultSet checkRs = pstmt.executeQuery();
        
        if (checkRs.next()) {
          int currentQuantity = checkRs.getInt("qty");
          
          if (quantityToBuy <= currentQuantity) {
            // Reduce the quantity in the stock
            String updateStockSql = "UPDATE stock SET quantity = quantityToBuy WHERE stock = cow";
            pstmt = conn.prepareStatement(updateStockSql);
            pstmt.setInt(1, currentQuantity - quantityToBuy);
            pstmt.setString(2, product);
            pstmt.executeUpdate();
            
            out.println("<div class='message'>Successfully bought " + quantityToBuy + " " + product + "!</div>");
          } else {
            out.println("<div class='message'>Insufficient quantity available for " + product + ".</div>");
          }
        } else {
          out.println("<div class='message'>Product not found.</div>");
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      // Close database resources
      if (pstmt != null) {
        try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
      }
      if (conn != null) {
        try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
      }
    }
  %>
  
   
</body>
</html>
