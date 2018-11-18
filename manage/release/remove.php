<?php
require '../../config.php';

 $rel=$_POST['rel'];
 mysqli_query($con,"DELETE FROM `rel` WHERE `rel` = '$rel'");
 mysqli_query($con,"UPDATE `bandwidth` SET `status` = '1' WHERE `rel` = '$rel'");
 echo "success";
 mysqli_close($con);
?>
