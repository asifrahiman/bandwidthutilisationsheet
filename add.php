<?php
require 'config.php';

  $user=$_POST['user'];
  $time=$_POST['time'];
  $duedate=$_POST['duedate'];
  $task=$_POST['task'];
  $subtask=$_POST['subtask'];
  $rel=$_POST['rel'];
  $comment=$_POST['comment'];
  $ticket=$_POST['ticket'];
  $sel = mysqli_query($con,"SELECT * FROM `users` WHERE `name`='$user'");
  $row = mysqli_fetch_array($sel);
  $prodarea=$row['prodarea'];
  
 if (!mysqli_query($con,"INSERT INTO `bandwidth` (`user`, `prodarea`, `task`,`subtask`, `rel`, `time`, `date`, `ticket`, `comment`) VALUES  ('$user', '$prodarea', '$task','$subtask', '$rel', $time, '$duedate', '$ticket', '$comment')"))
 {
	 echo("Error description: " . mysqli_error($con));
 }
 $dbid=mysqli_insert_id($con);

 echo $dbid;
 mysqli_close($con);
?>
