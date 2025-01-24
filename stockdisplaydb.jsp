<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>

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
    ResultSet resultSet = null;

    try {
        connection = DriverManager.getConnection(connectionUrl, userId, password);
        pst = connection.prepareStatement("SELECT * FROM stockss");
        resultSet = pst.executeQuery();
        
        ArrayList<String> customerList = new ArrayList<>();
        ArrayList<Integer> quantityList = new ArrayList<>();

        while (resultSet.next()) {
            String customerName = resultSet.getString("typee");
            int quantitySold = resultSet.getInt("qty");
            
            customerList.add(customerName);
            quantityList.add(quantitySold);
        }
%>

<html>
<head>
    <title>List of Customers & Total Quantity Sold</title>
    <style>
        .container {
            width: 90%;
            margin: auto;
             
            height: 1200px;
            display: flex;
            flex-wrap: wrap;
            margin-top: 20px;
            box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
        }

        .innercon {
            width: 40%;
            height: 240px;
            
            margin-top: 80px;
            margin-left: 92px;
            margin-bottom: 0px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
        .divType{
            width: 90%;
            border: 1px solid black;
            margin-top: 30px;
            margin-left: 20px;

        }
        .divType h4,p{
            margin-left: 20px;
            font-size: 20px;
        }
        .addstock{
            width: 90%;
            margin: auto;
             
            height: 40px;
      
            margin-top:  100px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
        .addstock h3{
             margin-left: 95px;
             font-size: 30px;
        }
        .st{
            color: black;
        }
         
    </style>
</head>
<body>
    <div>
        <div>
            <%-- Add your Navbar.jsp content here --%>
            <jsp:include page="/Navbar.jsp" /> 
        </div>
    </div>

    <div style="margin-bottom: 30px;" class="list">
        <h2 align="center" class="lih2"><strong>Available Stock According to Type</strong></h2>
    </div>
    
    <div class="container">
        <% for (int i = 0; i < customerList.size(); i++) { %>
            <div class="innercon">
                <div class="divType">
                    <h4>Type Of Stock: <%= customerList.get(i) %></h4>
                </div>
                <div class="divType">
                    
                <p>Total Quantity  Available: <%= quantityList.get(i) %></p>
                </div>
                   
            </div>
        <% } %>
    </div>

    <div class="addstock">
       <a href="stock.jsp">   <h3  class="st">Click Here To Add Stock</h3></a>
    </div>
</body>
</html>

<%
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Close the database resources
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
