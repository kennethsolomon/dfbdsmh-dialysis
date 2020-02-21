<!DOCTYPE html>
<html>
<head>
	<title>DIALYSIS</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
<body>
<?php include('navbar.php'); ?>
<div class="container">
	<div style="height:50px;"></div>
	<div class="well" style="margin:auto; padding:auto; width:80%;">
	<p></p>
	<!-- <div class="row">
			<div class="col-lg-8"></div>
			<div class="col-lg-2">
				<span class="pull-left"><a href="#addnew" data-toggle="modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add New</a></span>
			</div>
			<div class="col-lg-2">
				<a href="print.php?lastName=<?php echo $_GET['lastName']; ?>&day=<?php echo $_GET['day']; ?>&firstName=<?php echo $_GET['firstName']; ?>&month=<?php echo $_GET['month']; ?>&year=<?php echo $_GET['year']; ?>" class="btn btn-success"><span></span> Export</a>
			</div>
	</div> -->
	<br>
		<div class="row">
			<div class="col-lg-2">
			<label for="searchOptions">Search Options:</label>
				<select name="searchOptions" class="form-control" id="searchOptions" onchange="changeview()">
					<option value="0"></option>
					<option value="3">by Date</option>
					<option value="1">by Month</option>
					<option value="2">by Year</option>
				</select>
			</div>
		</div>
	<br>
		<div class="row">
			<div class="col-lg-3" id="firstNameForm">
				<form method="get">
					<input class="form-control" id="firstName" type="text" name="firstName" placeholder="First Name">
			</div>
			<div class="col-lg-3" id="lastNameForm">
					<input class="form-control" id="lastName" type="text" name="lastName" placeholder="Last Name">
			</div>
			<div class="col-lg-2" id="yearForm" style="display:none">
					<input  class="form-control" id="year" type="number" name="year">
			</div>
			<div class="col-lg-2" id="monthForm" style="display:none">
				<select class="form-control" id="month" name="month">
					<option value="0"></option>
					<option value="01">January</option>
					<option value="02">February</option>
					<option value="03">March</option>
					<option value="04">April</option>
					<option value="05">May</option>
					<option value="06">June</option>
					<option value="07">July</option>
					<option value="08">August</option>
					<option value="09">September</option>
					<option value="10">October</option>
					<option value="11">November</option>
					<option value="12">December</option>
				</select>
			</div>
			<div class="col-lg-3" id="dayForm" style="display:none">
					<input  class="form-control" id="day" type="date" name="day">
			</div>
			<div class="col-lg-2">
					<input class="btn btn-primary form-control" type="submit" name="searchButton">
			</div>
			
			</form>
		</div>
		<p></p>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<th>Firstname</th>
				<th>Lastname</th>
				<th>Sex</th> 
				<th>Address</th>
				<th>Diagnosis</th>
				<th>Date</th>
				<th>Action</th>
			</thead>
			<tbody>
			<?php
				include('conn.php');
				if (isset($_GET['searchButton'])) {
					$listOfMonth=['', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
					$firstName = $_GET['firstName'];
					$lastName = $_GET['lastName'];
					$day = $_GET['day'];
					$convertMonth = $_GET['month'];
					$month = $listOfMonth[$convertMonth];
					$year = $_GET['year'];
					if($firstName == "" && $lastName == "" && $day == "" && $month == "" && $year == ""){
						$query=mysqli_query($conn,"select * from `user` ORDER BY userid DESC limit 10");
					} else {
						$query=mysqli_query($conn,"select * from `user` where lastname = '$lastName' AND firstname = '$firstName' OR
					 ((lastname = '$lastName' AND month = '$month') OR
					 (month = '$month') OR
					 (year = '$year') OR
					 (date = '$day') OR
					 (lastname = '$lastName') OR
					 (firstname = '$firstName') OR
					 (lastname = '$lastName' AND firstname = '$firstName' AND date = '$day') OR
					 (lastname = '$lastName' AND firstname = '$firstName' AND month = '$month') OR
					 (lastname = '$lastName' AND firstname = '$firstName' AND date = '$year')) ");
					}
					while($row=mysqli_fetch_array($query)){
						?>
						<tr>
							<td><?php echo $row['firstname']; ?></td>
							<td><?php echo $row['lastname']; ?></td>
							<td><?php echo $row['sex']; ?></td>
							<td><?php echo $row['address']; ?></td>
							<td><?php echo $row['diagnosis']; ?></td>
							<td><?php echo $row['date']; ?></td>
							<td>
								<a href="#edit<?php echo $row['userid']; ?>" data-toggle="modal" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> Edit</a> || 
								<a href="#del<?php echo $row['userid']; ?>" data-toggle="modal" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</a>
								<?php include('button.php'); ?>
							</td>
						</tr>
						<?php
					}
				}
			?>
			</tbody>
		</table>
	</div>
	<?php include('add_modal.php'); ?>
</div>



<script>
function changeview(){
	var x = document.getElementById("searchOptions").value;
	if(x=='1'){
		document.getElementById("monthForm").style.display="block";
		document.getElementById("yearForm").style.display="none";
		document.getElementById("dayForm").style.display="none";
	} else if(x=='2'){
		document.getElementById("yearForm").style.display="block";
		document.getElementById("monthForm").style.display="none";
		document.getElementById("dayForm").style.display="none";
	} else if(x=='3'){
		document.getElementById("dayForm").style.display="block";
		document.getElementById("monthForm").style.display="none";
		document.getElementById("yearForm").style.display="none";
	} else if(x=='0'){
		document.getElementById("dayForm").style.display="none";
		document.getElementById("monthForm").style.display="none";
		document.getElementById("yearForm").style.display="none";
	}
}
</script>


<script src="js/jquery-3.3.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>