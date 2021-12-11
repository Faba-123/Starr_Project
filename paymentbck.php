<?php

if (isset($_POST['submit'])) {
    
        $cardnum = $_POST['cardnum'];
        $client = $_POST['client'];
        $cvv = $_POST['cvv'];
        $mon = $_POST['months'];
        $year = $_POST['years'];
        $host = "localhost";
        $dbUsername = "root";
        $dbPassword = "";
        $dbName = "starr";
        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);
        if ($conn->connect_error) {
            die('Could not connect to the database.');
        }
        else {
            $Select = "SELECT card_number FROM payment WHERE card_ = ? LIMIT 1";
            $Insert = "INSERT INTO payment(card_number, client, cvv, mon, year) values('$cardnum', '$client', '$cvv', '$mon', '$year')";
            $run = mysqli_query($conn,$Insert);

            if($run)
            {
                echo "Payment Confirmed!";

            }else{
                echo "Payment not Confirmed";
            }


            }
        }

else {
    echo "Submit button is not set";
}
?>



























































<!-- <?php
    // session_start();
    // require 'database_connections_tests.php';

    //  if(!empty($CardNum) || !empty($client)|| !empty($cvv)||!empty($mon)||!empty($year))
    //  {
    //        if(isset($_POST['submit'])){

    //             $CardNum=$_POST['cardnum'];
    //             $client=$_POST['client'];
    //             $cvv=$_POST['cvv'];
    //             $mon=$_POST['months'];
    //             $year = $_POST['years'];

                
    //             if($result){
    //                 echo "Data inserted successfully";
    //             }
    //             else{
    //                 echo "Data insertion failed";
    //             }
             
    // }
     
 
        
        
    //  }else{
    //      echo "All feilds are required".$sql."<br>".mysqli_error($connection);
    //  }
    ?> -->