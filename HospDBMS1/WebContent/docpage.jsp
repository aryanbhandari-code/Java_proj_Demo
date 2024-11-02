<!DOCTYPE html>
<html lang="en">
<head>
    <title>Doctor | Dashboard</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
    <link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
    <link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
    <style>
        body {
            background-image: url(https://www.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-9-full.jpg);
            background-size: cover;
            color: #265073;
            font-family: 'Lato', sans-serif;
        }
        
        .mainTitle {
            text-align: center;
            color: #2D9596;
            margin: 20px 0;
        }
        
        .panel {
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .panel-body {
            background-color: #ECF4D6;
            text-align: center;
            padding: 20px;
        }
        
        .StepTitle {
            color: #265073;
            margin-top: 15px;
            font-size: 1.5em;
        }
        
        .cl-effect-1 a {
            color: #2D9596;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .cl-effect-1 a:hover {
            color: #9AD0C2;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div id="app">        
        <div class="app-content">
            <div class="main-content">
                <div class="wrap-content container" id="container">
                    <!-- start: PAGE TITLE -->
                    <section id="page-title">
                        <div class="row">
                            <div class="col-sm-8">
                                <h1 class="mainTitle">Doctor | Dashboard</h1>
                            </div>
                        </div>
                    </section>
                    <!-- end: PAGE TITLE -->
                    <!-- start: BASIC EXAMPLE -->
                    <div class="container-fluid container-fullw bg-white">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="panel panel-white no-radius text-center">
                                    <div class="panel-body">
                                        <span class="fa-stack fa-2x"> 
                                            <i class="fa fa-square fa-stack-2x text-primary"></i> 
                                            <i class="fa fa-paperclip fa-stack-1x fa-inverse"></i> 
                                        </span>
                                        <h2 class="StepTitle">My Appointments</h2>
                                        <p class="cl-effect-1">
                                            <a href="apn-his.jsp?id=2">View Appointment History</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end: BASIC EXAMPLE -->
                </div>
            </div>
        </div>
    </div>
</body>
</html>
