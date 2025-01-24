<%@ page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %>
<%
    // Retrieve form data
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String contact= request.getParameter("contact");
    String[] productNames = request.getParameterValues("product_name[]");
    String[] quantities = request.getParameterValues("quantity[]");
    String[] prices = request.getParameterValues("price[]");
     
    // Database connection details
    String jdbcUrl = "jdbc:mysql://localhost:3306/projectdb";
    String dbUsername = "root";
    String dbPassword = "nilange@12345";

    Connection conn = null;
    PreparedStatement stmt = null;
    
    try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
        
        // Prepare SQL statements to insert supplier and products
        String insertSupplierSql = "INSERT INTO suppliers (name, address,contact) VALUES (?, ?, ?)";
        String insertProductSql = "INSERT INTO products (supplier_id, name, quantity, price) VALUES (?, ?, ?, ?)";
        
        // Enable transaction support
        conn.setAutoCommit(false);
        
        // Prepare supplier insert statement
        stmt = conn.prepareStatement(insertSupplierSql, Statement.RETURN_GENERATED_KEYS);
        stmt.setString(1, name);
        stmt.setString(2, address);
        stmt.setString(3, contact);
        
        // Execute the supplier insert statement
        stmt.executeUpdate();
        
        // Retrieve the generated supplier ID
        ResultSet generatedKeys = stmt.getGeneratedKeys();
        int supplierId = -1;
        if (generatedKeys.next()) {
            supplierId = generatedKeys.getInt(1);
        } else {
            throw new SQLException("Failed to retrieve the generated supplier ID.");
        }
        
        // Prepare product insert statement
        stmt = conn.prepareStatement(insertProductSql);
        
        // Calculate totals
        int totalQuantity = 0;
        double totalPrice = 0.0;
        
        // Insert each product
        for (int i = 0; i < productNames.length; i++) {
            String productName = productNames[i];
            int quantity = Integer.parseInt(quantities[i]);
            double price = Double.parseDouble(prices[i]);
            
            totalQuantity += quantity;
            totalPrice += (quantity * price);
            
            stmt.setInt(1, supplierId);
            stmt.setString(2, productName);
            stmt.setInt(3, quantity);
            stmt.setDouble(4, price);
            
            stmt.executeUpdate();
        }
        
        // Commit the transaction
        conn.commit();
        
        // Redirect back to the form with success message and totals
        response.sendRedirect("purchaseOrder.jsp?success=true&totalQuantity=" + totalQuantity + "&totalPrice=" + totalPrice);
    } catch (Exception e) {
        out.println(e);
        // Rollback the transaction in case of an error
        if (conn != null) {
            conn.rollback();
        }
        
        // Handle any errors and redirect back to the form with an error message
       //    response.sendRedirect("purchaseOrder.jsp?success=false");
    } finally {
        // Reset auto-commit to enable auto-commit mode
        if (conn != null) {
            conn.setAutoCommit(true);
        }
        
        // Close statement and database connection
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
  



 

%>
