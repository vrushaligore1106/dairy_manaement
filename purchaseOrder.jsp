<!DOCTYPE html>
<html>
<head>
    <title>Add Supplier</title>
</head>
<body>
    <h1>Add Supplier</h1>
    <form action="purchaseOrderdb.jsp" method="post">
        <label for="name">Supplier Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" cols="50" required></textarea><br><br>

        <label for="name">contact:</label>
        <input type="text" id="name" name="contact" required><br><br>
         
        
        <h2>Add Products</h2>
        <div id="products">
            <div class="product">
                <label for="product_name">Product Name:</label>
                <input type="text" name="product_name[]" required><br>
                
                <label for="quantity">Quantity:</label>
                <input type="number" name="quantity[]" min="1" required><br>
                
                <label for="price">Price:</label>
                <input type="number" name="price[]" min="0" step="0.01" required><br><br>
            </div>
        </div>
        
        <input type="button" value="Add Product" onclick="addProduct()"><br><br>
        
        <input type="submit" value="Add Supplier">
    </form>
    
    <script>
        function addProduct() {
            var productDiv = document.createElement('div');
            productDiv.className = 'product';
            
            productDiv.innerHTML = `
                <label for="product_name">Product Name:</label>
                <input type="text" name="product_name[]" required><br>
                
                <label for="quantity">Quantity:</label>
                <input type="number" name="quantity[]" min="1" required><br>
                
                <label for="price">Price:</label>
                <input type="number" name="price[]" min="0" step="0.01" required><br><br>
            `;
            
            document.getElementById('products').appendChild(productDiv);
        }
    </script>
</body>
</html>
