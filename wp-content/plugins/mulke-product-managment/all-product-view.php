<?php
/**
 * @package MulkeProduktManagmentPlugin
 */
/*
Description: html layout to show all products in database with edit and delete button)
Author: Nagham Nader , ?? 
*/
?>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>

  <!-- include AlertifyJs -->
  <script type="text/javascript" src="<?php echo plugins_url();?>/mulke-product-managment/styling/alertifyjs/alertify.min.js"></script>
  <link rel="stylesheet" href="<?php echo plugins_url();?>/mulke-product-managment/styling/alertifyjs/css/alertify.min.css" />
  <link rel="stylesheet" href="<?php echo plugins_url();?>/mulke-product-managment/styling/alertifyjs/css/themes/default.min.css" />


  <!-- include JS mulke function -->
  <script>  var pluginUrl = '<?php echo plugins_url();?>' ;  </script>
  <script type="text/javascript" src="<?php echo plugins_url(); ?>/mulke-product-managment/mulke-function.js"></script>
 
  <!-- include mulke css style  -->
  <link rel="stylesheet" href="<?php echo plugins_url();?>/mulke-product-managment/mulke-style.css" />
  
</head>
<body>

<!--Table-->
<table id="tablePreview" class="table">
<!--Table head-->
  <thead>
    <tr>
      <!--Product infos head-->
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
include "convert-product-info.php";
include "db-connection.php";
//show all products from database
$sql    = "SELECT * FROM mulke_product";
$result = $conn->query($sql);
if (!$result) {
    trigger_error('Invalid query: ' . $conn->error);
}
if ($result->num_rows > 0) {
    // output data of each row to fill the table with products infos
    while ($row = $result->fetch_assoc()) {
        echo "<tr id ='" . $row['id'] . "'>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['product_name'] . "</td>";
        echo "<td>" . getProductLocation($row['product_location']) . "</td>";
        echo "<td>" . getProductWaterConsumption($row['water_consumption']) . "</td>";
        echo "<td><img src='" . $row['product_img'] . "'class='img-rounded'></td>";
        echo "<td>" . $row['product_usage'] . "</td>";
        echo "<td>" . $row['product_price'] . " &#8364;</td>";
        echo "<td>" . $row['available_quantity'] . "</td>";
        echo "<td><button type='button'class='btn btn-secondary' onclick='showEditProduct(" . $row['id'] . ")' ><i class='far fa-edit'></i>
            </button></td>";
        //java script delete function
        echo "<td><button type='button' onclick='deleteProduct(" . $row['id'] . ")' class='btn btn-danger delete-product-btn'><i class='fas fa-trash'></i>
            </button></td>";
        
        
        // product edit view, will be hidden till user click on edit
        echo "</tr>";
        echo "<tr class ='product-edit-form gray-bg' id = 'product-edit-" . $row['id'] . "'><td colspan=10>
            <form method='post' class='form-horizontal' >
            
            <!-- Edit Produkt Form  -->
            <legend>Edit Produkt</legend>
            
            <!-- Produkt NameText input-->
            <div class='form-group'>
              <label class='col-md-4 control-label' for='product_name'>Produkt Name</label>  
              <div class='col-md-4'>
              <input id='product_name' name='product_name' type='text' value='" . $row['product_name'] . "' class='form-control input-md' >
                
              </div>
            </div>

            <!--  Standort & Wasser Verbrauch Row -->
            <div class='row '>
            
              <!-- Produkt Standort Multiple Radios -->
              <div class='form-group col-md-5'>
                <label class='col-md-4 control-label' for='product_location_edit" . $row['id'] . "'>Produkt Standort</label>
                <div class='col-md-10'> 
                  <label class='radio-inline' for='product_location-0'>
                    <input type='radio' name='product_location_edit" . $row['id'] . "' id='product_location-0' value='1'>
                    sonnig
                  </label> 
                  <label class='radio-inline' for='product_location-1'>
                    <input type='radio' name='product_location_edit" . $row['id'] . "' id='product_location-1' value='2'>
                    vollsonnig
                  </label> 
                  <label class='radio-inline' for='product_location-2'>
                    <input type='radio' name='product_location_edit" . $row['id'] . "' id='product_location-2' value='3'>
                    halbschattig
                  </label> 
                  <label class='radio-inline' for='product_location-3'>
                    <input type='radio' name='product_location_edit" . $row['id'] . "' id='product_location-3' value='4'>
                    schattig
                  </label>
                </div>
              </div>
              
              <!-- Check the saved Product Location  -->
              <script>setlocationValue(" . $row['product_location'] . ' , ' . $row['id'] . ");</script>

              <!-- Wasser Verbrauch Multiple Radios -->
              <div class='form-group col-md-5'>
                <label class='col-md-4 control-label' for='water_consumption_edit" . $row['id'] . "'>Wasser Verbrauch</label>
                <div class='col-md-10'> 
                  <label class='radio-inline' for='water_consumption_0'>
                    <input type='radio' name='water_consumption_edit" . $row['id'] . "' id='water_consumption_mittel' value='1'>
                    mittel
                  </label> 
                  <label class='radio-inline' for='water_consumption_1'>
                    <input type='radio' name='water_consumption_edit" . $row['id'] . "' id='water_consumption_maeßigFeucht' value='2'>
                    mäßig feucht
                  </label> 
                  <label class='radio-inline' for='water_consumption_2'>
                    <input type='radio' name='water_consumption_edit" . $row['id'] . "' id='water_consumption_feucht' value='3'>
                    feucht
                  </label> 
                  <label class='radio-inline' for='water_consumption_3'>
                    <input type='radio' name='water_consumption_edit" . $row['id'] . "' id='water_consumption_leichtFeucht' value='4'>
                    leicht feucht
                  </label> 
                  <label class='radio-inline' for='water_consumption_4'>
                    <input type='radio' name='water_consumption_edit" . $row['id'] . "' id='water_consumption_maeßig' value='5'>
                    mäßig
                  </label> 
                  <label class='radio-inline' for='water_consumption_5'>
                    <input type='radio' name='water_consumption_edit" . $row['id'] . "' id='water_consumption_maeßigTrocken' value='6'>
                    mäßig trocken
                  </label> 
                  <label class='radio-inline' for='water_consumption_6'>
                    <input type='radio' name='water_consumption_edit" . $row['id'] . "' id='water_consumption_trocken' value='7'>
                    trocken
                  </label>
                </div>
              </div>
            

              <!-- Check the saved Product Water Consumption  -->
              <script>setWaterValue(" . $row['water_consumption'] . ' , ' . $row['id'] . ");</script>

            </div>

            <!--  Bild & Verwendung Row -->
            <div class='row'>

              <!-- Produkt Bild Url Text input-->
              <div class='form-group col-md-5'>
                  <label class='col-md-4 control-label' for='product_img'>Produkt Bild Url</label>  
                <div class='col-md-10'>
                  <input id='product_img' name='product_img' type='text' placeholder='Produkt Bild Url' class='form-control input-md' >
                  
                </div>
              </div>
          
              <!-- Produkt Verwendung Text input-->
              <div class='form-group col-md-5'>
                <label class='col-md-4 control-label' for='product_usage'>Produkt Verwendung</label>  
                <div class='col-md-10'>
                <input id='product_usage' name='product_usage' type='text' placeholder='Produkt Verwendung' class='form-control input-md'>
                  
                </div>
              </div>

            </div>
            
            <!--  Preis & Menge  Row -->
            <div class='row '>

              <!-- Produkt Prise Text input-->
              <div class='form-group col-md-5'>
                <label class='col-md-4 control-label' for='product_price'>Produkt Prise</label>  
                <div class='col-md-10'>
                <!-- placeholder Übersetzen-->
                <input id='product_price' name='product_price' type='text' placeholder='Bitte die Prise cents mit '.' angebeb' class='form-control input-md' onkeypress='return isNumberKey(event)' >
                  
                </div>
              </div>

              <!-- Verfügbare Menge Text input-->
              <div class='form-group col-md-5'>
                <label class='col-md-4 control-label' for='available_quantity'>Verfügbare Menge</label>  
                <div class='col-md-10'>
                <input id='available_quantity' name='available_quantity' onkeypress='return isNumberKey(event)' placeholder='Verfügbare Menge' class='form-control input-md'> 
                </div>
              </div>

            </div>

            <!--  Submit & Cancel  Row -->
            <div class='row'>

              <!-- Update Button -->

              <div class='col-md-5 '>
                <input class='btn btn-primary float-right' type='button'  type='submit' name = 'submit'  value='submit' id='updateproduct'>
              </div>

              <!-- Cancel Button -->
              <div class='col-md-5'>
                <input class='btn btn-danger' type='button'  type='cancel' name = 'cancel'  value='cancel' id='cancelupdate'>
              </div>

            </div>

            </form>
            </td>
            </tr>";
    }
} else {
    echo "0 results";
}
$conn->close();

?>
 </tbody>
  <!--Table body-->
</table>
<!--Table-->

</body>
</html>