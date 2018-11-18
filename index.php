<!DOCTYPE html>
<?php
require 'config.php';
$sel = mysqli_query($con,"SELECT * FROM `users` ORDER BY name");

?>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Bandwidth Utilisation">
<meta name="author" content="Asif Abdul Rahiman">
<title>Bandwidth Utilisation</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="mystyle.css">
<link href="bootstrap.min.css" rel="stylesheet">  
<link href="bootstrap-datepicker.css" rel="stylesheet">  
<script src="jquery.js"></script>  
<script src="bootstrap.min.js"></script>  
<script src="bootstrap-datepicker.js"></script> 
<script src="angular.min.js"></script>
</head>
<body class="backc">

<div class="header1">
<img src="logo.jpg" class="logo"/>
<h2 style="margin-left:6%">Bandwidth Utilisation</h2>
</div>
<div class="header overlay">
  <h2>Select your name.</h2>
<div >
<form action="index1.php" method="post" class="">

<select class="nameSel styled-select semi-square"  name="name">
    <option value="">Select your name.....</option>
	<?php while ($row = mysqli_fetch_array($sel)) {?>
    <option value="<?php echo $row['name']?>"><?php echo $row['name']?></option>
	<?php }?>
    
 </select>
<button class="nameBtn styled-select semi-square" type="submit">Add</button>
</form>
  
</div>
</div>



</body>

</html>
