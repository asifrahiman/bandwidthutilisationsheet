<?php
require '../../config.php';

$sel = mysqli_query($con,"SELECT * FROM `users`");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("name"=>$row['name'],"prodarea"=>$row['prodarea']);
}
echo json_encode($data);
mysqli_close($con);
?>
