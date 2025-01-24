<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        input[type=text],
  select {
    width: 400px;
    padding: 12px 20px;

    margin-top: 100px;
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

   
  /* Add a background color to the submit button on mouse-over */
  input[type=submit]:hover {
    background-color: #45a049;

  }

  

  label {
    font-size: 22px;
  }
    </style>
</head>
<body>
    <form action="filterdb.jsp" method="get">
        <input type="text" name="typee" placeholder="Enter filter value">
        <button type="submit">Filter</button>
     </form>
</body>
</html>


 
 