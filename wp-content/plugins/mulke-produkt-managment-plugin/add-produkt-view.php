<?php
 include_once 'db-connection.php';
 if(isset($_POST)){

    if( isset($_POST['submit']) ) {
      foreach ($_POST as $key => $value) {
            $valid = checkIfInputIsValid($key, $value);
            echo "<p>";
            echo $key;
            echo "   ";
            echo $value;
            echo "   ";
            echo $valid;
            echo "</p>"; 
            
          }
    }
}
function checkIfInputIsValid($inputName, $inputVal){
  $valid = false;
    if(empty($inputVal)){
      return $valid;
    }
    //check if Text contains location
    if(strpos($inputName, LOCATION) == true ){
      $valid = is_int($inputVal);

    } else {
      switch ($inputName) {
        case PRODUCT_NAME :
        case PRODUCT_IMG :
        case USAGE :
          $valid = is_string($inputVal);
            break;
        case WATER_CONSUMPTION :
        case AVAILABLE_QUANTITY :
          $valid = is_int($inputVal);
            break;
        case PRICE :
            $valid = is_decimal($inputVal);
            break;
        }
    }
    return $valid;
}
function is_decimal( $val ){
    return is_numeric( $val ) && floor( $val ) != $val;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1894.5">
  <style type="text/css">
  </style>
   <script language="Javascript">
       // just allow number with comas 
       function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : event.keyCode
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
    </script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<form action="<?php the_permalink(); ?>" method='POST' class="form-horizontal" >

    <fieldset>
    
    <!-- Form Name -->
    <legend>Neue Produkt</legend>
    
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="product_name">Produkt Name</label>  
      <div class="col-md-4">
      <input id="product_name" name="product_name" type="text" placeholder="Produkt Name" class="form-control input-md" required="">
        
      </div>
    </div>
    
    <!-- Multiple Checkboxes -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="checkboxes">Produkt Standort</label>
      <div class="col-md-4">
      <div class="checkbox">
        <label for="checkboxes-0">
          <input type="checkbox" name="checkboxes_location_sonnig" id="checkboxes_location_sonnig" value="1">
          sonnig
        </label>
      </div>
      <div class="checkbox">
        <label for="checkboxes-1">
          <input type="checkbox" name="checkboxes_location_vollsonnig" id="checkboxes_location_vollsonnig" value="2">
          vollsonnig
        </label>
      </div>
      <div class="checkbox">
        <label for="checkboxes-2">
          <input type="checkbox" name="checkboxes_location_halbschattig" id="checkboxes_location_halbschattig" value="3">
          halbschattig
        </label>
      </div>
      <div class="checkbox">
        <label for="checkboxes-3">
          <input type="checkbox" name="checkboxes_location_schattig" id="checkboxes_location_schattig" value="4">
          schattig
        </label>
      </div>
      </div>
    </div>
    
    <!-- Multiple Radios -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="water_consumption">Wasser Verbrauch</label>
      <div class="col-md-4">
      <div class="radio">
        <label for="water_consumption_0">
          <input type="radio" name="water_consumption" id="water_consumption_mittel" value="1">
          mittel
        </label>
      </div>
      <div class="radio">
        <label for="water_consumption_1">
          <input type="radio" name="water_consumption" id="water_consumption_maeßigFeucht" value="2">
          mäßig feucht
        </label>
      </div>
      <div class="radio">
        <label for="water_consumption_2">
          <input type="radio" name="water_consumption" id="water_consumption_feucht" value="3">
          feucht
        </label>
      </div>
      <div class="radio">
        <label for="water_consumption_3">
          <input type="radio" name="water_consumption" id="water_consumption_leichtFeucht" value="4">
          leicht feucht
        </label>
      </div>
      <div class="radio">
        <label for="water_consumption_4">
          <input type="radio" name="water_consumption" id="water_consumption_maeßig" value="5">
          mäßig
        </label>
      </div>
      <div class="radio">
        <label for="water_consumption_5">
          <input type="radio" name="water_consumption" id="water_consumption_maeßigTrocken" value="6">
          mäßig trocken
        </label>
      </div>
      <div class="radio">
        <label for="water_consumption_6">
          <input type="radio" name="water_consumption" id="water_consumption_trocken" value="7">
          trocken
        </label>
      </div>
      </div>
    </div>
    
    <!-- Text input-->
     <div class="form-group">
        <label class="col-md-4 control-label" for="product_img">Produkt Bild Url</label>  
      <div class="col-md-4">
        <input id="product_img" name="product_img" type="text" placeholder="Produkt Bild Url" class="form-control input-md" >
        
      </div>
    </div>

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="product_usage">Produkt Verwendung</label>  
      <div class="col-md-4">
      <input id="product_usage" name="product_usage" type="text" placeholder="Produkt Verwendung" class="form-control input-md">
        
      </div>
    </div>
    
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="product_price">Produkt Prise</label>  
      <div class="col-md-4">
      <input id="product_price" name="product_price" type="text" placeholder="Produkt Prise" class="form-control input-md" onkeypress="return isNumberKey(event)" >
        
      </div>
    </div>
     <!-- Text input-->
     <div class="form-group">
      <label class="col-md-4 control-label" for="available_quantity">Verfügbare Menge</label>  
      <div class="col-md-4">
      <input id="available_quantity" name="available_quantity" onkeypress="return isNumberKey(event)" placeholder="Verfügbare Menge" class="form-control input-md">
        
      </div>
    </div>
    <!-- Submit Button -->
    <input class="btn btn-primary" type="submit" name = "submit"  value="submit">

    
    </fieldset>

    </form>
</body>
</html>