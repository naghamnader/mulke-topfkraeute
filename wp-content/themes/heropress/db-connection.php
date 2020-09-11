<?php
 $servername = "localhost";
 $username = "root";
 $password = "root";
 $dbname = "mulke-topfkraeuter";
 
 // Create connection
 $conn = new mysqli($servername, $username, $password, $dbname);
 // Check connection
 if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
 }
 
 $sql = "SELECT * FROM mulke_product";
 $result = $conn->query($sql);
 
 if ($result->num_rows > 0) {
   // output data of each row
   while($row = $result->fetch_assoc()) {
     echo "id: " . $row["id"]. " - Name: " . $row["name"]. " " . $row["description"]." prise  ". $row["price"]. "<br>";
   }
 } else {
   echo "0 results";
 }
 $conn->close();
?>