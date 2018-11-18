<?php
require '../../config.php';
 $subtask=$_POST['subtask'];
 mysqli_query($con,"INSERT INTO subtask (subtask)VALUES ('$subtask')");
 echo "success";
 mysqli_close($con);
?>
