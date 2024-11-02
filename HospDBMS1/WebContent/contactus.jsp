<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User | Book Appointment</title>
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
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
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/plugins.css">
    <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
    <style>
        /* General Styles */
        body {
            font-family: 'Lato', sans-serif;
            background-image: url('https://www.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-9-full.jpg');
            background-size: cover;
            color: #265073; /* Dark Blue for text */
            margin: 0;
            padding: 0;
        }

        .main-content {
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white */
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h1.mainTitle {
            text-align: center;
            color: #2D9596; /* Teal */
        }

        .breadcrumb {
            text-align: center;
            background: none;
            padding: 0;
            margin-bottom: 20px;
        }

        .breadcrumb li {
            display: inline;
            margin: 0 10px;
        }

        .breadcrumb li a {
            color: #265073; /* Dark Blue */
            text-decoration: none;
        }

        .breadcrumb li.active span {
            color: #9AD0C2; /* Light Teal */
        }

        .panel {
            border: none;
            border-radius: 10px;
        }

        .panel-heading {
            background-color: #2D9596; /* Teal */
            color: white;
            text-align: center;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .panel-title {
            font-size: 24px;
            margin: 0;
        }

        .panel-body {
            padding: 20px;
        }

        .form-group label {
            color: #265073; /* Dark Blue */
            font-weight: bold;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #9AD0C2; /* Light Teal */
            padding: 10px;
        }

        .btn-primary {
            background-color: #2D9596; /* Teal */
            border-color: #2D9596; /* Teal */
            color: white;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #9AD0C2; /* Light Teal */
            border-color: #9AD0C2; /* Light Teal */
        }
    </style>
</head>
<body>
    <div id="app">		
        <div class="main-content">
            <div class="wrap-content container" id="container">
                <section id="page-title">
                    <div class="row">
                        <div class="col-sm-8">
                            <h1 class="mainTitle">User | Book Appointment</h1>
                        </div>
                        <ol class="breadcrumb">
                            <li>
                                <span>User</span>
                            </li>
                            <li class="active">
                                <span>Book Appointment</span>
                            </li>
                        </ol>
                    </div>
                </section>

                <div class="container-fluid container-fullw bg-white">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row margin-top-30">
                                <div class="col-lg-8 col-md-12">
                                    <div class="panel panel-white">
                                        <div class="panel-heading">
                                            <h5 class="panel-title">Book Appointment</h5>
                                        </div>
                                        <div class="panel-body">
                                            <form method="post" action="successbapn.jsp?pname=Ajax">
                                                <div class="form-group">
                                                    <label for="DoctorSpecialization">Doctor Specialization</label>
                                                    <select name="dspec" class="form-control" required="required">
                                                        <option value="">Select Specialization</option>
                                                        <option value="Brain surgery">Brain surgery</option>
                                                        <option value="Heart surgery">Heart surgery</option>
                                                        <option value="Plastic surgery">Plastic surgery</option>
                                                        <option value="Cancer treatment">Cancer treatment</option>
                                                        <option value="Basic treatment">Basic treatment</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label for="doctor">Doctors</label>
                                                    <select name="dname" class="form-control" required="required">
                                                        <option value="">Select Doctor</option>
                                                        <option value="Doc1">Doc1</option>
                                                        <option value="Doc2">Doc2</option>
                                                        <option value="Doc3">Doc3</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label for="AppointmentDate">Date</label>
                                                    <input class="form-control datepicker" name="date" required="required" data-date-format="yyyy-mm-dd">
                                                    <b>Format: YYYY-MM-DD</b>
                                                </div>

                                                <div class="form-group">
                                                    <label for="Appointmenttime">Time</label>
                                                    <input class="form-control" name="time" id="timepicker1" required="required">
                                                    <b>Format: HH:MM:SS in 24hr format</b>
                                                </div>														

                                                <button type="submit" name="submit" class="btn btn-o btn-primary">
                                                    Submit
                                                </button>
                                            </form>
                                        </div>
                                    </div>
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