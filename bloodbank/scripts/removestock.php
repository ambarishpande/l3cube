<?php
	include_once('config.php');
	$bgroup=$_POST['bgroup'];
	$quantity=$_POST['quantity'];	
	$conn = new mysqli($servername, $username, $password, $dbname);
	$sql="update stocks set taken=1 where Bgroup='$bgroup' and taken=0 LIMIT $quantity";
	if ($conn->query($sql) === TRUE) {
	    echo "ok";
	} else {
	    echo "Error updating record: " . $conn->error;
	}
?>