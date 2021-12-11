<?php
    session_start();
    require("database_connections_tests.php");

    if(isset($_POST['submit']))
    {
        if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['num']) && !empty($_POST['price']))
        {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $number = $_POST['num'];
            $price = $_POST['price'];

            $query = "Insert into pricing(name,email,phone_number,prices) values('$name', '$email', '$number', '$price') " or die($connection->error);
            $run = mysqli_query($connection,$query);

            if($run)
            {
                echo "Great! move back to make payment!";

            }else{
                echo "Sorry! Please retry";
            }


        }
        

    } else{

        echo"Error record not entered".$query."<br>".mysqli_error($connection);
    
    }

    ?>