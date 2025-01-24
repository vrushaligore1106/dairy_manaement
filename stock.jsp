<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="home.css">
</head>
<style>
  input[type=text],
  select {
    width: 400px;
    padding: 12px 20px;

    margin-top: 70px;
    margin-left: 20px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 22px;
    box-sizing: border-box;
  }

  .list3{
    width: 800px;
    height: 40px;
    padding-top: 1px;
        margin-top: 50px;
    padding-bottom: 30px;
    margin-bottom: 10px;
     background-color: white;
     margin-left: 330px;
     margin-bottom: 10px;
     box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;

  }

  input[type=number],
  select {
    width: 400px;
    padding: 12px 20px;
    margin: 70px 50px 40px ;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 22px;
  }

  /* Style the submit button */
  input[type=submit] {
    width: 400px;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    
    color: white;
    padding: 14px 20px;
    margin: 8px 50px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 22px;
  }

  /* Add a background color to the submit button on mouse-over */
  input[type=submit]:hover {
    background-color: #45a049;
  }

   

  /* Add a background color to the submit button on mouse-over */
  input[type=submit]:hover {
    background-color: #45a049;

  }

  .stock {
    width: 1153px;
    height: 300px;
    background-color: white;
    margin-top: 100px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    margin-left: 150px;
  }

  label {
    font-size: 22px;
  }
  .addh2{
    margin-left: 260px;
    font-size: 28px;
  }
</style>

<body>
  <div>
    <div>
      <jsp:include page="/Navbar.jsp" />
    </div>
  </div>
  <div class="list3"><h2  class="addh2" >Add Product To Stock   </h2></div>
  <div class="stock">
  
    <form action="stockdb.jsp" method="post">
      <!-- <label for="fname">Type Of The Stock</label>
        <input type="text" id="fname" name="typee" placeholder="Your name..">
      
        <label for="lname">Quantity Of Stock</label>
        <input type="number" id="lname" name="qty" placeholder="Your last name.."> -->
      <select name="typee" class="ibbb">
        <option value="cow">cow</option>
        <option value="buffalo">buffalo</option>
        <option value="full-cream">full-cream</option>
        <option value="cowHalf">Half lt cow Milk</option>
        <option value="buffaloHalf">Half lt buffalo Milk </option>
        <option value="full-creamHalf">Half lt full-cream Milk </option>
      </select>
      <input type="number" id="lname" name="qty" placeholder="Your last stock to add....">
      <!-- <label for="country">Country</label>
        <select id="country" name="country">
          <option value="australia">Australia</option>
          <option value="canada">Canada</option>
          <option value="usa">USA</option>
        </select> -->

      <input type="submit" value="Submit">
    </form>
  </div>

</body>

</html>