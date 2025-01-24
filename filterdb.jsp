<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*" %>
 
<%
   String typee = request.getParameter("typee");

   // Establish database connection
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;

   try {
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");
      stmt = conn.createStatement();

      String query = "SELECT * FROM ctable";
      
      if (typee != null && !typee.isEmpty()) {
         query += " WHERE typee = '" + typee + "'";
      }

      rs = stmt.executeQuery(query);

      // Display the retrieved data
      while (rs.next()) {
         // Retrieve and display the data as needed
         String data = rs.getString("typee");
         String data1 = rs.getString("name");
         out.println(data);
         out.println(data1);
         
        
          
       
          
      }
   } catch (Exception e) {
      e.printStackTrace();
   } finally {
      // Close resources
      try {
         if (rs != null) rs.close();
         if (stmt != null) stmt.close();
         if (conn != null) conn.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
%>

 -->





<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
 String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/projectdb";

String userId = "root";
String password = "nilange@12345";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;

PreparedStatement pst = null;
//ResultSet rs = null;
 %>
<style>
.li{ 
  
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
td{
    background-color: white;
    padding:10px ;
    padding-left: 20px;
    padding-right: 20px;
    width: 120px;
    font-size: 17px;
}
 
   
   
  button{
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    padding: 9px;
    padding-left: 20px;
    padding-right: 20px;
    width: 100px;
    height: 50px;
    color: white;
    border: none;
    font-size: 20px;
    border-radius: 5px;
  }
  .list{
    width: 800px;
    height: 40px;
    padding-top: 1px;

    padding-bottom: 30px;
    margin-bottom: 10px;
     background-color: white;
     margin-left: 360px;
     margin-bottom: 10px;
     box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;

  }
  .lih2{
  margin-top: 20px;
  font-size: 29px;
  }
  .btn{
    color: white;
    margin-left: 20px;
 
    font-size: 15px;
  }
  input[type=text],
  select {
    width: 400px;
    padding: 12px 20px;

    margin-top: 30px;
    margin-left: 10px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 22px;
    box-sizing: border-box;
  }

  input[type=number],
  select {
    width: 400px;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 22px;
  }

  /* Style the submit button */
  input[type=submit] {
    width: 400px;
    background-color: #04AA6D;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 22px;
  }

  /* Add a background color to the submit button on mouse-over */
  input[type=submit]:hover {
    background-color: #45a049;
  }

  .ri {
    margin-left: 300px;
  }

  /* Add a background color to the submit button on mouse-over */
  input[type=submit]:hover {
    background-color: #45a049;

  }

  .stock {
    width: 1153px;
    height: 300px;
    background-color: white;
    margin-top: 150px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    margin-left: 150px;
  }

  label {
    font-size: 22px;
  }
</style>
<div>
    <jsp:include page="Navbar.jsp" />
</div>
<div>
    <form action="filterdb.jsp" method="get">
        <input type="text" name="typee" placeholder="Enter filter value">
        <button type="submit">Filter</button>
     </form>
     
</div>
<div style="margin-bottom: 30px;" class="list"><h2 align="center" class="lih2"><font><strong>List of  Customer & Total Quantity Sold</strong></font></h2>
</div>
 <table align="center" cellpadding="5" cellspacing="5" border="1">

<tr class="li"  style="background-color: #71b7e6;" >
    
<td><b>Name</b></td>
<td><b>Type of Milk</b></td>
<td><b>Quantity</b></td>
<td><b>Total</b></td>
 
 

 
 
 </tr>
 
 


<%

try{ 
 
    // Establish database connection
     
    
 
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");
    stmt = conn.createStatement();

    String query = "SELECT * FROM ctable";
    
    if (typee != null && !typee.isEmpty()) {
       query += " WHERE typee = '" + typee + "'";
    }

    rs = stmt.executeQuery(query);
while(rs.next()){
%>
 <div>
    <tr bgcolor="#DEB887">

        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %>   </td>
        <td><%=rs.getString(5) %></td>
        
          
          
                    </script> 
 </div>
  
  
  
<% 

}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
 