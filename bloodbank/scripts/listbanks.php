<?php
	header("Access-Control-Allow-Origin: *");
	include_once('config.php');
	$bgroup=$_POST['blood'];
	session_start();
	$uname=$_SESSION["uname"];
	$dataArray = array();
	$conn = new mysqli($servername, $username, $password, $dbname);
	$sql="select * from bloodbank where uname='$uname' limit 1";
	$result = $conn->query($sql);
	$city='';
	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
			$city=$row['city'];
	    }
	    $sql="select bloodbank.name,bloodbank.bno,bloodbank.streetno,bloodbank.area,bloodbank.city,count(stocks.Bgroup) as noofstock from bloodbank,stocks where stocks.Bgroup='$bgroup' and bloodbank.city='$city' and bloodbank.uname='$uname' and bloodbank.bbid=stocks.bbid and stocks.taken=0";
		//echo $sql;
		//bloodbank.name,bloodbank.bno,bloodbank.streetno,bloodbank.area,bloodbank.city,
		$result = $conn->query($sql);
		if ($result->num_rows > 0)
		{
			while($row = $result->fetch_assoc()) {
				$dataArray[] = $row;
		    }
		}
		//echo $city;
		echo json_encode($dataArray);

	} else {
	    echo "wrong username or password";
	}
	mysqli_close($conn);
?>