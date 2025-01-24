<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="foot.css">
<script src="https://kit.fontawesome.com/aa8afbb896.js" crossorigin="anonymous"></script>
<style tpe="text/css">
	
	/* *{
		background-image: url("image.png");
		 
	}  */
	.p{
		 
          font-size: 10px;
          margin-left: 190px;
	}
	.pp{
		margin-left: 1000px;
		margin-top: 100px;


	}
	.b{
		background-color: rgb(0 0 0);
		margin-right: 20px;
		 padding-left: 30px;
		 padding-right: 30px;
		 padding-top: 10px;
		 padding-bottom: 10px;
		 


	}
	.nav{
		width: 100%;

		height: 80px;
		 display: flex;
		 background: linear-gradient(135deg, #71b7e6, #9b59b6);
	 position: static;

	}
	#n{
		       background: linear-gradient(135deg, #71b7e6, #9b59b6);

	}
	.con{
		margin-left: 100px;
	}
	.ri{
     margin-left: 100px;
     margin-top: 30px;
     font-size: 25px;
     color: white;
	 text-decoration: none;
	}
	.ff{
		display: flex;
		margin-left: 200px;
		margin-top: 100px;
	}
	.img{
             width: 370px;
             height: 370px;
	}
	.mi{
		margin-left:20px;
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
		margin-top: 100px;
		
	}
	.img90{
		width: 320px;
		height: 310px;
		margin-top: 50px;
		margin-left: 20px;
		margin-right: 30px;
		box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
		border-radius: 10PX;
	}
	 
</style>
<body>
<div>
	 <div id="n" class="nav">
	 	<div>
			 <a  href="home.jsp" style="text-decoration: none;" class="a"><P class="di">NilangeDairy</P></a>
	 		<!-- <img class="con" src="https://assets.countrydelight.in/assets/images/logo.png"> -->
	 	</div>
	 	<!-- <div class="ri">
	 		 <a class="a" href="index.jsp">Login </a>
	 	</div> -->
	 	<div class="ri">
			<a style="text-decoration: none;" class="a" href="dis.jsp">  CustomerList </a>
	 	</div>
	 	<!-- <div class="ri">
	 		 Stock
	 	</div> -->
	 	<div class="ri">
	 		  <a class="a" style="text-decoration: none;" href="product.jsp">  ProductDetails </a>
	 	</div>
         <div class="ri">
            <a class="a" style="text-decoration: none;" href="reportType.jsp">  ReportType </a>
      </div>

	  <div class="ri">
		<a class="a" style="text-decoration: none;" href="stock.jsp">  Stock </a>
  </div>
  <div class="ri">
	<a class="a" style="text-decoration: none;" href="stockdisplaydb.jsp">   DisplayStock </a>
</div>
	 		 	<div class="ri">
	 		 <a href="logout.jsp" style="text-decoration: none;" onclick="logout()"  class="a">Logout  </a>
	 	</div>
	 </div>

	 
	  
	 	 	 

 
</body>
</html>
<script>
	function logout() {
    
    alert("You Are Logging Out");
    
    }
</script>