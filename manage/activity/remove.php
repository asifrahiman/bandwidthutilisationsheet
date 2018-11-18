<?php
require '../../config.php';

  $subtask=$_POST['subtask'];
  mysqli_query($con,"DELETE FROM `subtask` WHERE `subtask` = '$subtask'");
 echo "success";
 mysqli_close($con);
?>
