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
                <li><a href="addstudent.php" id="std" >ADD STUDENT</a></li>
                <li><a href="addfaculty.php" id="faddd">ADD FACULTY</a></li>
                <li><a href="viewfaculty.php" id="facbtn">VIEW FACULTY</a></li>
                <li><a href="logout.php">LOGOUT</a></li>
            </ul>
        </div>
    <center><span class="h1">STUDENT LIST</span></center><br/><br/>
    <div class="table">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">STUDENT NAME</th>
                    <th scope="col">USN</th>
                    <th scope="col">DOB</th>
                    <th scope="col">COURSE</th>
                    <th scope="col">USERNAME</th>
                    <th scope="col">PASSWORD</th>

                </tr>
            </thead>
            <tbody>
                <?php
                include 'dbconfigg.php';
                $records = mysqli_query($conn, "select * from studentdetails"); // fetch data from database
                $i = 0;
                while ($data = mysqli_fetch_array($records)) {
                    $i = $i + 1;
                    $id = $data['id'];
                    ?>
                    <tr>
                        <th scope = "row"><?php echo "$i"; ?></th>
                        <td><?php echo $data['fname'] ?></td>
                        <td><?php echo $data['usn'] ?></td>
                        <td><?php echo $data['DOB'] ?></td>
                        <td><?php echo $data['course'] ?></td>
                        <td><?php echo $data['username'] ?></td>
                        <td><?php echo $data['password'] ?></td>
                        <td><a href="delstudent.php?id=<?php echo $id ?>">delete</a></td>
                    </tr>
                    <?php
                }
                ?>
            </tbody>
        </table>
    </div>
     <div id="footer">
            <p>Copyright &copy; SMP | <a href="#">SAGAR</a> | <a href="#">2021</a> </p>
        </div>
</body>
</html>