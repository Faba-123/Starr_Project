<?php 
    include 'database_connections_tests.php';
    $id=$_GET['updateid'];
    $sql = "Select * from crudop where crud_id = $id";
    // $name = $row['name'];
    // $email=$row['email'];
    // $password=$row['password'];

    if(isset($_POST['submit'])){
        $name=$_POST['name'];
        $email=$_POST['email'];
        $password=$_POST['password'];
        $image=$row['image'];


        $sql="update `crudop` set crud_id=$id,name = '$name', email='$email',password='$password',image='$image'
         where crud_id=$id";
        $result=mysqli_query($connection,$sql);
        if($result){
             echo "Updated successfully";
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

    <title>Crud |Update</title>
  </head>
<body>
  <div class="container my-5">
      <form method="post">
            
            <div class="form-group my-3">
                <label>Name</label>
                <input type="text" class="form-control" 
                placeholder="Enter your name" 
                name="name"  ?>
            </div>
            <div class="form-group my-3">
                <label>Email</label>
                <input type="text" class="form-control" 
                placeholder="Enter your email" 
                name="email"  ?>
            </div>
            <div class="form-group my-3">
                <label>Password</label>
                <input type="password" class="form-control" 
                placeholder="Enter your password"
                 name="password" ?>
            </div>
    
            <button type="submit" class="btn btn-primary" name="submit">Update</button>
        </form>
    </div>
</body>
</html>