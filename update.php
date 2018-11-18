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
  $dbid=$_POST['dbid'];
  $sel = mysqli_query($con,"SELECT * FROM `users` WHERE `name`='$user'");
  $row = mysqli_fetch_array($sel);
  $prodarea=$row['prodarea'];
  if (!mysqli_query($con,"UPDATE `bandwidth` SET  `task`='$task',`subtask`='$subtask', `rel`='$rel', `time`=$time , `date`='$duedate', `ticket`='$ticket', `comment`='$comment' WHERE `user`='$user' AND `prodarea`='$prodarea' AND `id`=$dbid"))
 {
	 echo("Error description: " . mysqli_error($con));
 }
echo "success";
?>