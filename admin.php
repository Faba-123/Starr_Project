<!-- CRUD VIDEO https://youtu.be/72U5Af8KUpA -->

<?php 
    include 'database_connections_tests.php';

    if(isset($_POST['submit'])){
        $name=$_POST['name'];
        $email=$_POST['email'];
        $password=$_POST['password'];

        $sql="insert into `crudop` (name,email,password) values('$name','$email','$password')";
        $result=mysqli_query($connection,$sql);
        if($result){
            echo "Data inserted successfully";
            header('location: display.php');
        }
        else{
            die(mysqli_error($connection));
        }
    }
?>





<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!doctype html>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script defer src="js/enrolledscript.js"></script>
    <script defer src="js/regex.js"></script>

    <title>Crud operation</title>
  </head>
<body>
  <div class="container my-5">
      <form method="post">
            <div class="form-group my-3">
                <label>Name</label>
                <input type="text" class="form-control" placeholder="Enter your name" name="name" autocomplete="off">
            </div>
            <div class="form-group my-3">
                <label>Email</label>
                <input type="text" class="form-control" placeholder="Enter your email" name="email" autocomplete="off">
            </div>

            <div class="form-group my-3">
                <label>Password</label>
                <input type="password" class="form-control" placeholder="Enter your password" name="password" autocomplete="off">
            </div>
            <div class="form-group my-3">
                    <label>FileUpload</label><br>
                    
                    <input type="file" class="form-control"  name="fileToUpload" id="fileToUpload" autocomplete="off"><br>
                </div>
    
            <button type="submit" class="btn btn-primary" name="submit">Submit</button>
            <span></span>
            <span></span>
            
        </form>
    </div>

    
</body>
</html>



