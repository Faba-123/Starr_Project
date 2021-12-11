<?php
    session_start();
    require("database_connections_tests.php");

    if(isset($_POST['submit']))
    {
        if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['num']) && !empty($_POST['course']))
        {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $number = $_POST['num'];
            $course = $_POST['course'];

            $query = "Insert into enrolled(name,email,phone_number,course) values('$name', '$email', '$number', '$course') " or die($connection->error);
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
