<?php
	include('conn.php');
 
	$firstname=$_POST['firstname'];
	$lastname=$_POST['lastname'];
	$address=$_POST['address'];
	$date=$_POST['date'];
	$age=$_POST['age'];
	$sex=$_POST['sex'];	
	$diagnosis=$_POST['diagnosis'];
	$listOfMonth=['', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

	$month = $listOfMonth[substr($date,5,-3)];
	$year = substr($date,0,-6);
 
	mysqli_query($conn,"insert into user (firstname, lastname, address, date, month, year, age, sex, diagnosis) values ('$firstname', '$lastname', '$address', '$date', '$month', '$year', '$age', '$sex', '$diagnosis')");
	header('location:index.php');
 
?>