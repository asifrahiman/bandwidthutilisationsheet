<?php
require '../../config.php';
 $task=$_POST['task'];
 mysqli_query($con,"INSERT INTO task (task)VALUES ('$task')");
 echo "success";
 mysqli_close($con);
?>
