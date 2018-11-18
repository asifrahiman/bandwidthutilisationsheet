<?php
require '../../config.php';

$sel = mysqli_query($con,"SELECT * FROM `task`");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("task"=>$row['task']);
}
echo json_encode($data);
mysqli_close($con);
?>
