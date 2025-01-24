<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
Date currentDate = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String datecurr = sdf.format(currentDate); 
PreparedStatement pstmt=null;

%>
 
 

 

<%
String name=request.getParameter("name");
String typee1=request.getParameter("typee");
int qty1=Integer.parseInt(request.getParameter("qty"));
//int price=Integer.parseInt(request.getParameter("price"));

 
 
int price;
if (typee1.equalsIgnoreCase("cow")) {
    price = 70;
} else if (typee1.equalsIgnoreCase("buffalo")) {
    price = 75;
} else if (typee1.equalsIgnoreCase("full-cream")) {
    price = 80;
} else if (typee1.equalsIgnoreCase("cowHalf")) {
    price = 26;
} else if (typee1.equalsIgnoreCase("buffaloHalf")) {
    price = 36;
} else {
    price = 45;
}

int total = qty1 * price;

  

try
{

Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "nilange@12345");


 
		
		// Insert the new baby information into the database
		String sql = "INSERT INTO  ctable (name,typee,qty,total,currdate) VALUES ( ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, typee1);
        pstmt.setInt(3, qty1);
        pstmt.setInt(4, total);
        pstmt.setString(5,datecurr);
		pstmt.executeUpdate();  
		
		 












//Statement st=conn.createStatement();
 //int i=st.executeUpdate("insert into ctable values('"+name+"','"+typee1+"',"+qty1+","+total+",'"+datecurr+"')");

 
 if (typee1.equalsIgnoreCase("cow")) {
    PreparedStatement pstmtSelect = conn.prepareStatement("SELECT qty FROM stockss WHERE typee = ?");
    pstmtSelect.setString(1, typee1);
    ResultSet resultSet = pstmtSelect.executeQuery();

    int currentQuantity = 0;
    if (resultSet.next()) {
        currentQuantity = resultSet.getInt("qty");
    } else {
        out.println("record not exist");
    }

    int updatedQuantity = currentQuantity - qty1;
    //out.print(updatedQuantity);

    String updateQuery = "UPDATE stockss SET qty = ? WHERE typee = ?";
    PreparedStatement pstmtUpdate = conn.prepareStatement(updateQuery);
    pstmtUpdate.setInt(1, updatedQuantity);
    pstmtUpdate.setString(2, typee1);

    int rowsUpdated = pstmtUpdate.executeUpdate();
    if (rowsUpdated > 0) { 
        out.println("<script>alert('Stock quantity updated successfully!');</script>");
        
    } else {
        out.println("some error");
    }

    pstmtSelect.close();
    pstmtUpdate.close();
}

if (typee1.equalsIgnoreCase("buffalo")) {
    PreparedStatement pstmtSelect = conn.prepareStatement("SELECT qty FROM stockss WHERE typee = ?");
    pstmtSelect.setString(1, typee1);
    ResultSet resultSet = pstmtSelect.executeQuery();

    int currentQuantity = 0;
    if (resultSet.next()) {
        currentQuantity = resultSet.getInt("qty");
    } else {
        out.println("record not exist");
    }

    int updatedQuantity = currentQuantity - qty1;
   // out.print(updatedQuantity);

    String updateQuery = "UPDATE stockss SET qty = ? WHERE typee = ?";
    PreparedStatement pstmtUpdate = conn.prepareStatement(updateQuery);
    pstmtUpdate.setInt(1, updatedQuantity);
    pstmtUpdate.setString(2, typee1);

    int rowsUpdated = pstmtUpdate.executeUpdate();
    if (rowsUpdated > 0) {
        out.println("<script>alert('Stock quantity updated successfully!');</script>");

    } else {
        out.println("some error");
    }

    pstmtSelect.close();
    pstmtUpdate.close();
}


