<?php
/**
 * @package MulkeProduktManagmentPlugin
 */
/*
Description: connect plugin to database to make db querys )
Author: Nagham Nader , ?? 
*/

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "mulke_topfkraeuter";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>