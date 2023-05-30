<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<html>
<head>
    <title>User Data</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <h1>User Data</h1>

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
</body>
</html>
