<?php
    include 'database_connections_tests.php';
    ?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD Op</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/table.css">

</head>
<body>
<div class="container">
        <button class="btn btn-primary my-5"> <a href="admin.php" class="text-light"> Add user </a></button>
        <a href="about.php"  id="Logout" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">LOGOUT</a>
        <a href="image.php"  id="Logout" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">View Images</a>
      <table class="table">
  <thead>
    <tr>
    <th scope="col">sl no</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Operations</th>
    </tr>
  </thead>
  <tbody>
  <?php 
        $sql="select * from `crudop`";
        $result=mysqli_query($connection,$sql);
        if($result){
            while($row=mysqli_fetch_assoc($result)){
                $id=$row['crud_id'];
                $name=$row['name'];
                $email=$row['email'];
                $password=$row['password'];

                echo '
                <tr class="active-row">
                    // <th scope="row">'.$id.'</th>
                    <td>'.$name.'</td>
                    <td>'.$email.'</td>
                    <td>'.$password.'</td>
                    <td>
                    <button class="btn btn-primary"><a href="update.php?updateid='.$id.'" class="text-light">Update</a></button>
                    <button class="btn btn-danger"><a href="delete.php?deleteid='.$id.'" class="text-light" </a>Delete</button>
                    </td>
                </tr>
                ';
         
              }

            
            
         }
      ?>
      
    
</div>


</body>
<!-- <script type="text/javascript">
  function chechdelete(params) {
    return confirm ('Are you sure you want to Delete');
  } -->

</script>
</html>