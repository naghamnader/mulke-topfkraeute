<?php
/**
 * @package MulkeProduktManagmentPlugin
 */
/*
Description: php statement to update products -> will be called with ajax request )
Author: Nagham Nader , ?? 
*/
include 'db-connection.php';
    
    $id = $_POST['id'];
    $name = $_POST['name'];
    $productLocation = $_POST['productLocation'];
    $waterConsumption = $_POST['waterConsumption'];
    $productImg = $_POST['productImg'];
    $productUsage = $_POST['productUsage'];
    $productPrice = $_POST['productPrice'];
    $availableQuantity = $_POST['availableQuantity'];


	$sql = "UPDATE `mulke_product` 
	SET `product_name`='$name',
	`product_location`='$productLocation',
	`water_consumption`='$waterConsumption',
	`product_usage`='$productUsage',
  `product_price`='$productPrice',
  `available_quantity`='$availableQuantity',
  `product_img`='$productImg' 
   WHERE id=$id";
	if (mysqli_query($conn, $sql)) {
		echo json_encode(array("statusCode"=>200));
	} 
	else {
		echo json_encode(array("statusCode"=>201));
	}
	mysqli_close($conn);


    