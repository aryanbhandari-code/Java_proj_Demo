<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin | Manage Patients</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Color Palette */
        :root {
            --light-green: #ECF4D6;
            --aqua-green: #9AD0C2;
            --dark-teal: #2D9596;
            --deep-blue: #265073;
        }

        /* General Body Styling */
        body {
            background-color: var(--light-green);
            font-family: 'Lato', sans-serif;
            color: #333;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Main Container */
        .container-fullw {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            max-width: 1200px;
            width: 90%;
            margin: 20px auto;
        }

        /* Header and Title Styling */
        .mainTitle {
            color: var(--deep-blue);
            font-weight: 700;
            font-size: 1.8em;
            text-align: left;
            margin-bottom: 20px;
        }

        .over-title {
            color: var(--deep-blue);
            font-size: 1.3em;
            font-weight: bold;
            text-align: left;
            margin-bottom: 20px;
        }

        .text-bold {
            color: var(--dark-teal);
            font-weight: bold;
        }

        /* Table Styling */
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
        }

        .table th, .table td {
            padding: 15px;
            text-align: left;
            border: 1px solid var(--aqua-green);
            color: var(--deep-blue);
        }

        .table th {
            background-color: var(--aqua-green);
            font-weight: bold;
        }

        .table-hover tbody tr:hover {
            background-color: var(--light-green);
        }

        /* Link Styling */
        a {
            color: var(--dark-teal);
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: var(--deep-blue);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container-fullw {
                padding: 20px;
            }

            .mainTitle {
                font-size: 1.5em;
            }

            .table th, .table td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String userID = null;
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "hospital_database";
String userId = "root";
String password = "";

try {
    Class.forName(driverName);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<div class="container-fullw">
    <!-- Page Title -->
    <h1 class="mainTitle">Admin | Manage Patients</h1>
    <h5 class="over-title">Manage <span class="text-bold">Patients</span></h5>

    <!-- Patient Table -->
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Contact No</th>
                <th>Street</th>
                <th>Locality</th>
                <th>Aadhar No</th>
                <th>State</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                statement = connection.createStatement();
                String sql = "SELECT * FROM patients_info";
                resultSet = statement.executeQuery(sql);

                while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("name") %></td>
                <td><%=resultSet.getString("email") %></td>
                <td><%=resultSet.getString("contact_no") %></td>
                <td><%=resultSet.getString("street") %></td>
                <td><%=resultSet.getString("locality") %></td>
                <td><%=resultSet.getString("aadhar") %></td>
                <td><%=resultSet.getString("state") %></td>
                <td><%=resultSet.getString("country") %></td>
                <td><a href="delptnt.jsp?uname=<%=resultSet.getString("name") %>">Delete</a></td>
            </tr>
            <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            }
            %>
        </tbody>
    </table>
</div>
</body>
</html>