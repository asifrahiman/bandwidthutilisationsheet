<?php
require '../../config.php';

  $name=$_POST['name'];
  $prodarea=$_POST['prodarea'];
  
  mysqli_query($con,"DELETE FROM `users` WHERE `name` = '$name' and prodarea='$prodarea' ");
 echo "success";
 mysqli_close($con);
?>
