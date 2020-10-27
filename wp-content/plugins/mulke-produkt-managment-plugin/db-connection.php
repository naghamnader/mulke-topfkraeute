<?php
define('TABLE_NAME','mulke_product');
define('COLUMN_PRODUCT_ID','id');
define('PRODUCT_NAME','product_name');
define('LOCATION','location');
define('WATER_CONSUMPTION','water_consumption');
define('USAGE','product_usage');
define('PRICE','product_price');
define('AVAILABLE_QUANTITY','available_quantity');
define('PRODUCT_IMG','product_img');


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


function insertIntoProductTable(string $name , array $location, number_format $water_consumption, 
string $usage, string $price, number_format $available_quantity, string $product_img ) {

  echo $name . " ". $location . " ". $water_consumption . " ".
  $usage. " ". $price. " ". $available_quantity. " ". $product_img;
}

?>