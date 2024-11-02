<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User | Update Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Inline CSS for styling with specified color palette -->
    <style>
        /* Color Palette */
        :root {
            --bg-color: #ECF4D6;
            --primary-color: #9AD0C2;
            --secondary-color: #2D9596;
            --accent-color: #265073;
            --text-color: #265073;
        }

        /* General page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Form container styling */
        .new {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            text-align: center;
        }

        /* Headings */
        h1 {
            color: var(--accent-color);
            font-size: 2em;
        }

        h3 {
            color: var(--secondary-color);
            font-size: 1.5em;
            margin-top: 10px;
        }

        /* Form field styling */
        .ui.form .field label {
            color: var(--accent-color);
            font-weight: bold;
            text-align: left;
            display: block;
            margin-bottom: 5px;
        }

        .ui.form input, .ui.form select {
            width: 100%;
            padding: 10px;
            border: 1px solid var(--primary-color);
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 1em;
        }

        /* Button styling */
        .ui.button {
            background-color: var(--primary-color);
            color: #ffffff;
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .ui.button:hover {
            background-color: var(--secondary-color);
        }

        /* Centered container for the form */
        .center {
            text-align: center;
        }
    </style>

    <!-- Semantic UI CSS (external link for additional UI components) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.css">
</head>
<body>
    <%@ page import="java.sql.*" %>
    <%
        String Name = (String) session.getAttribute("Name");
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_database", "root", "");
            statement = connection.createStatement();
            String sql = "SELECT * FROM patients_info WHERE name='" + Name + "'";
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
    %>

    <!-- Update Profile Form -->
    <div class="new">
        <form class="ui form" method="post" action="successupdate.jsp?Name=<%=Name%>">
            <h1>User | Update Profile</h1>
            <h3 class="ui dividing header">Fill in Information</h3>

            <div class="field">
                <label>Name</label>
                <input type="text" name="name" placeholder="Enter your name" value="<%=resultSet.getString("name") %>">
            </div>
            
            <div class="field">
                <label>Password</label>
                <input type="text" name="pwd" placeholder="Enter a password" value="<%=resultSet.getString("password") %>">
            </div>

            <div class="field">
                <label>Contact Number</label>
                <input type="number" name="pno" placeholder="Phone number" value="<%=resultSet.getString("contact_no") %>">
            </div>

            <div class="field">
                <label>Email ID</label>
                <input type="text" name="pemail" placeholder="Email ID" value="<%=resultSet.getString("email") %>">
            </div>

            <div class="field">
                <label>Street Address</label>
                <input type="text" name="street" placeholder="Street Address" value="<%=resultSet.getString("street") %>">
            </div>

            <div class="field">
                <label>Locality/Area</label>
                <input type="text" name="area" placeholder="Area" value="<%=resultSet.getString("locality") %>">
            </div>

            <div class="field">
                <label>Aadhar Number</label>
                <input type="number" name="aadhar" placeholder="Aadhar number" value="<%=resultSet.getString("aadhar") %>">
            </div>

            <div class="field">
                <label>State</label>
                <select class="ui fluid dropdown" name="state">
                    <option value="<%=resultSet.getString("state") %>">State</option>
                    <!-- Add state options here -->
                </select>
            </div>

            <div class="field">
                <label>Country</label>
                <select class="ui fluid dropdown" name="country">
                    <option value="<%=resultSet.getString("country") %>">Country</option>
                    <!-- Add country options here -->
                </select>
            </div>

            <div class="center">
                <button type="submit" class="ui green button">Submit</button>
            </div>
        </form>
    </div>
    
    <% 
            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
