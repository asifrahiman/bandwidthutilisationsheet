<?php
require '../../config.php';

$sel = mysqli_query($con,"SELECT * FROM `rel`");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("rel"=>$row['rel']);
}
echo json_encode($data);
mysqli_close($con);
?>
