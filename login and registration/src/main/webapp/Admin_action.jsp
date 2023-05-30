<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .tab-content {
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
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
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#userDetails">User Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#products">Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#analyst">Analyst</a>
            </li>
        </ul>

        <div class="tab-content">
            <div id="userDetails" class="tab-pane fade show active">
                <!-- User Details Content -->
                <h3>User Details</h3>
                <!-- Add your user details content here -->
                 <table>
        <tr>
            <th>Full Name</th>
            <th>Username</th>
            <th>Password</th>
            <th>Email</th>
            <th>Type</th>
            <th>Action</th>
        </tr>
         <% 
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/lr", "root", "");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users");
            
            while (resultSet.next()) {
                String fullName = resultSet.getString("fullname");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String type = resultSet.getString("type");
        %>
        <tr>
            <td><%= fullName %></td>
            <td><%= username %></td>
            <td><%= password %></td>
            <td><%= email %></td>
            <td>
                <select>
                    <option value="user" <%= type.equals("user") ? "selected" : "" %>>User</option>
                    <option value="admin" <%= type.equals("admin") ? "selected" : "" %>>Analyst</option>
                </select>
            </td>
            <td>
               <input type="submit" name="Submit">
  
            </td>
        </tr>
        
        <% 
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </table>
            </div>

            <div id="products" class="tab-pane fade">
                <!-- Products Content -->
                <h3>Product Viewing Page</h3>
                <!-- Add your products content here -->
        <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="product-card">
                    <img src="product1.jpg" alt="Product 1">
                    <h4>Product 1</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                     <button type="submit" class="btn btn-primary">Insert</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                    <br><br>
                    <button type="submit" class="btn btn-primary">Report</button>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="product-card">
                    <img src="product2.jpg" alt="Product 2">
                    <h4>Product 2</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                     <button type="submit" class="btn btn-primary">Insert</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                    <br><br>
                    <button type="submit" class="btn btn-primary">Report</button>
                </div>
            </div>
            <!-- Add more product cards here -->
             <div class="col-sm-4">
                <div class="product-card">
                    <img src="product2.jpg" alt="Product 2">
                    <h4>Product 3</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                     <button type="submit" class="btn btn-primary">Insert</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                    <br><br>
                    <button type="submit" class="btn btn-primary">Report</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $(".nav-link").click(function(){
                $(this).tab('show');
            });
        });
    </script>
</body>
</html>
