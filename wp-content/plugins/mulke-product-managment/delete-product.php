<?php
/**
 * @package MulkeProduktManagmentPlugin
 */
/*
Description: php statement to delete products -> will be called with ajax request )
Author: Nagham Nader , ?? 
*/
include 'db-connection.php';


$productId = $_POST['productId'];

$sql = "DELETE FROM mulke_product WHERE id ='$productId'";
if (mysqli_query($conn, $sql)) {
    echo json_encode(array("statusCode"=>200));
} 
else {
    echo json_encode(array("statusCode"=>201));
}
mysqli_close($conn);
?>