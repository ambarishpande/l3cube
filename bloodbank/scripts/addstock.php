<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	$stickerno=$_POST['stickerno'];
	session_start();
	$buname=$_SESSION['uname'];
	$cno=$_POST['cno'];
	$conn = new mysqli($servername, $username, $password, $dbname);
	$sql="select * from bloodbank where uname='$buname'";
	//echo $sql;
	$bbid=0;
	$result = $conn->query($sql);
	// echo $result;
	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) 
	    {
	    	$bbid=$row['bbid'];
	    }
	} else {
	    echo "0 results";
	}
	$uid=0;
	$sql="select * from user where cno='$cno'";
	//echo $sql;
	$result = $conn->query($sql);
	// echo $result;
	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) 
	    {
	    	$uid=$row['uid'];
	    	$bgroup=$row['Bgroup'];
	    }
	} else {
	    echo "0 results";
	}
	$cdate=date("Y-m-d");
	$sql="insert into stocks (stickerno,bbid,uid,stored,Bgroup,taken) values('$stickerno',$bbid,$uid,'$cdate','$bgroup',0)";
	if($conn->query($sql)===True){
		$sql="update user set ldonated='$cdate' where uid=$uid";
		if ($conn->query($sql) === TRUE) {
		    echo "ok";
		} else {
		    echo "Error updating record: " . $conn->error;
		}
	}
	else{
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
?>