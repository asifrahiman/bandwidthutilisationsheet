<?php
session_start();

require 'config.php';
$user=$_SESSION["user"];
$sel = mysqli_query($con,"SELECT * FROM `bandwidth` WHERE `user`='$user'and `status` = 0  ");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("dbid"=>$row['id'],"user"=>$row['user'],"task"=>$row['task'],"subtask"=>$row['subtask'],"rel"=>$row['rel'],"time"=>$row['time'],"duedate"=>$row['date'],"ticket"=>$row['ticket'],"comment"=>$row['comment']);
}
echo json_encode($data);
mysqli_close($con);
?>
