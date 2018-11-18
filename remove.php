<?php
session_start();

require 'config.php';
$user=$_SESSION["user"];

  $time=$_POST['time'];
  $duedate=$_POST['duedate'];
  $task=$_POST['task'];
  $subtask=$_POST['subtask'];
  $rel=$_POST['rel'];
  $user=$_POST['user'];
  $dbid=$_POST['dbid'];
  
  if (!mysqli_query($con,"DELETE FROM `bandwidth` WHERE `id` = $dbid and`time` = '$time' and`task` = '$task' and`subtask` = '$subtask' and `user` = '$user' and date='$duedate' and rel='$rel'"))
 {
	 echo("Error description: " . mysqli_error($con));
 }
 else
 {
	 echo("success");
 }
 mysqli_close($con);
?>
