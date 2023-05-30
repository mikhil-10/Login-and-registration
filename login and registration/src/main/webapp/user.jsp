<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Viewing Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 50px;
        }
        .product-card {
            width: 300px;
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 5px;
        }
        .product-card h4 {
            margin-top: 10px;
            margin-bottom: 5px;
        }
        .product-card p {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Product Viewing Page</h2>
        <div class="row">
            <div class="col-sm-4">
                <div class="product-card">
                    <img src="product1.jpg" alt="Product 1">
                    <h4>Product 1</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="product-card">
                    <img src="product2.jpg" alt="Product 2">
                    <h4>Product 2</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
            </div>
            <!-- Add more product cards here -->
             <div class="col-sm-4">
                <div class="product-card">
                    <img src="product2.jpg" alt="Product 2">
                    <h4>Product 3</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <button type="submit" class="btn btn-primary">Update</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                    <br><br>
                    <button type="submit" class="btn btn-primary">Report</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
