<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .button-container {
            width: 1200px;


            display: flex;
            border: 1px solid black;
            margin-left: 130px;
            margin-top: 100px;



        }

        .button-container .button {
            margin-right: 10px;
            /* Add any other styles you want for the buttons */
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            padding: 20px 60px;
            border-radius: 0%;
            border: 0ch;
            font-size: 20px;
            color: white;
        }

        .btndiv {
            width: 400px;

        }

        .h2btn {
            width: 340px;
            height: 40px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;


        }
    </style>
</head>

<body>
    <div>
        <jsp:include page="Navbar.jsp" />
    </div>

    <div class="button-container">
        <div class="btndiv">
            <h1 class="h2btn">See Report By Type</h4>
                <a href="filterdb.jsp"> <button class="button">Click Here</button></a>
        </div>
        <div class="btndiv">
            <h1 class="h2btn">See Report By Quantity</h4>
                <a href="sort.jsp"> <button class="button">Click Here</button></a>
        </div>
        <div class="btndiv">
            <h1 class="h2btn">See Report By Type</h4>
                <button class="button">Click Here</button>
        </div>
    </div>


    <div>
<!-- 
        <h1>Total Column Count: <%= request.getAttribute("columnSum") %> -->
        </h1>


    </div>

</body>

</html>