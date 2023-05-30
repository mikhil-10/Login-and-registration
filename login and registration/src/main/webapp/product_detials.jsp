<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product Details</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f5f5f5;
    }
  </style>
</head>
<body>

  <!-- Product Details -->
  <div class="container mt-5">
    <h2>Product Details</h2>
    <form action="succes.jsp">
      <div class="form-group">
        <label for="productName">Product Name</label>
        <input type="text" class="form-control" id="productName" placeholder="Enter product name">
      </div>
      <div class="form-group">
        <label for="functionality">Functionality</label>
        <textarea class="form-control" id="functionality" rows="3" placeholder="Enter functionality details"></textarea>
      </div>
      <div class="form-group">
        <label for="performance">Performance</label>
        <textarea class="form-control" id="performance" rows="3" placeholder="Enter performance details"></textarea>
      </div>
      <div class="form-group">
        <label for="usability">Usability</label>
        <textarea class="form-control" id="usability" rows="3" placeholder="Enter usability details"></textarea>
      </div>
      <div class="form-group">
        <label for="cost">Cost</label>
        <input type="text" class="form-control" id="cost" placeholder="Enter cost">
      </div>
      <div class="form-group">
        <label for="value">Value</label>
        <input type="text" class="form-control" id="value" placeholder="Enter value">
      </div>
      <div class="form-group">
        <label for="environmentalImpact">Environmental Impact</label>
        <textarea class="form-control" id="environmentalImpact" rows="3" placeholder="Enter environmental impact details"></textarea>
      </div>
      <div class="form-group">
        <label for="customerFeedback">Customer Feedback</label>
        <textarea class="form-control" id="customerFeedback" rows="3" placeholder="Enter customer feedback"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
