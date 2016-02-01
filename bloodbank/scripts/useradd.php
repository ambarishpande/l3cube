<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	$uname=$_POST['uname'];
	$pass=md5($_POST['pass']);
	$name=$_POST['name'];
	$cno=$_POST['cno'];
	$bno=$_POST['bno'];
	$stno=$_POST['stno'];
	$area=$_POST['area'];
	$city=$_POST['city'];
	$state=$_POST['state'];
	$bgroup=$_POST['bgroup'];
	$dob=$_POST['dob'];
	$conn = new mysqli($servername, $username, $password, $dbname);
	$sql="select * from user where cno='$cno' limit 1";
	$result = $conn->query($sql);
	$isdonor = "";
	if (isset($_POST['isdonor'])) {
		# code...
		if ($_POST['isdonor']=="yes") {
			# code...
			$isdonor = "D";

		}
	}
	if ($result->num_rows > 0) {
	    // output data of each row
	    echo "username with the same contact number";
	} else {
	    $sql="insert into user (name,cno,bno,streetno,area,city,state,passord,uname,Bgroup,dob,isdoner) values('$name', '$cno', '$bno', '$stno', '$area','$city','$state','$pass','$uname','$bgroup','$dob','$isdonor')";
		if($conn->query($sql)===True){
			echo "ok";
		}
		else{
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	mysqli_close($conn);
?>