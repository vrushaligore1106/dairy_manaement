<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    

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
    font-size: 202px;
  }
</style>
    </style>
</head>
<body>
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
                <option value="cow">Half lt cow Milk</option>
                <option value="buffalo">Half lt buffalo Milk </option>
                <option value="full-cream">Half lt full-cream Milk </option>
           </select>
          <input type="number" id="lname" name="qty" placeholder="Your last name..">
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