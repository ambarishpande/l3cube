<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	$city = $_GET["city"];
	// echo "blood".$_POST["blood"];
	$dataArray = array();
	$conn = new mysqli($servername, $username, $password, $dbname);
	$cdate=date("Y-m-d");
	$sql="select * from event where city='$city'";
	
	// echo $sql;
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
			$dataArray[]=$row;
	    }
		echo json_encode($dataArray);

	}
	mysqli_close($conn);
	// print_r($_POST);
	// echo "Hello";
?>