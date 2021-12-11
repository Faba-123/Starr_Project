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
<div class="container-fluid">
  <h3 class="text-center mt-3">DISPLAY ALL IMAGES FROM GALLERY</h3>
 
    <?php
    // Enter your Directry/Folder Name I have Given Folder Name As Images
      $files = scandir('img/gallery');
      echo "<div class='row'>";
      foreach ($files as $file) {
        if ($file !== "." && $file !== "..") {
          // Give Image source -- src='folder-name/$file'
          echo "<div class=' col-6 col-sm-4 col-md-3 mt-3 mb-3'>
                <img src='img/gallery/$file' alt='image' width='50%' /></div>";
        }
      }
      echo "</div>";
    ?>
  </div>
 
</body>
</html>



















