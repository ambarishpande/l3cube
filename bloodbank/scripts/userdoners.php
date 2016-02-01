<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	$blood=$_POST["blood"];
	// echo "blood".$_POST["blood"];
	session_start();
	$city=$_POST['currentCity'];
	// $uname=$_SESSION["uname"];
	$dataArray = array();
	$conn = new mysqli($servername, $username, $password, $dbname);
    $sql="select user.name ,user.Bgroup , user.cno from user where isdoner='D' and Bgroup='".$blood."' and city='".$city."'";
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