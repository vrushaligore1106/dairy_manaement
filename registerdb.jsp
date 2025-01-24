<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");   
String pass=request.getParameter("pass");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into student values( '"+fname+"','"+lname+"','"+email+"','"+pass+"')");
 
response.sendRedirect("login.jsp");

}
catch(ClassNotFoundException e)
{
System.out.print(e);
e.printStackTrace();
out.print(e.getMessage());
}
catch(SQLException s)
{
    out.print(s.getMessage());
  
}
%>