<!DOCTYPE html>
<?php
session_start();
if(isset($_POST["name"]))
$_SESSION["user"] = $_POST["name"];
require 'config.php';
$sel = mysqli_query($con,"SELECT * FROM rel");
$sel1 = mysqli_query($con,"SELECT * FROM `task` ORDER BY task");
$sel2 = mysqli_query($con,"SELECT * FROM `task` ORDER BY task");
$sel3 = mysqli_query($con,"SELECT * FROM `rel`");
$sel4 = mysqli_query($con,"SELECT * FROM `subtask` ORDER BY subtask");
$sel5 = mysqli_query($con,"SELECT * FROM `subtask` ORDER BY subtask");
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

<script>
var app = angular.module("bandwidthsheet", []); 
app.controller("myCtrl", function($scope, $filter,$http) {
    $scope.items = [];
	$scope.user="<?php echo $_SESSION["user"]?>";
	$scope.editindex=-1;
	$scope.addtime=""
	$scope.adddate=""
	$scope.addtask=""
	$scope.addsubtask=""
	$scope.addcomment=""
	$scope.addticket=""
	$scope.addrel=""
    $http({
      method: 'GET',
      url: 'get.php'
   }).then(function (success){
   
	var _len = success.data.length;
  var  post, i;

  for (i = 0; i < _len; i++) {
    //debugger
    post = success.data[i];
	if(post.comment=="undefined"){
		post.comment="";
	}
	if(post.ticket=="undefined"){
		post.ticket="";
	}
	if(post.subtask=="undefined"){
		post.subtask="";
	}
    $scope.items.push({'Dbid':post.dbid,'Time':post.time,'Duedate':post.duedate,'Task':post.task,'Subtask':post.subtask,'Rel':post.rel, 'Comment': post.comment, 'Ticket': post.ticket});
  }
   },function (error){
   
	//alert(error);
   });  
    
    $scope.addItem = function () {
        $scope.errortext = "";
		$scope.adddate = $("#example1").val();
		
        if (!$scope.addtime||!$scope.adddate||!$scope.addtask||!$scope.addrel||!$scope.user||!$scope.addticket) {alert("Please fill all the details");return;} 
		$("#example1").val('');
		
			if($scope.editindex==-1)
			{
				var nitem={'Time':$scope.addtime,'Duedate':$scope.adddate,'Task':$scope.addtask,'Subtask':$scope.addsubtask,'Rel':$scope.addrel,'Comment':$scope.addcomment,'Ticket':$scope.addticket};
				var newitem=true;
				angular.forEach($scope.items, function(item) {
					if( item.Duedate.indexOf(nitem.Duedate)==0){
						if( item.Task.indexOf(nitem.Task)==0){
							if( item.Rel.indexOf(nitem.Rel)==0){
								if( item.Subtask.indexOf(nitem.Subtask)==0){
									if(item.Ticket.indexOf(nitem.Ticket)==0){
										newitem=false;}}}}}
					});
				if(newitem)
				{
					$scope.items.push(nitem);
					var data1=$scope.addtime;
					var data2=$scope.adddate;
					var data3=$scope.addtask;
					var data4=$scope.addrel;
					var data5=$scope.addcomment;
					var data6=$scope.addticket;
					var data7=$scope.addsubtask;
					var dataString = 'time='+ data1 + '&duedate='+ data2 + '&task='+ data3 +'&rel='+ data4+'&comment='+ data5+'&ticket='+ data6+ '&subtask='+ data7 +'&user='+ $scope.user;
					$scope.addtime=""
					$scope.adddate=""
					$scope.addtask=""
					$scope.addsubtask=""
					$scope.addcomment=""
					$scope.addticket=""
					$scope.addrel=""
					$scope.editindex=-1;
					
					$.ajax({
					type: "POST",
					url: "add.php",
					data: dataString,
					cache: false,
					success: function(result){
						$scope.items[$scope.items.indexOf(nitem)].Dbid=parseInt(result);
						
					}
					});
					
				}
				else{
					alert('Entry already present');
			}}
			else
			{
				var nitem={'Time':$scope.addtime,'Duedate':$scope.adddate,'Task':$scope.addtask,'Subtask':$scope.addsubtask,'Rel':$scope.addrel,'Comment':$scope.addcomment,'Ticket':$scope.addticket,'Dbid':$scope.items[$scope.editindex].Dbid};
				var newitem=true;
				angular.forEach($scope.items, function(item) {
					if( item.Duedate.indexOf(nitem.Duedate)==0){
						if( item.Task.indexOf(nitem.Task)==0){
							if( item.Rel.indexOf(nitem.Rel)==0){
								if( item.Subtask.indexOf(nitem.Subtask)==0){
									if(item.Ticket.indexOf(nitem.Ticket)==0){
										if(item.Dbid.indexOf(nitem.Dbid)!=0){
											newitem=false;}}}}}}
					});
				if(newitem)
				{
					$scope.items[$scope.editindex].Time=$scope.addtime;
					$scope.items[$scope.editindex].Duedate=$scope.adddate;
					$scope.items[$scope.editindex].Task=$scope.addtask;
					$scope.items[$scope.editindex].Rel=$scope.addrel;
					$scope.items[$scope.editindex].Comment=$scope.addcomment;
					$scope.items[$scope.editindex].Ticket=$scope.addticket;
					$scope.items[$scope.editindex].Subtask=$scope.addsubtask;
					var data1=$scope.addtime;
					var data2=$scope.adddate;
					var data3=$scope.addtask;
					var data4=$scope.addrel;
					var data5=$scope.addcomment;
					var data6=$scope.addticket;
					var data7=$scope.addsubtask;
					var data8=$scope.items[$scope.editindex].Dbid;
					var dataString = 'time='+ data1 + '&duedate='+ data2 + '&task='+ data3 +'&rel='+ data4+'&comment='+ data5+'&ticket='+ data6+ '&subtask='+ data7 +'&user='+ $scope.user +'&dbid='+ data8;
					$.ajax({
						type: "POST",
						url: "update.php",
						data: dataString,
						cache: false,
						success: function(result){}
						});
					$scope.addtime=""
					$scope.adddate=""
					$scope.addtask=""
					$scope.addsubtask=""
					$scope.addcomment=""
					$scope.addticket=""
					$scope.addrel=""
					
					$scope.editindex=-1;
				}
				else{
					alert('Entry already present');
				}
			}
				
			    
	}
    $scope.removeItem = function (x) {
		var index = $scope.items.indexOf(x);
		if (index != -1) {
        $scope.errortext = ""; 
		var datastring = 'dbid='+ $scope.items[index].Dbid +'&time='+ $scope.items[index].Time + '&duedate='+ $scope.items[index].Duedate + '&task='+ $scope.items[index].Task+'&subtask='+ $scope.items[index].Subtask+ '&rel='+ $scope.items[index].Rel+'&user='+ $scope.user;
		$.ajax({
		type: "POST",
		url: "remove.php",
		data: datastring,
		cache: false,
		success: function(result){}
		});
        $scope.items.splice(index, 1);
		}
    }
	$scope.editItem = function (x) {
		var index = $scope.items.indexOf(x);
		$scope.addtime=$scope.items[index].Time;
		$scope.adddate=$scope.items[index].Duedate;
		$scope.addtask=$scope.items[index].Task;
		$scope.addrel=$scope.items[index].Rel;
		$scope.addcomment=$scope.items[index].Comment;
		$scope.addticket=$scope.items[index].Ticket;
		$scope.addsubtask=$scope.items[index].Subtask;
		$scope.editindex=index;
    }
	
	$scope.reset = function () {
		$scope.mindate =null;
		$scope.maxdate =null;
		$scope.filtertype="";
		$scope.filtersubtype="";
		$scope.filterrel="";
		$("#example3").val("").datepicker("update");
		$("#example2").val("").datepicker("update");
        }
		
    
	$('#example2').datepicker({
                            autoclose: true,  
							format: "yyyy-mm-dd",
							}).on('changeDate', function (ev) {$scope.mindate = $("#example2").val();$scope.$apply();});
	$('#example3').datepicker({
                            autoclose: true,  
							format: "yyyy-mm-dd",
							}).on('changeDate', function (ev) {$scope.maxdate = $("#example3").val();$scope.$apply();});
				
});
app.filter('rangeFilter', function() {
    return function( items, filtext1, filtext2 ) {
		
		if(filtext1&&filtext2)
		{
			var filtered = [];
			angular.forEach(items, function(item) {
				if( item.Duedate >= filtext1 && item.Duedate <= filtext2 ) {
					filtered.push(item);
				}
			});
			return filtered;
		}
		else if(filtext1)
		{
			var filtered = [];
			angular.forEach(items, function(item) {
				if( item.Duedate >= filtext1 ) {
					filtered.push(item);
				}
			});
			return filtered;
		}
		else if(filtext2)
		{
			var filtered = [];
			angular.forEach(items, function(item) {
				if(item.Duedate <= filtext2 ) {
					filtered.push(item);
				}
			});
			return filtered;
		}
		else
		return items;
        
    };
});
</script>
<script type="text/javascript">
                // When the document is ready
                $(document).ready(function () {
                    
                    $('#example1').datepicker({
                            autoclose: true,  
							format: "yyyy-mm-dd"
                    });  
					
                });
            </script>
