<!DOCTYPE html>
<html lang="en">
<head>
    <title>User | Dashboard</title>
    <meta charset="utf-8" />
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

        /* Background Styling */
        body {
            background-color: var(--light-green);
            font-family: 'Lato', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        /* Main Container */
        .container-fullw {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            max-width: 900px;
            width: 100%;
            margin: 20px;
        }

        /* Panel Styling */
        .panel {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: var(--aqua-green);
            text-align: center;
            padding: 20px;
            color: var(--deep-blue);
            margin-bottom: 20px;
            transition: transform 0.3s ease;
        }

        .panel:hover {
            transform: translateY(-5px);
        }

        .fa-stack .fa-square {
            color: var(--dark-teal);
        }

        /* Titles */
        .mainTitle {
            color: var(--deep-blue);
            font-weight: 700;
            font-size: 2.2em;
            text-align: center;
            margin-bottom: 30px;
        }

        .StepTitle {
            color: var(--deep-blue);
            font-size: 1.6em;
            margin-top: 15px;
        }

        /* Links */
        .cl-effect-1 a, .links a {
            color: var(--deep-blue);
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .cl-effect-1 a:hover, .links a:hover {
            color: var(--dark-teal);
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .container-fullw {
                padding: 20px;
            }

            .panel {
                padding: 15px;
            }

            .mainTitle {
                font-size: 1.8em;
            }

            .StepTitle {
                font-size: 1.4em;
            }
        }
    </style>
</head>
<body>
    <div class="container-fullw">
        <h1 class="mainTitle">User | Dashboard</h1>

        <!-- Profile Panel -->
        <div class="panel">
            <span class="fa-stack fa-2x">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-user fa-stack-1x fa-inverse"></i>
            </span>
            <h2 class="StepTitle">My Profile</h2>
            <p class="cl-effect-1">
                <a href="updateprofile.jsp">Update Profile</a>
            </p>
        </div>

        <!-- Appointments Panel -->
        <div class="panel">
            <span class="fa-stack fa-2x">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-calendar fa-stack-1x fa-inverse"></i>
            </span>
            <h2 class="StepTitle">My Appointments</h2>
            <p class="cl-effect-1">
                <a href="apn-his.jsp?id=99">View Appointment History</a>
            </p>
        </div>

        <!-- Book Appointment Panel -->
        <div class="panel">
            <span class="fa-stack fa-2x">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-book fa-stack-1x fa-inverse"></i>
            </span>
            <h2 class="StepTitle">Book My Appointment</h2>
            <p class="links cl-effect-1">
                <a href="bookapn.jsp">Book Appointment</a>
            </p>
        </div>
    </div>
</body>
</html>