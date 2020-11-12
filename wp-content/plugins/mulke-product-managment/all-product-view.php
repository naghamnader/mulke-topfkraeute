<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <!-- include AlertifyJs -->
  <script type="text/javascript" src="<?php echo plugins_url(); ?>/mulke-product-managment/styling/alertifyjs/alertify.min.js"></script>
  <link rel="stylesheet" href="<?php echo plugins_url(); ?>/mulke-product-managment/styling/alertifyjs/css/alertify.min.css" />
  <link rel="stylesheet" href="<?php echo plugins_url(); ?>/mulke-product-managment/styling/alertifyjs/css/themes/default.min.css" />

<style>
td, th{
    vertical-align: middle!important;
}
img {
  width: 200px;
  height: 150px;
}
</style>
<script>
  var pluginUrl = '<?php echo plugins_url(); ?>' ;

   function deleteProduct(productId)
  {
    jQuery.ajax({
    url: pluginUrl + '/mulke-product-managment/delete-product.php',
    type:'POST',
    data:{productId:productId},
    cache: false,
      success: function(dataResult){
					var dataResult = JSON.parse(dataResult);
					if(dataResult.statusCode==200){
            alertify.alert('Delete product', 'Produkt wurde erfolgreich gelöscht :)', function(){ document.getElementById(productId).outerHTML=""; });
            
					}
					else if(dataResult.statusCode==201){
            alertify.alert('Delete product', 'something is not valid!');
					}
					
				}
     });
  }
</script>
</head>
<body>

<!--Table-->
<table id="tablePreview" class="table">
<!--Table head-->
  <thead>
    <tr>
      <th class="product-id">#</th>
      <th class="product-name">Produkt Name</th>
      <th class="product-location">Produkt Standort</th>
      <th class="water-consumption">Wasser Verbrauch</th>
      <th class="product-img align-middle">Produkt Bild</th>
      <th class="product-usage">Produkt Verwendung</th>
      <th class="product-price">Produkt Prise</th>
      <th class="available-quantity">Verfügbare Menge</th>
      <th class="edit-column"></th>
      <th class="delete-column"></th>
    </tr>
  </thead>
  <!--Table body-->
  <tbody>

  <?php 
    include "db-connection.php";
    //show saved produkte
        $sql = "SELECT * FROM mulke_product";
        $result = $conn->query($sql);
        if (!$result) {
            trigger_error('Invalid query: ' . $conn->error);
        }
        if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<tr id ='" . $row['id'] . "'>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['product_name'] . "</td>";
            echo "<td>" . getProductLocation($row['product_location']) . "</td>";
            echo "<td>" . getProductWaterConsumption($row['water_consumption']) . "</td>";
            echo "<td><img src='" . $row['product_img'] . "'class='img-rounded'></td>";
            echo "<td>" . $row['product_usage'] . "</td>";
            echo "<td>" . $row['product_price'] . " &#8364;</td>";
            echo "<td>" . $row['available_quantity'] . "</td>";
            echo "<td><button type='button'class='btn btn-secondary'><i class='far fa-edit'></i>
            </button></td>"; 
            echo "<td><button type='button' onclick='deleteProduct(" . $row['id'] . ")' class='btn btn-danger delete-product-btn'><i class='fas fa-trash'></i>
            </button></td>"; 


            echo "</tr>";
        }
        } else {
        echo "0 results";
        }
        $conn->close(); 


        function getProductLocation($key) {
          $value = "";
          switch($key){
              case 1:
                  $value = "sonnig";
              break; 
              case 2:
                  $value = "vollsonnig";
              break; 
              case 3:
                  $value = "halbschattig";
              break; 
              case 4:
                  $value = "schattig";
              break; 
          }
          return $value;
      }
      function getProductWaterConsumption($key) {
          $value = "";
          switch($key){
              case 1:
                  $value = "mittel";
              break; 
              case 2:
                  $value = "mäßig feucht";
              break; 
              case 3:
                  $value = "feucht";
              break; 
              case 4:
                  $value = "leicht feucht";
              break; 
              case 5:
                  $value = "mäßig";
              break; 
              case 6:
                  $value = "mäßig trocken";
              break; 
              case 7:
                  $value = "trocken";
              break; 
          }
          return $value;
      }
    ?>
  </tbody>
  <!--Table body-->
</table>
<!--Table-->

</body>
</html>

