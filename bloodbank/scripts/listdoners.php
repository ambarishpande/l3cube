<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	$blood=$_POST["blood"];
	// echo "blood".$_POST["blood"];
	session_start();
	$uname=$_SESSION["uname"];
	$dataArray = array();
	$conn = new mysqli($servername, $username, $password, $dbname);
	$sql="select * from bloodbank where uname='$uname' limit 1";
	//echo $sql;
	$result = $conn->query($sql);
	$city='';
	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
			$city=$row['city'];
	    }
	    $sql="select * from user where isdoner='D' and Bgroup='".$blood."' and city='".$city."'";
	    //echo $sql;
		$result = $conn->query($sql);
		// echo $result;
		if ($result->num_rows > 0) {
		    // output data of each row
		    while($row = $result->fetch_assoc()) 
		    {
		    	$dataArray[]=$row;
		    }
		} else {
		    echo "0 results";
		}
		echo json_encode($dataArray);

	}
	mysqli_close($conn);
	// print_r($_POST);
	// echo "Hello";
?>