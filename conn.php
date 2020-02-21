<?php
 
//MySQLi Procedural
$conn = mysqli_connect("localhost","root","","dialysis");
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 
?>