<body ng-app="bandwidthsheet" ng-controller="myCtrl">
<div class="header1">
<img src="logo.jpg" class="logo"/>
<h2 style="margin-left:6%">Bandwidth Utilisation</h2>
</div>
<div class="header">
  <h2>Hello <?php echo $_SESSION["user"]?>... Add a new Entry.</h2>
<div >



  <select class="typeBtn styled-select semi-square" ng-model="addtask">
    <option value="">Select Task</option>
    <?php while ($row1 = mysqli_fetch_array($sel1)) {?>
    <option value="<?php echo $row1['task']?>"><?php echo $row1['task']?></option>
	<?php }?>
  </select>
  
  <select class="typeBtn styled-select semi-square" ng-model="addsubtask">
    <option value="">Activity</option>
    <?php while ($row1 = mysqli_fetch_array($sel4)) {?>
    <option value="<?php echo $row1['subtask']?>"><?php echo $row1['subtask']?></option>
	<?php }?>
  </select>
  <select class="typeBtn styled-select semi-square" ng-model="addrel">
    <option value="">Select Release</option>
	<?php while ($row = mysqli_fetch_array($sel)) {?>
    <option value="<?php echo $row['rel']?>"><?php echo $row['rel']?></option>
	<?php }?>
    
  </select>
  <input type="text" placeholder="Execution Time" ng-model="addtime">
  <input type="text" id="example1" class="dateBtn styled-select semi-square" placeholder="Select date"   />
  <input type="text" placeholder="Ticket Id" ng-model="addticket">
  
  
  <span ng-click="addItem()" class="addBtn semi-square pull-right" style="width:15%; margin-top:1%;">Add</span>
  <input type="text" placeholder="Comment" style="width:15%; margin-top:1%;float:right; margin-right:1%" ng-model="addcomment">
  
