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
    .con5 {

        width: 1000px;
        height: 400px;
        margin-top: 50px;

        margin-left: 250px;
        align-items: center;
        border: 1px solid black;
    }

    .img3 {
        display: flex;
        margin-top: 30px;
        margin-left: 40px;
    }

    .blackdiv {
        width: 10 30px;
        height: 50px;
        background: linear-gradient(135deg, #71b7e6, #9b59b6);

    }

    input {
        margin-top: 30px;
        margin-left: 10px;
        padding: 3px;

    }

    label {
        margin-left: 0px;
        font-weight: bold;
    }

    .ib {
        margin-left: 50px;
        font-weight: bold;
        padding: 6px;
        border: none;
        border-bottom: 2px solid black;

    }

    .ib2 {
        margin-left: 40px;
        font-weight: bold;
        padding: 6px;
        border: none;
        border-bottom: 2px solid black;
    }

    .milk {
        margin-left: 120px;
        font-size: 20px;
        font-weight: bold;


    }

    .itemadd {
        margin-left: 150px;
        margin-top: 10px;
        padding-left: 60px;
        padding-right: 60px;
        padding-top: 10px;
        font-size: 20px;
        background: linear-gradient(135deg, #71b7e6, #9b59b6);
        border-radius: 5px;
        color: white;
        border: 0px;
        padding-bottom: 8px;
    }

    .ibb {
        padding: 6px;
        border: none;
        border-bottom: 2px solid black;
    }

    .ad {
        width: 800px;
        height: 40px;
        padding-top: 1px;
        margin-top: 30px;

        padding-bottom: 30px;
        margin-bottom: 10px;
        background-color: white;
        margin-left: 350px;
        margin-bottom: 10px;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    }

    .adh2 {
        margin-left: 230px;
        font-size: 26px;
    }

    input[type=text],
    select {
        width: 400px;
        padding: 12px 20px;

        margin-top: 20px;
        margin-left: 4px;
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

    .addqty {
        margin-left: 300px;
    }

    form {
        margin-left: -100px;
    }
</style>

<body>
    <div>
        <div>
            <jsp:include page="Navbar.jsp" />
        </div>
    </div>
    <div class="add">
        <div class="ad">
            <h3 class="adh2">Add Milk Quantity And Price</h3>
        </div>
        <div class="con5">
            <div class="blackdiv">

            </div>
            <div class="img3">
                <img width="260px" height="220px"
                    src="https://t3.ftcdn.net/jpg/03/83/48/14/360_F_383481436_JPxLNHJcWt2uX0AKp629koOiQxWwWQWf.jpg"
                    alt=""> -->

                <form action="addCustomerdb.jsp" method="post">
                    <div class="addqty">
                        <label for="add">

                            <input type="text" class="ib" name="name" id="" placeholder="Enter Your Name"><br>
                        </label>
                        <label for="add">

                            <!-- <input class="ibbb" type="text"  name="typee" id=""><br> -->
                            <select name="typee" class="ibbb" class="ib">
                                <option value="cow" class="ib">Select Product</option>
                                <option value="cow">cow</option>
                                <option value="buffalo">buffalo</option>
                                <option value="full-cream">full-cream</option>
                                <option value="cowHalf">Half lt cow Milk</option>
                                <option value="buffaloHalf">Half lt buffalo Milk </option>
                                <option value="full-creamHalf">Half lt full-cream Milk </option>
                            </select>

                        </label>

                        <label for="add">

                            <input class="ib" type="number" name="qty" id="" placeholder="Enter Quantity"><br>
                        </label>


                        <button type="submit" class="itemadd">Add </button>
                    </div>
                </form>
                <div>

                </div>
            </div>

        </div>
    </div>
</body>

</html>
<script>

    function myFunction() {
        alert("Item Added Successfully")
    }
    function logout() {

        alert("You Are Logged Out");

    }

</script>