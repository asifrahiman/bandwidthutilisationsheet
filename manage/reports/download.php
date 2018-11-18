<?php
	require '../../config.php';
	$user=$_GET['user'];
	$mindate=$_GET['mindate'];
	$maxdate=$_GET['mindate'];
	$task=$_GET['task'];
	$subtask=$_GET['subtask'];
	$rel=$_GET['rel'];
	$prodarea=$_GET['prodarea'];
	$ticket=$_GET['ticket'];
	
	$sql="SELECT `user`,`prodarea`,`task`,`subtask`as activity,`rel`,`time`,`date`,`ticket`,`comment` FROM `bandwidth` WHERE `status` = 0 ";
	function mysqli_field_name($result, $field_offset)
	{
		$properties = mysqli_fetch_field_direct($result, $field_offset);
		return is_object($properties) ? $properties->name : null;
	}
	if($user!="undefined"&& $user!="")
		{$sql.="and `user`='$user'";}
	if($task!="undefined"&& $task!="")
		{$sql.="and `task`='$task'";}
	if($subtask!="undefined"&& $subtask!="")
		{$sql.="and `subtask`='$subtask'";}
    if($rel!="undefined"&& $rel!="")
		{$sql.="and `rel`='$rel'";}
	if($prodarea!="undefined"&& $prodarea!="")
		{$sql.="and `prodarea`='$prodarea'";}
	if($ticket!="undefined"&& $ticket!="")
		{$sql.="and `ticket` LIKE '%$ticket%'";}
	if($mindate!="undefined"&& $mindate!="NULL"&& $mindate!="")
		{$sql.="and `date` >= '$mindate'";}
	if($maxdate!="undefined"&& $maxdate!="NULL"&& $maxdate!="")
		{$sql.="and `date` <= '$maxdate'";}
	$sql.="ORDER BY `date`";
	$result = mysqli_query($con,$sql);
	$file_ending = "xls";
	date_default_timezone_set("Asia/Kolkata");
	$filename="bandwidth_".date("d/m/Y h:i:sa");
	//header info for browser
	header("Content-type: application/octet-stream");
	header("Content-Disposition: attachment; filename=$filename.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");
	/*******Start of Formatting for Excel*******/   
	//define separator (defines columns in excel & tabs in word)
	$sep = "\t"; //tabbed character
	//start of printing column names as names of MySQL fields
	for ($i = 0; $i < mysqli_num_fields($result); $i++) {
	echo mysqli_field_name($result,$i) . "\t";
	}
	print("\n");    
	//end of printing column names  
	//start while loop to get data
		while($row = mysqli_fetch_row($result))
		{
			$schema_insert = "";
			for($j=0; $j<mysqli_num_fields($result);$j++)
			{
				if(!isset($row[$j]))
					$schema_insert .= "NULL".$sep;
				elseif ($row[$j] != "")
					$schema_insert .= "$row[$j]".$sep;
				else
					$schema_insert .= "".$sep;
			}
			$schema_insert = str_replace($sep."$", "", $schema_insert);
			$schema_insert = preg_replace("/\r\n|\n\r|\n|\r/", " ", $schema_insert);
			$schema_insert .= "\t";
			print(trim($schema_insert));
			print "\n";
		}   
		
?>