<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
    String sortParam = request.getParameter("sort_order");
    String sortOrder = (sortParam != null && sortParam.equals("desc")) ? "DESC" : "ASC";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Establish database connection
        String url = "jdbc:mysql://localhost:3306/projectdb";
        String username = "root";
        String password = "nilange@12345";
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);

        // Execute SQL query to retrieve data
        String query = "SELECT * FROM ctable ORDER BY qty " + sortOrder;
        stmt = conn.createStatement();
        rs = stmt.executeQuery(query);

        // Generate HTML content for the sorted data
        out.println("<table>");
        out.println("<style>");
        out.println("table {");
        out.println("border-collapse: collapse;");
        out.println("    width: 100%;");
        out.println("}");
        out.println("th, td {");
        out.println("     background-color: white;");
        out.println("    padding:10px ;");
        out.println("    border-bottom: 1px solid #ddd;");
        out.println("    font-size:20px ;");
        out.println("    border-bottom: 1px solid #ddd;");
        out.println("}");
        out.println("</style>");
        out.println("<tr><th>Type</th><th>Quantity</th></tr>");
        while (rs.next()) {
            String typee = rs.getString("typee");
            double qty = rs.getDouble("qty");

            // Display the data in table rows
            out.println("<tr>");
            out.println("<td>" + typee + "</td>");
            out.println("<td>" + qty + "</td>");
            out.println("</tr>");
        }
        out.println("</table>");
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close database resources
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
