<?php
    session_start();
    require("database_connections_tests.php");

    if(isset($_POST['submit']))
    {
        if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['num']) && !empty($_POST['message']))
        {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $number = $_POST['num'];
            $message = $_POST['message'];

            $query = "Insert into contact(name,email,phone,message) values('$name', '$email', '$number', '$message') " or die($connection->error);
            $run = mysqli_query($connection,$query);

            if($run)
            {
                echo "You have been enrolled!";

            }else{
                echo "You have not been enrolled";
            }


            }
        

    } else{

        echo"Error record not entered".$query."<br>".mysqli_error($connection);
    
    }

    ?>
