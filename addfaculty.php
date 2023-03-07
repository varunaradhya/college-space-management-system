<?php

 session_start();
    if(isset($_SESSION['adminid']) && isset($_SESSION['adminpswd']))
    {
        $user=$_SESSION['adminid'];
        $pass=$_SESSION['adminpswd'];
    }
    else
    {
      echo '<script>alert("plzz login")</script>';
	echo '<META http-equiv="refresh" content="0;logout.php">';
    }
    ?>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css2?family=STIX+Two+Math&display=swap" rel="stylesheet">
        <link href="http://fonts.cdnfonts.com/css/anurati" rel="stylesheet">

        <title></title>
    </head> 
    <body>
        <div class="navbar1">
            <img src="images/smplogo.png" alt="logo" class="logo"/>
            <ul>
                <li><a href="index.php">HOME</a></li>
                <li><a href="addstudent.php">ADD STUDENT</a></li>
                <li><a href="viewstudent.php">VIEW STUDENT</a></li>
                <li><a href="viewfaculty.php">VIEW FACULTY</a></li>
                <li><a href="logout.php">LOGOUT</a></li>
            </ul>
        </div>
        <div class="details">
            <form action="addfacultydb.php" method="POST">
                <h1>ADD FACULTY</h1><br/><br/>
                <div class="rows">
                    <div class="rows">
                  <label for="Faname">
                        <input type="text" name="Faname" id="Faname" required>
                        FACULTY NAME</label>
                    </div>
                    <div class="rows">
<label for="course">
                        <input type="text" name="course" id="course" required>
                        COURSE</label>
                    </div>
                </div>
                <div class="rows">
 <label for="subject">
                    <input type="text" name="subject" id="subject" required>
                   SUBJECT</label>
                </div>
                <div class="rows">
<label for="fusername">
                    <input type="text" name="fusername" id="fusername" required>
                    FACULTY USERNAME</label>
                </div>
                <div class="rows">
<label for="fpswd">
                    <input type="password" name="fpswd" id="fpswd" required>
                    FACULTY PASSWORD</label>
                </div>
                <button type="submit" class="btn btn-primary" id="sbmt" name="fac-sub">SUBMIT</button>
            </form>
        </div>
         <div id="footer">
            <p>Copyright &copy; SMP | <a href="#">SAGAR</a> | <a href="#">2021</a> </p>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

