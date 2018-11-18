<?php
session_start();

require '../../config.php';

$sel = mysqli_query($con,"SELECT * FROM `bandwidth` WHERE `status` = 0  ");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("user"=>$row['user'],"prodarea"=>$row['prodarea'],"task"=>$row['task'],"subtask"=>$row['subtask'],"rel"=>$row['rel'],"time"=>$row['time'],"duedate"=>$row['date'],"ticket"=>$row['ticket'],"comment"=>$row['comment']);
}
echo json_encode($data);
mysqli_close($con);
?>
