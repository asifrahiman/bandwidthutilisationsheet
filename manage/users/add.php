<?php
require '../../config.php';

  $name=$_POST['name'];
  $prodarea=$_POST['prodarea'];
  
 mysqli_query($con,"INSERT INTO users (name,prodarea)VALUES ('$name','$prodarea')");
 echo "success";
 mysqli_close($con);
?>