</div>
</div>

<div class="header" style="margin-top:-1%">
 <a style="float:right;margin-top:2%;color:black;" ng-click="reset()">clear filters</a>
 <input type="text" style="margin-top:1%;float: right;" id="example3" class="dateBtn styled-select semi-square" placeholder="End date"   ng-model="maxdate"  />
 <input type="text" style="margin-top:1%;float: right;" id="example2" class="dateBtn styled-select semi-square" placeholder="Start date" ng-model="mindate"  />
 
  <select  class="filtBtn styled-select semi-square" ng-model="filterrel">
    <option value="">Release</option>
    <?php while ($row3 = mysqli_fetch_array($sel3)) {?>
    <option value="<?php echo $row3['rel']?>"><?php echo $row3['rel']?></option>
	<?php }?>
  </select>
  <select  class="filtBtn styled-select semi-square" ng-model="filtersubtype">
    <option value="">Activity</option>
    <?php while ($row1 = mysqli_fetch_array($sel5)) {?>
    <option value="<?php echo $row1['subtask']?>"><?php echo $row1['subtask']?></option>
	<?php }?>
	
  </select>
  <select  class="filtBtn styled-select semi-square" ng-model="filtertype">
    <option value="">Task</option>
    <?php while ($row2 = mysqli_fetch_array($sel2)) {?>
    <option value="<?php echo $row2['task']?>"><?php echo $row2['task']?></option>
	<?php }?>
  </select>
  
  
  <label style="background:inherit; width: inherit;margin-left:1%;" class="filtBtn">Filter by:</label>
 
 </div> 


<table>
	<tr style="background-color:#eee;"><td>Task</td><td>Activity</td><td>Rel</td><td>Date</td><td>Time</td><td>Ticket ID</td><td>Comment</td><td>Delete</td></tr>
    <tr ng-repeat="x in items | orderBy:'-Duedate'| rangeFilter:mindate:maxdate| filter:{ Task: filtertype }| filter:{ Subtask: filtersubtype }| filter:{ Rel: filterrel }" ng-class-even="'trcolour'" ><td> {{x.Task}} </td><td>  {{x.Subtask}} </td><td>  {{x.Rel}} </td><td> {{x.Duedate}}</td><td>{{x.Time}} </td><td>{{x.Ticket}} </td><td>{{x.Comment}} </td><td><span ng-click="editItem(x)">edit</span> | <span ng-click="removeItem(x)">clear</span></td></tr>
 </table>
</body>

</html>
