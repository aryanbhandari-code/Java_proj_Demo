<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Management System</title>
    <link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <style>
        /* Color Palette */
        :root {
            --light-green: #ECF4D6;
            --teal: #9AD0C2;
            --dark-teal: #2D9596;
            --dark-blue: #265073;
            --footer-color: #47BB8F;
        }

        body {
            font-family: 'Ropa Sans', sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--light-green);
        }
        .ui.container.first {
            padding: 20px;
        }
        .header {
            color: var(--dark-blue);
            text-align: center;
            margin: 20px 0;
        }
        .image-slider {
            margin: 20px 0;
        }
        .ui.horizontal.segments {
            margin-top: 20px;
        }
        .ui.teal.inverted.segment {
            background-color: var(--dark-teal);
        }
        .ui.blue.button {
            background-color: var(--dark-blue);
            color: white;
        }
        .ui.blue.button:hover {
            background-color: var(--teal);
        }
        .Box-body {
            background-color: white;
            border-radius: 10px;
            border: 1px solid black;
            padding: 20px;
            margin-top: 20px;
        }
        footer {
            position: relative;
            height: 90px;
            width: 100%;
            background-color: var(--footer-color);
            color: #fff;
            text-align: center;
            line-height: 60px;
        }
        .copyright {
            margin: 0;
        }
        /* Additional styles for better text alignment */
        h1, p {
            text-align: left;
            margin: 0 0 10px;
        }
        .admin, .doctor, .user {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="ui container first">
        <div class="ui center aligned teal inverted segment">
            <h1 class="header" id="nam">Hospital DBMS</h1>
        </div>
        <div class="clear"></div>
        <!-- Start Image Slider -->
        <div class="image-slider">
            <ul class="rslides" id="slider1">
                <li><img src="images/slider-image1.jpg" alt="Slider Image 1"></li>
                <li><img src="images/slider-image2.jpg" alt="Slider Image 2"></li>
                <li><img src="http://www.pffamilymedicine.com/site_media/media/bgslider/images/thumbs/1200x450/Homepage_1.jpg" alt="Slider Image 3"></li>
                <li><img src="http://www.cfsmortgage.com/wp-content/uploads/2017/04/Doctor1-1200x450.jpg" alt="Slider Image 4"></li>
            </ul>
        </div>
        <!-- End Image Slider -->
        <div class="clear"></div>
        <div class="ui horizontal segments">
            <div class="ui teal inverted segment">
                <div class="admin">
                    <div class="ui icon">
                        <i class="large user icon"></i> Admin login
                        <a href="admin-login.jsp">
                            <button class="ui blue button">LOGIN</button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="doctor">
                <div class="ui teal inverted segment">
                    <div class="ui icon">
                        <i class="ui large user md icon"></i> Doctor login
                        <a href="Doclogin.jsp">
                            <button class="ui blue button">LOGIN</button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="ui right aligned teal inverted segment">   
                <div class="user">
                    <div class="ui icon">
                        <i class="ui large users icon"></i> User login
                        <a href="plogin.jsp">
                            <button class="ui blue button">LOGIN</button>
                        </a>
                    </div>
                </div>
            </div>  
        </div>   

        <div class="Box-body">
            <article class="markdown-body entry-content" itemprop="text">
                <h1>Hospital Management System</h1>
                <p>
                    This is a hospital management user interface for managing, monitoring and controlling the system in a Hospital. 
                    This application is developed using Java, which mainly focuses on basic operations in a hospital like adding new patient information, 
                    and updating new information, assigning the doctor for a patient. It features a familiar and well thought-out, an attractive online user interface,
                    combined with strong management capabilities. The backend of the project is designed using MySQL, 
                    Java and front end using HTML, CSS, and Bootstrap.
                </p>
            </article>
        </div>
        <br><br>
        <footer>
            <p class="copyright">© HospDBMS | All rights reserved.</p>
        </footer>
    </div>   
</body>
</html>