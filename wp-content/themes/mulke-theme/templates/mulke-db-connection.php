<?php
/**
 * @package mulke-theme
 */
/*
Description: Verbindet das Produkt Template mit der Datenbank, um Datenbankabfragen zu ermöglichen. 
Author: Nagham Nader , Daria Jarzabek
*/
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "mulke_topfkraeuter";

// Verbindung Herstellen
$conn = new mysqli($servername, $username, $password, $dbname);
// Verbindung Überprüfen
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>