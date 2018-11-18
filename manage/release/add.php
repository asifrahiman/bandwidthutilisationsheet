<?php
require '../../config.php';
 $rel=$_POST['rel'];
 mysqli_query($con,"INSERT INTO rel (rel)VALUES ('$rel')");
 echo "success";
 mysqli_close($con);
?>
