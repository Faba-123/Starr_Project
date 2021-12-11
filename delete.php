<?php
    include 'database_connections_tests.php';
    if(isset($_GET['deleteid'])){
        $id=$_GET['deleteid'];

        $sql="delete from `crudop` where crud_id=$id";
        $result=mysqli_query($connection,$sql);
        if($result ){
            echo "Deleted Successfully";
            header('location:display.php');
        }
        else{
            die(mysqli_error($connection));
        }
    }
 ?>