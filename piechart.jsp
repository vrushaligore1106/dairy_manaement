<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Milk Sales Pie Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Include Chart.js library -->
</head>
<body>
    <h1>Milk Sales Pie Chart</h1>

    <canvas id="salesChart" width="400" height="400"></canvas> <!-- Canvas element to render the chart -->
    <%@ page import="java.sql.*" %>
    <%
        // Import required Java classes
         

        try {
            // Establish a connection with the MySQL database
            String url = "jdbc:mysql://localhost:3306/projectdb";
            String username = "root";
            String password = "nilange@12345";
            Connection conn = DriverManager.getConnection(url, username, password);

            // Prepare the SQL query
            String query = "SELECT typee, qty FROM ctable";
            Statement stmt = conn.createStatement();

            // Execute the query and retrieve the data
            ResultSet rs = stmt.executeQuery(query);

            // Variables to store the total milk sold and data for the chart
            int totalMilkSold = 0;
            StringBuilder chartData = new StringBuilder();
            StringBuilder chartColors = new StringBuilder();

            // Iterate over the result set
            while (rs.next()) {
                String brand = rs.getString("typee");
                int milkSold = rs.getInt("qty");

                // Accumulate the total milk sold
                totalMilkSold += milkSold;

                // Append the data for the chart
                chartData.append(milkSold).append(",");

                // Generate a random color for each brand (you can modify this logic)
                String color = String.format("#%06x", (int) (Math.random() * 0xffffff));
                chartColors.append("'").append(color).append("',");

                // Display the brand and milk sold
                out.println("Brand: " + brand + ", Milk Sold: " + milkSold + "<br>");
            }

            // Close the database connections
            rs.close();
            stmt.close();
            conn.close();

            // Remove the trailing commas from the chart data and colors
            chartData.deleteCharAt(chartData.length() - 1);
            chartColors.deleteCharAt(chartColors.length() - 1);

            // Calculate the percentage of milk sold for each brand
            String[] milkSoldValues = chartData.toString().split(",");
            StringBuilder chartPercentages = new StringBuilder();
            for (String value : milkSoldValues) {
                int milkSold = Integer.parseInt(value);
                double percentage = (double) milkSold / totalMilkSold * 100;
                chartPercentages.append(percentage).append(",");
            }
            chartPercentages.deleteCharAt(chartPercentages.length() - 1);

            // Data for the chart
            String chartDataString = chartPercentages.toString();
            String chartColorsString = chartColors.toString();
    %>

    <script>
        // Data for the chart
        var data = {
            labels: ['cow', 'buffalo', 'full-cream'], // Replace with your brand names
            datasets: [{
                data: [<%= chartDataString %>],
                backgroundColor: [<%= chartColorsString %>]
            }]
        };

        // Chart configuration
        var config = {
            type: 'pie',
            data: data,
            options: {}
        };

        // Create the chart
        var salesChart = new Chart(document.getElementById('salesChart'), config);
    </script>
    <% 
        } catch (SQLException e) {
            out.println("An error occurred while fetching the data from the database: " + e.getMessage());
        }
    %>
</body>
</html>
