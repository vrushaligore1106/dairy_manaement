<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
 
try {
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");

     Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT SUM(total) AS column_sum FROM ctable");
    
    double columnSum = 0;
    if (rs.next()) {
        columnSum = rs.getDouble("column_sum");
    }
    
    // Pass the columnSum variable to the JSP page for display
    request.setAttribute("columnSum", columnSum);
   
    rs.close();
    stmt.close();
    conn.close();
} catch (SQLException e) {
    e.printStackTrace();
}
 
RequestDispatcher dispatcher = request.getRequestDispatcher("u.jsp");
dispatcher.forward(request, response);  
    
%>