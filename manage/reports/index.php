<!DOCTYPE html>
<?php
require '../../config.php';
$sel = mysqli_query($con,"SELECT * FROM rel");
$sel1 = mysqli_query($con,"SELECT * FROM `task` ORDER BY task");
$sel2 = mysqli_query($con,"SELECT name FROM `users` ORDER BY name");
$sel3 = mysqli_query($con,"SELECT DISTINCT prodarea FROM `users`");
$sel4 = mysqli_query($con,"SELECT * FROM `subtask` ORDER BY subtask");
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
	<link rel="shortcut icon" href="../../favicon.ico" type="image/x-icon">
	<link rel="icon" href="../../favicon.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="../../mystyle.css">
	<link href="../../bootstrap.min.css" rel="stylesheet">  
	<link href="../../bootstrap-datepicker.css" rel="stylesheet">  
	<script src="../../jquery.js"></script>  
	<script src="../../bootstrap.min.js"></script>  
	<script src="../../bootstrap-datepicker.js"></script> 
	<script src="../../angular.min.js"></script>
	<script src="../../dirPagination.js"></script>
</head>
<script>
var app = angular.module("reports", ['angularUtils.directives.dirPagination']); 
app.controller("myCtrl", function($scope, $filter,$http) {
    $scope.items = [];
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
    $scope.items.push({'Time':post.time,'Duedate':post.duedate,'Task':post.task,'Subtask':post.subtask,'Rel':post.rel, 'Comment': post.comment, 'Ticket': post.ticket, 'User': post.user, 'Prodarea': post.prodarea});
  }
   },function (error){
   
	//alert(error);
   }); 
		
	$scope.reset = function () {
		$scope.mindate =null;
		$scope.maxdate =null;
		$scope.filtertask="";
		$scope.filtersubtask="";
		$scope.filterrel="";
		$scope.filteruser="";
		$scope.filterprodarea="";
		$scope.filterticket="";
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
	
	$scope.downloadreport = function () 
	{
        var data1=$scope.mindate;
		var data2=$scope.maxdate;
		var data3=$scope.filtertask;
		var data4=$scope.filterrel;
		var data5=$scope.filteruser;
		var data6=$scope.filterprodarea;
		var data7=$scope.filterticket;
		var data8=$scope.filtersubtask;
		var dataString = 'mindate='+ data1 + '&maxdate='+ data2 + '&task='+ data3 +'&rel='+ data4+'&user='+ data5+'&prodarea='+ data6+'&ticket='+ data7+ '&subtask='+ data8;
		$.ajax({
			type: "GET",
			url: "download.php",
			data: dataString,
			cache: false,
			success: function(result){
				window.location = 'download.php?'+dataString;
			}
			});
	}
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
app.filter('total', function () {
			return function (input, property) {
				var i =  input.length;
					var total = 0;
					while (i--)
						total += parseFloat(input[i][property]);
					return total.toFixed(2);
				}
		});
</script>
<body ng-app="reports" ng-controller="myCtrl">
	<div class="header1">
		<img src="../../logo.jpg" class="logo"/>
		<h2 style="margin-left:6%">Bandwidth Utilisation</h2>
	</div>
	<div class="header">
		<h2>Filter By:</h2>
		<div >
		  <select class="typeBtn styled-select semi-square" ng-model="filteruser">
			<option value="">User</option>
			<?php while ($row2 = mysqli_fetch_array($sel2)) {?>
			<option value="<?php echo $row2['name']?>"><?php echo $row2['name']?></option>
			<?php }?>
		  </select>
		  <select class="typeBtn styled-select semi-square" ng-model="filterprodarea">
			<option value="">Product Area</option>
			<?php while ($row3 = mysqli_fetch_array($sel3)) {?>
			<option value="<?php echo $row3['prodarea']?>"><?php echo $row3['prodarea']?></option>
			<?php }?>
		  </select>
		  <select  class="typeBtn styled-select semi-square" ng-model="filterrel">
			<option value="">Release</option>
			<?php while ($row = mysqli_fetch_array($sel)) {?>
			<option value="<?php echo $row['rel']?>"><?php echo $row['rel']?></option>
			<?php }?>
		  </select>
		  <select  class="typeBtn styled-select semi-square" ng-model="filtertask">
			<option value="">Task</option>
			<?php while ($row1 = mysqli_fetch_array($sel1)) {?>
			<option value="<?php echo $row1['task']?>"><?php echo $row1['task']?></option>
			<?php }?>
		  </select>
		  <select  class="typeBtn styled-select semi-square" ng-model="filtersubtask">
			<option value="">Activity</option>
			<?php while ($row1 = mysqli_fetch_array($sel4)) {?>
			<option value="<?php echo $row1['subtask']?>"><?php echo $row1['subtask']?></option>
			<?php }?>
		  </select>
		</div>
	</div>

	<div class="header" style="margin-top:-1%;margin-bottom:1%">
		<input type="text" style="margin-top:1%;" id="example2" class="dateBtn styled-select semi-square" placeholder="Start date" ng-model="mindate"  />
		<input type="text" style="margin-top:1%;" id="example3" class="dateBtn styled-select semi-square" placeholder="End date"   ng-model="maxdate"  />
		<input type="text" placeholder="Ticket Id" ng-model="filterticket">
		<span ng-click="downloadreport()" class="addBtn semi-square">Download report</span>
		<span class="addBtn semi-square" ng-click="reset()">clear filters</span>
		<h4>Total Hours:{{ filtered|total:'Time' }}</h4>
	</div> 
	<div class="header" style="padding-bottom: 0px;">
		<dir-pagination-controls
		   max-size="8"
		   direction-links="true"
		   boundary-links="true" >
		</dir-pagination-controls>
	
	</div>

	<table>
		<tr style="background-color:#eee;"><td>User</td><td>Task</td><td>Activity</td><td>Prodarea</td><td>Rel</td><td>Date</td><td>Time</td><td>Ticket ID</td><td>Comment</td></tr>
		<tr dir-paginate="x in filtered =(items | orderBy:'-Duedate'| rangeFilter:mindate:maxdate| filter:{ Task: filtertask }| filter:{ Subtask: filtersubtask }| filter:{ Rel: filterrel }| filter:{ User: filteruser }| filter:{ Prodarea: filterprodarea }| filter:{ Ticket: filterticket })|itemsPerPage:10" ng-class-even="'trcolour'" ><td>  {{x.User}} </td><td>  {{x.Task}} </td><td>  {{x.Subtask}} </td><td>  {{x.Prodarea}} </td><td>  {{x.Rel}} </td><td> {{x.Duedate}}</td><td>{{x.Time}} </td><td>{{x.Ticket}} </td><td>{{x.Comment}} </td></tr>
	</table>
</body>

</html>
