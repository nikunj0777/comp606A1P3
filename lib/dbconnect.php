<?php

    $dbHost = "localhost";
	$dbUser = "root";
	$dbPassword = "";
	$dbName = "body-therapy";
	$conns =  mysqli_connect ($dbHost, $dbUser, $dbPassword, $dbName) or die("check the connecction");
    
    
    //$dbc = new MysqliDb ($mysqli);
	//if(!$dbc) die("Database error");

?>