
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">

  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <link rel="stylesheet" type="text/css" href="register.css">
   
<body>
  <div class="container">
    <div class="title">Registration</div>
    <div class="content">
      <form action="registerdb.jsp" method="post">
        <div class="user-details">
          
          <div class="input-box">
            <span class="details">FullName</span>
            <input type="text" name="fname" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Lastname</span>
            <input type="text"  name="lname" placeholder="Enter your last name" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" name="email" placeholder="Enter your email" required>
          </div>
           
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="pass" placeholder="Enter your password" required>
          </div>
           
        </div>
        
        <div class="button">
          <input type="submit" value="Register"  >
        </div>
      </form>
    </div>
  </div>

</body>
</html>
 