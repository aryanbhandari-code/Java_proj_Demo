<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Patient Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.css">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
    <link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
    <link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/plugins.css">
    <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />

    <style>
        body {
            background-image: url('https://www.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-9-full.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            color: #265073; /* Dark Blue */
        }
        .logo h2 {
            color: #265073; /* Dark Blue */
            margin-top: 30px;
            text-align: center;
        }
        .ui.container.login {
            margin-top: 50px;
            text-align: center; /* Centering the container */
        }
        .ui.red.card {
            background-color: #9AD0C2; /* Light Teal */
            border: 2px solid #2D9596; /* Teal */
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin: 0 auto; /* Center the card */
            max-width: 400px; /* Limit width for better appearance */
        }
        .ui.header {
            color: #265073; /* Dark Blue */
            text-align: center; /* Center the header */
        }
        .field {
            margin-bottom: 15px;
            text-align: left; /* Aligning labels to the left */
        }
        input[type="text"], input[type="password"] {
            border: 1px solid #265073; /* Dark Blue */
            border-radius: 5px;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
        }
        button.btn-primary {
            background-color: #265073; /* Dark Blue */
            border: none;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%; /* Make button full width */
        }
        button.btn-primary:hover {
            background-color: #2D9596; /* Teal on hover */
        }
        .header p {
            color: #2D9596; /* Teal */
            text-align: center;
        }
        .header a {
            color: #265073; /* Dark Blue */
            font-weight: bold;
        }
        .header b {
            color: red;
            text-align: center;
            display: block;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Patient login page -->
    <center>
        <div class="logo margin-top-30">
            <h2>HospDBMS | Patient Login</h2>
        </div>
    </center>

    <div class="ui container login">
        <div class="ui red centered card">
            <form class="ui form log" method="post" action="/HospDBMS/Plogin">
                <div class="field">
                    <div class="sixteen wide field">
                        <label class="header">User Name</label>
                        <input type="text" name="uname" placeholder="Username" required>
                    </div>
                </div>
                <div class="field">
                    <div class="sixteen wide field">
                        <label class="ui header">Password</label>
                        <input type="password" name="pwd" placeholder="Password" required>
                    </div>
                </div>
                <div class="field">
                    <p class="header">Don't have an account?
                        <a href="newuser.html" id="field1">Create account</a>
                    </p>
                    <b><font color="red">${error}</font></b>
                </div>
                <button type="submit" class="btn btn-primary pull-right" name="submit">
                    Login <i class="fa fa-arrow-circle-right"></i>
                </button>
            </form>
        </div>
    </div>     

</body>
</html>