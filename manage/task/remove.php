<?php
require '../../config.php';

  $task=$_POST['task'];
  mysqli_query($con,"DELETE FROM `task` WHERE `task` = '$task'");
 echo "success";
 mysqli_close($con);
?>
