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
  ResultSet resultSet = null;
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
  .nav{
        width: 100%;
        background: linear-gradient(135deg, #71b7e6, #9b59b6);
          margin-bottom: 50px;
        height: 80px;
        display: flex;
        

    }
    
    .ri{
    margin-left: 200px;
    margin-top: 30px;
    font-size: 25px;
    color: white;
    text-decoration: none;
    }
    
    .img{
            width: 370px;
            height: 370px;
    }
    .mi{
        margin-left: 40px;
        font-size: 25px;
    padding-top: 0.009px;
    border-radius: 10px; 
    padding-bottom: 0.009px;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);

        text-align: center;
        color: white;
    }
    .di{
        margin-left: 20px;
        font-size: 25px;
        color: white;
        font-family:cursive;
    }
    .a{
      color: white;
    }
    button{
      background: linear-gradient(135deg, #71b7e6, #9b59b6);
      padding: 9px;
      padding-left: 20px;
      padding-right: 20px;
      border: none;
      border-radius: 5px;
    }
    .list{
      width: 800px;
      height: 40px;
      padding-top: 1px;

      padding-bottom: 30px;
      margin-bottom: 10px;
      background-color: white;
      margin-left: 260px;
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
  </style>
  <div>
      <div>
      <jsp:include page="Navbar.jsp" />
    </div>
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
  connection = DriverManager.getConnection(connectionUrl, userId, password);
  pst=connection.prepareStatement("SELECT * FROM ctable");


  resultSet = pst.executeQuery();
  while(resultSet.next()){
  %>
  <div>
      <tr bgcolor="#DEB887">

          <td><%=resultSet.getString(2) %></td>
          <td><%=resultSet.getString(3) %></td>
          <td><%=resultSet.getString(4) %>   </td>
          <td><%=resultSet.getString(5) %></td>
          
            
          <td><a href="delete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="btn" onclick="myFunction()" class="delete">Delete</button></a>   </td>
                    <!-- <td><a href="updatejsp.jsp?total=<%=resultSet.getString("total") %>"><button type="button"  class="delete">Delete</button></a>   </td> -->
                      
                      </script> 
  </div>
    
    
    
  <% 

  }

  } catch (Exception e) {
  e.printStackTrace();
  }
  %>
  </table>
  <script>

      function myFunction() {
      
      alert("Item Successfully Deleted");
      
      }
  
    function logout() {
      
      alert("You Are Logging Out");
      
      }
  
      
      </script>
      
      
      