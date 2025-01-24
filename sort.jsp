<!DOCTYPE html>
<html>
<style>
    .div {
        width: 800px;
        height: 40px;
        margin-top: 20px;
        padding-top: 1px;

        padding-bottom: 30px;
        margin-bottom: 10px;
        background-color: white;
        margin-left: 360px;
        margin-bottom: 10px;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;

    }

    .title {
        margin-left: 250px;
    }

    button {
        margin-left: 20px;
        font-size: 25px;
        padding-top: 0.009px;
        border-radius: 10px;
        padding-bottom: 0.009px;
        background: linear-gradient(135deg, #71b7e6, #9b59b6);
        text-decoration: none;
        text-align: center;
        color: white;
    }
</style>

<head>
    <title>Data Sorting Example</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        var sortOrder = 'asc'; // Default sorting order

        function sortData(order) {
            sortOrder = order;
            fetchData(); // Call function to fetch data again with the new sorting order
        }

        function fetchData() {
            // Make an AJAX call to your server-side script to fetch data from the database
            // Pass the sortOrder as a parameter to specify the sorting order
            // Process the response and update the HTML content with the sorted data
            $.ajax({
                url: 'sortdb.jsp',
                type: 'POST',
                data: { sort_order: sortOrder },
                success: function (response) {

                    // Update the HTML content with the sorted data
                    document.getElementById('dataContainer').innerHTML = response;
                }
            });
        }
    </script>
</head>

<body>
    <div>
        <jsp:include page="Navbar.jsp" />
    </div>
    <div class="div">
        <h1 class="title">Data Sorting Example</h1>
    </div>
    <button onclick="sortData('asc')">Sort Ascending</button>
    <button onclick="sortData('desc')">Sort Descending</button>

    <div id="dataContainer">

        <%-- Display the sorted data here --%>
    </div>
    <script>
        // Initial data fetch
        fetchData();
    </script>
</body>

</html>