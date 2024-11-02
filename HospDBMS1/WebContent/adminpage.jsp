<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <title>Admin | Dashboard</title>
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
    <link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
    <link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">

    <!-- Inline CSS -->
    <style>
        /* Color Palette */
        :root {
            --background-color: #ECF4D6;
            --primary-color: #9AD0C2;
            --secondary-color: #2D9596;
            --accent-color: #265073;
            --text-color: #265073;
        }

        /* General body styling */
        body {
            font-family: 'Lato', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            text-align: center;
            background-image: url(https://www.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-9-full.jpg);
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        /* Container Styling */
        .container-fullw {
            background-color: var(--background-color);
            padding: 2em;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }

        /* Page Title */
        .mainTitle {
            color: var(--accent-color);
            font-weight: 600;
            font-size: 2em;
            margin: 1em 0;
        }

        /* Panels */
        .panel {
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            background-color: var(--primary-color);
            color: white;
            margin: 1em;
            transition: all 0.3s ease;
        }

        .panel:hover {
            transform: translateY(-5px);
            background-color: var(--secondary-color);
        }

        .panel-body {
            padding: 2em;
        }

        .fa-stack {
            color: var(--accent-color);
        }

        /* Title inside panel */
        .StepTitle {
            font-size: 1.5em;
            font-weight: 500;
            color: var(--accent-color);
            margin: 0.5em 0;
        }

        /* Links in panels */
        .links a {
            color: white;
            text-decoration: underline;
            font-weight: bold;
            transition: color 0.2s;
        }

        .links a:hover {
            color: var(--text-color);
        }
    </style>
</head>
<body>
    <div id="app">
        <div class="main-content">
            <div class="wrap-content container" id="container">
                <!-- Page Title -->
                <section id="page-title">
                    <div class="row">
                        <div class="col-sm-8">
                            <b><h1 class="mainTitle">Admin | Dashboard</h1></b>
                        </div>
                    </div>
                </section>
                
                <!-- Dashboard Panels -->
                <div class="container-fluid container-fullw bg-white">
                    <div class="row">
                        <!-- Manage Patients Panel -->
                        <div class="col-sm-4">
                            <div class="panel panel-white no-radius text-center">
                                <div class="panel-body">
                                    <span class="fa-stack fa-2x">
                                        <i class="fa fa-square fa-stack-2x text-primary"></i>
                                        <i class="fa fa-smile-o fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <h2 class="StepTitle">Manage Patients</h2>
                                    <p class="links cl-effect-1">
                                        <a href="mangptnts.jsp">Total patients: <%= pt %></a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-- Manage Doctors Panel -->
                        <div class="col-sm-4">
                            <div class="panel panel-white no-radius text-center">
                                <div class="panel-body">
                                    <span class="fa-stack fa-2x">
                                        <i class="fa fa-square fa-stack-2x text-primary"></i>
                                        <i class="fa fa-users fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <h2 class="StepTitle">Manage Doctors</h2>
                                    <p class="links cl-effect-1">
                                        <a href="mngdoc.jsp">Total Doctors: <%= dt %></a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-- Appointments Panel -->
                        <div class="col-sm-4">
                            <div class="panel panel-white no-radius text-center">
                                <div class="panel-body">
                                    <span class="fa-stack fa-2x">
                                        <i class="fa fa-square fa-stack-2x text-primary"></i>
                                        <i class="fa fa-terminal fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <h2 class="StepTitle">Appointments</h2>
                                    <p class="links cl-effect-1">
                                        <a href="apn-his.jsp?id=1">Total Appointments: <%= at %></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
