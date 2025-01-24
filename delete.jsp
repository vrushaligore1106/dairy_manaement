<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
int id= Integer.parseInt(request.getParameter("id"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM ctable WHERE id="+id);
 
response.sendRedirect("dis.jsp");

 }
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

 