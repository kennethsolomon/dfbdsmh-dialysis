<?php
// Connection 
include('conn.php'); 

$listOfMonth=['', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
$firstName = $_GET['firstName'];
$lastName = $_GET['lastName'];
$day = $_GET['day'];
$convertMonth = $_GET['month'];
$month = $listOfMonth[$convertMonth];
$year = $_GET['year'];
$filename = "dialysisy.xls"; // File Name
// Download file
header("Content-Disposition: attachment; filename=\"$filename\"");
header("Content-Type: application/vnd.ms-excel");
$user_query=mysqli_query($conn,"select * from `user` where lastname = '$lastName' AND firstname = '$firstName' OR ((month = '$month') OR (year = '$year') OR (date = '$day') OR (lastname = '$lastName') OR (firstname = '$firstName') OR (lastname = '$lastName' AND firstname = '$firstName' AND date = '$day') OR (lastname = '$lastName' AND firstname = '$firstName' AND month = '$month') OR (lastname = '$lastName' AND firstname = '$firstName' AND date = '$year')) ");
// Write data to file
$flag = false;
while ($row = mysqli_fetch_assoc($user_query)) {
    if (!$flag) {
        // display field/column names as first row
        echo implode("\t", array_keys($row)) . "\r\n";
        $flag = true;
    }
    echo implode("\t", array_values($row)) . "\r\n";
}
?>