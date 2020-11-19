<?php
/**
 * @package MulkeProduktManagmentPlugin
 */
/*
Description: php statement to save products -> will be called with ajax request )
Author: Nagham Nader , ?? 
*/
	include 'db-connection.php';
	
    $name = $_POST['name'];
    $productLocation = $_POST['productLocation'];
    $waterConsumption = $_POST['waterConsumption'];
    $productImg = $_POST['productImg'];
    $productUsage = $_POST['productUsage'];
    $productPrice = $_POST['productPrice'];
    $availableQuantity = $_POST['availableQuantity'];

	$sql = "INSERT INTO `mulke_product`( `product_name`, `product_location`, `water_consumption`, 
    `product_usage`, `product_price`, `available_quantity`, `product_img` ) 
	VALUES ('$name','$productLocation','$waterConsumption','$productUsage','$productPrice','$availableQuantity','$productImg')";
	if (mysqli_query($conn, $sql)) {
		echo json_encode(array("statusCode"=>200));
	} 
	else {
		echo json_encode(array("statusCode"=>201));
	}
    mysqli_close($conn);
    
?>