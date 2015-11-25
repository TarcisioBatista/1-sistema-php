<?php
function conect(){

	//error_reporting(0);

	$link = mysqli_connect("localhost", "root", "", "anais");

	if (mysqli_connect_errno())
	  {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	return $link;
}

?>