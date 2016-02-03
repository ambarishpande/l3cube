<?php
	// include_once('config.php');
	header("Access-Control-Allow-Origin: *");
	// echo "ok";
	include_once('config.php');
	$name = $_POST['name'];
	$tdate=$_POST['tdate'];
	$stime=$_POST['stime'];
	$etime=$_POST['etime'];
	$bno=$_POST['bno'];
	$stno=$_POST['stno'];
	$area=$_POST['area'];
	$city=$_POST['city'];
	$state=$_POST['state'];
	$decs=$_POST['desc'];
	$conn = new mysqli($servername, $username, $password, $dbname);
	$sql="select * from user where uname='$uname' limit 1";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
			$uid=$row['uid'];
	    }
	    $sql="INSERT INTO event (eventname,tdate,stime,etime,bno,streetno,area,city,state,uid) values('$name','$tdate','$stime','$etime','$bno','$stno','$area','$city','$state',$uid);";
	    if($conn->query($sql)===True){
			echo "ok";
		}
		else{
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	mysqli_close($conn);
?>