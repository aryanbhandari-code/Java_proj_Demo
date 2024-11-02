<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User | Book Appointment</title>
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
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/plugins.css">
    <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />

    <style>
        body {
            background-color: #ECF4D6; /* Light Background */
            font-family: 'Lato', sans-serif;
            color: #265073; /* Dark Blue Text */
            margin: 0;
            padding: 20px;
        }
        h1.mainTitle {
            text-align: center;
            color: #2D9596; /* Teal */
            margin-bottom: 20px;
        }
        .breadcrumb {
            text-align: center;
            margin-bottom: 20px;
        }
        .container-fullw {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .panel {
            margin-bottom: 30px;
        }
        .panel-title {
            font-size: 20px;
            color: #2D9596; /* Teal */
            text-align: center;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control {
            border: 1px solid #9AD0C2; /* Light Teal */
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #265073; /* Dark Blue */
            border-color: #265073;
            color: white;
        }
        .btn-primary:hover {
            background-color: #2D9596; /* Teal on hover */
            border-color: #2D9596;
        }
        label {
            text-align: left;
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
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
                            <li><span>User</span></li>
                            <li class="active"><span>Book Appointment</span></li>
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
                                                    <select name="dspec" class="form-control" required>
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
                                                    <select name="dname" class="form-control" required>
                                                        <option value="">Select Doctor</option>
                                                        <option value="Doc1">Doc1</option>
                                                        <option value="Doc2">Doc2</option>
                                                        <option value="Doc3">Doc3</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="AppointmentDate">Date</label>
                                                    <input class="form-control datepicker" name="date" required data-date-format="yyyy-mm-dd">
                                                    <b>Format: YYYY-MM-DD</b>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Appointmenttime">Time</label>
                                                    <input class="form-control" name="time" id="timepicker1" required>
                                                    <b>Format: HH:MM:SS in 24hr format</b>
                                                </div>
                                                <button type="submit" name="submit" class="btn btn-o btn-primary">Submit</button>
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