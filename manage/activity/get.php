<?php
require '../../config.php';

$sel = mysqli_query($con,"SELECT * FROM `subtask`");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("subtask"=>$row['subtask']);
}
echo json_encode($data);
mysqli_close($con);
?>
