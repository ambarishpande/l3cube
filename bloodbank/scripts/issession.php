<?php
 session_start();
 if(!isset($_SESSION['uname'])){
 	echo "not ok";
 }
 else{
 	echo "ok";
 }
?>