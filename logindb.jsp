<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
String email= request.getParameter("email");
session.putValue("email", email);
String pass= request.getParameter("pass");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from student where email='" + email +
 "' and pass ='" + pass + "'");

 rs.next();
 if (rs.getString("pass").equals(pass) && rs.getString("email").equals(email)) {
 
  response.sendRedirect("home.jsp");

 } else {
  out.println("Invalid password or username.");
 }
} catch (ClassNotFoundException e) {
    out.print(e.getMessage() + "" + e);
}
catch(SQLException s)
{
    out.print(s.getMessage());
}
%>
