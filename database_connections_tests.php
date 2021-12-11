<?php
    
    require("database_credentials.php");

        //create connection
        $connection = new mysqli(Server, username, password, dbname);

        if($connection-> connect_errno){
            echo "Connection failed ".$connection->connect_errno;
            exit();
               
    
        }
            
        else{
             echo "Connection Successful ";

        }

    
        
        
       
       
       
?>