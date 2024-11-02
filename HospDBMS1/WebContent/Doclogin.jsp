<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Patient Login</title>

    <!-- External CSS Libraries -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.css">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">

    <!-- Inline CSS for Styling -->
    <style>
        /* Color Palette */
        :root {
            --bg-color: #ECF4D6;
            --accent-color: #9AD0C2;
            --primary-color: #2D9596;
            --secondary-color: #265073;
            --text-color: #265073;
        }

        /* Body */
        body {
            background-color: var(--bg-color);
            font-family: Arial, sans-serif;
            text-align: center;
            background-image: url(https://www.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-9-full.jpg);
            background-size: cover;
            color: var(--text-color);
            margin: 0;
            padding: 0;
        }

        /* Logo */
        .logo h2 {
            color: var(--primary-color);
            font-size: 2em;
            font-weight: bold;
            margin-top: 1.5em;
        }

        /* Container for Login Card */
        .ui.container.login {
            margin-top: 2em;
            max-width: 400px;
        }

        /* Login Card */
        .ui.card {
            width: 100%;
            padding: 2em;
            background-color: var(--bg-color);
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }

        /* Form Labels */
        .ui.form label.header {
            color: var(--secondary-color);
            font-weight: bold;
            margin-bottom: 0.5em;
            text-align: left;
        }

        /* Input Fields */
        .ui.form input[type="text"],
        .ui.form input[type="password"] {
            border-radius: 5px;
            border: 1px solid var(--accent-color);
            padding: 0.8em;
            width: 100%;
            margin-bottom: 1em;
            font-size: 1em;
            box-sizing: border-box;
        }

        /* Link and Error Message */
        .field p.header {
            font-size: 0.9em;
            color: var(--text-color);
        }

        .field p.header a {
            color: var(--primary-color);
            text-decoration: underline;
        }

        .field b font {
            color: red;
            font-weight: bold;
        }

        /* Login Button */
        .btn-primary {
            background-color: var(--primary-color);
            border: none;
            color: #fff;
            padding: 0.8em 1.5em;
            font-size: 1em;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .btn-primary:hover {
            background-color: var(--secondary-color);
        }

        .btn-primary i {
            margin-left: 0.5em;
        }
    </style>
</head>

<body>
    <div class="logo">
        <h2>HospDBMS | Doc Login</h2>
    </div>

    <div class="ui container login">
        <div class="ui centered card">
            <form class="ui form" method="post" action="/HospDBMS/Doclogin">
                <div class="field">
                    <label class="header">User Name</label>
                    <input type="text" name="uname" placeholder="username">
                </div>
                <div class="field">
                    <label class="header">Password</label>
                    <input type="password" name="pwd" placeholder="password">
                </div>
                <div class="field">
                    <p class="header">Don't have an account? <a href="newuser.html" id="field1">Create account</a></p>
                    <b><font color="red">${error}</font></b>
                </div>
                <button type="submit" class="btn btn-primary" name="submit">
                    Login <i class="fa fa-arrow-circle-right"></i>
                </button>
            </form>
        </div>
    </div>
</body>
</html>
