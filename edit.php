<?php
	include('conn.php');
 
	$id=$_GET['id'];
 
	$firstname=$_POST['firstname'];
	$lastname=$_POST['lastname'];
	$address=$_POST['address'];
	$diagnosis=$_POST['diagnosis'];
	$sex=$_POST['sex'];
 
	mysqli_query($conn,"update user set firstname='$firstname', lastname='$lastname', address='$address', sex='$sex', diagnosis='$diagnosis' where userid='$id'");
	header("location:index.php");
 
?>