if (typee1.equalsIgnoreCase("full-cream")) {
    PreparedStatement pstmtSelect = conn.prepareStatement("SELECT qty FROM stockss WHERE typee = ?");
    pstmtSelect.setString(1, typee1);
    ResultSet resultSet = pstmtSelect.executeQuery();

    int currentQuantity = 0;
    if (resultSet.next()) {
        currentQuantity = resultSet.getInt("qty");
    } else {
        out.println("record not exist");
    }

    int updatedQuantity = currentQuantity - qty1;
    //out.print(updatedQuantity);

    String updateQuery = "UPDATE stockss SET qty = ? WHERE typee = ?";
    PreparedStatement pstmtUpdate = conn.prepareStatement(updateQuery);
    pstmtUpdate.setInt(1, updatedQuantity);
    pstmtUpdate.setString(2, typee1);

    int rowsUpdated = pstmtUpdate.executeUpdate();
    if (rowsUpdated >=1) {
        out.println("Reached the alert code.");
      out.println("<script>alert('Stock quantity updated successfully!');</script>");
      out.println("Reached the alert code.");
        
    } else {
      out.println("<script>alert('Error updating stock quantity.');</script>");
    }

    pstmtSelect.close();
    pstmtUpdate.close();
}
////////////
if (typee1.equalsIgnoreCase("buffaloHalf")) {
    PreparedStatement pstmtSelect = conn.prepareStatement("SELECT qty FROM stockss WHERE typee = ?");
    pstmtSelect.setString(1, typee1);
    ResultSet resultSet = pstmtSelect.executeQuery();

    int currentQuantity = 0;
    if (resultSet.next()) {
        currentQuantity = resultSet.getInt("qty");
    } else {
        out.println("record not exist");
    }

    int updatedQuantity = currentQuantity - qty1;
    //out.print(updatedQuantity);

    String updateQuery = "UPDATE stockss SET qty = ? WHERE typee = ?";
    PreparedStatement pstmtUpdate = conn.prepareStatement(updateQuery);
    pstmtUpdate.setInt(1, updatedQuantity);
    pstmtUpdate.setString(2, typee1);

    int rowsUpdated = pstmtUpdate.executeUpdate();
    if (rowsUpdated >=1) {
  
      out.println("<script>alert('Stock quantity updated successfully!');</script>");
 
        
    } else {
      out.println("<script>alert('Error updating stock quantity.');</script>");
    }

    pstmtSelect.close();
    pstmtUpdate.close();
}
//////////////
if (typee1.equalsIgnoreCase("cowHalf")) {
    PreparedStatement pstmtSelect = conn.prepareStatement("SELECT qty FROM stockss WHERE typee = ?");
    pstmtSelect.setString(1, typee1);
    ResultSet resultSet = pstmtSelect.executeQuery();

    int currentQuantity = 0;
    if (resultSet.next()) {
        currentQuantity = resultSet.getInt("qty");
    } else {
        out.println("record not exist");
    }

    int updatedQuantity = currentQuantity - qty1;
    //out.print(updatedQuantity);

    String updateQuery = "UPDATE stockss SET qty = ? WHERE typee = ?";
    PreparedStatement pstmtUpdate = conn.prepareStatement(updateQuery);
    pstmtUpdate.setInt(1, updatedQuantity);
    pstmtUpdate.setString(2, typee1);

    int rowsUpdated = pstmtUpdate.executeUpdate();
    if (rowsUpdated >=1) {
       out.println("<script>alert('Stock quantity updated successfully!');</script>");
         
    } else {
      out.println("<script>alert('Error updating stock quantity.');</script>");
    }

    pstmtSelect.close();
    pstmtUpdate.close();
}

//////////////

if (typee1.equalsIgnoreCase("full-creamHalf")) {
    PreparedStatement pstmtSelect = conn.prepareStatement("SELECT qty FROM stockss WHERE typee = ?");
    pstmtSelect.setString(1, typee1);
    ResultSet resultSet = pstmtSelect.executeQuery();

    int currentQuantity = 0;
    if (resultSet.next()) {
        currentQuantity = resultSet.getInt("qty");
    } else {
        out.println("record not exist");
    }

    int updatedQuantity = currentQuantity - qty1;
    //out.print(updatedQuantity);

    String updateQuery = "UPDATE stockss SET qty = ? WHERE typee = ?";
    PreparedStatement pstmtUpdate = conn.prepareStatement(updateQuery);
    pstmtUpdate.setInt(1, updatedQuantity);
    pstmtUpdate.setString(2, typee1);

    int rowsUpdated = pstmtUpdate.executeUpdate();
    if (rowsUpdated >=1) {
       out.println("<script>alert('Stock quantity updated successfully!');</script>");
         
    } else {
      out.println("<script>alert('Error updating stock quantity.');</script>");
    }

    pstmtSelect.close();
    pstmtUpdate.close();
}

// Similar code for other types (buffalo, full-cream)

conn.close();  
response.sendRedirect("home.jsp");               
 
}
catch(ClassNotFoundException e)
{
System.out.print(e);
e.printStackTrace();
        out.print(e.getMessage());
        e.printStackTrace();
}
catch(SQLException s)
{
    out.print(s.getMessage());
  
}       
catch(Exception e)
{
 
e.printStackTrace();
}

 
%>

