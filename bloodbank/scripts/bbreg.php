<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	$name=$_POST['name'];
	$cno=$_POST['cno'];
	$bno=$_POST['bno'];
	$stno=$_POST['stno'];
	$area=$_POST['area'];
	$city=$_POST['city'];
	$state=$_POST['state'];
	$uname=$_POST['uname'];
	$pass=md5($_POST['pass']);
	$conn = new mysqli($servername, $username, $password, $dbname);
	$sql="select * from bloodbank where uname='$uname' limit 1";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    // output data of each row
	    echo "username already exists";
	} else {
	    $sql="insert into bloodbank (name,cno,bno,streetno,area,city,state,password,uname) values('$name', '$cno', '$bno', '$stno', '$area','$city','$state','$pass','$uname')";
		if($conn->query($sql)===True){
			echo "ok";
			session_start();
			$_SESSION["uname"] = $uname;
		}
		else{
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	mysqli_close($conn);
?>