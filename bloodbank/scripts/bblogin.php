<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	// $uname=stripslashes(strip_tags($_POST['uname']);
	$uname = $_POST['uname'];
	$pass=md5($_POST['pass']);
	$conn = new mysqli($servername, $username, $password, $dbname);
	if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
	}
	$sql="select * from bloodbank where uname='".$uname."' and password='".$pass."' limit 1";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
	        session_start();
			$_SESSION["uname"] = $uname;
			// $_SESSION["bbid"] = $row['bbid'];
			echo "ok";
	    }
	} else {
	    echo "wrong username or password";
	}
	mysqli_close($conn);
?>