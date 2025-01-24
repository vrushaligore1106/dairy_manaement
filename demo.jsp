<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
  <title>Purchase Order</title>
</head>
<body>
  <h1>Purchase Order</h1>

  <%@ page import="java.sql.*" %>
  <%@ page import="javax.sql.*" %>
  <%@ page import="javax.naming.*" %>
  <%@ page import="java.util.*" %>

  <%
    // Create a connection to the database
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");
   
  
    // Retrieve the purchase order details
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM purchase_orders");
  %>

  <table>
    <tr>
      <th>Product Name</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Total</th>
    </tr>
    <% while (rs.next()) { %>
      <tr>
        <td><%=resultSet.getString(1) %></td>
        <td><%=resultSet.getInt(2) %></td>
        <td><%=resultSet.getString(3) %></td>
        <td><%= rs.getDouble("total") %></td>
      </tr>
    <% } %>
  </table>

  <% rs.close();
  stmt.close();
  conn.close();
  %>

  <h2>Total of All Products: <%= getTotalOfAllProducts() %></h2>

</body>
</html>

<%!
  private double getTotalOfAllProducts() {
    try {
      // Create a connection to the database
      Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");
 

      // Retrieve the total of all products
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT SUM(total) AS total FROM purchase_orders");
      double total = 0.0;
      if (rs.next()) {
        total = rs.getDouble("total");
      }
      rs.close();
      stmt.close();
      conn.close();

      return total;
    } catch (Exception e) {
      e.printStackTrace();
      return 0.0;
    }
  }
%>
