<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>

    <!-- include AlertifyJs -->
  <script type="text/javascript" src="<?php echo plugins_url(); ?>/mulke-product-managment/styling/alertifyjs/alertify.min.js"></script>
  <link rel="stylesheet" href="<?php echo plugins_url(); ?>/mulke-product-managment/styling/alertifyjs/css/alertify.min.css" />
  <link rel="stylesheet" href="<?php echo plugins_url(); ?>/mulke-product-managment/styling/alertifyjs/css/themes/default.min.css" />

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1894.5">
  <style type="text/css">
  </style>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script>
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
</head>
<body>
<form method='post' class="form-horizontal" >

    <fieldset>
    
    <!-- Neue Produk Form  -->
    <legend>Neue Produkt</legend>
    
    <!-- Produkt NameText input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="product_name">Produkt Name</label>  
      <div class="col-md-4">
      <input id="product_name" name="product_name" type="text" placeholder="Produkt Name" class="form-control input-md" required="">
        
      </div>
    </div>
    

    <!-- Produkt Standort Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_location">Produkt Standort</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="product_location-0">
      <input type="radio" name="product_location" id="product_location-0" value="1">
      sonnig
    </label>
	</div>
  <div class="radio">
    <label for="product_location-1">
      <input type="radio" name="product_location" id="product_location-1" value="2">
      vollsonnig
    </label>
	</div>
  <div class="radio">
    <label for="product_location-2">
      <input type="radio" name="product_location" id="product_location-2" value="3">
      halbschattig
    </label>
	</div>
  <div class="radio">
    <label for="product_location-3">
      <input type="radio" name="product_location" id="product_location-3" value="4">
      schattig
    </label>
	</div>
  </div>
</div>
    
    <!-- Wasser Verbrauch Multiple Radios -->
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
    
    <!-- Produkt Bild Url Text input-->
     <div class="form-group">
        <label class="col-md-4 control-label" for="product_img">Produkt Bild Url</label>  
      <div class="col-md-4">
        <input id="product_img" name="product_img" type="text" placeholder="Produkt Bild Url" class="form-control input-md" >
        
      </div>
    </div>

    <!-- Produkt Verwendung Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="product_usage">Produkt Verwendung</label>  
      <div class="col-md-4">
      <input id="product_usage" name="product_usage" type="text" placeholder="Produkt Verwendung" class="form-control input-md">
        
      </div>
    </div>
    
    <!-- Produkt Prise Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="product_price">Produkt Prise</label>  
      <div class="col-md-4">
      <!-- placeholder Übersetzen-->
      <input id="product_price" name="product_price" type="text" placeholder="Bitte die Prise cents mit '.' angebeb" class="form-control input-md" onkeypress="return isNumberKey(event)" >
        
      </div>
    </div>
     <!-- Verfügbare Menge Text input-->
     <div class="form-group">
      <label class="col-md-4 control-label" for="available_quantity">Verfügbare Menge</label>  
      <div class="col-md-4">
      <input id="available_quantity" name="available_quantity" onkeypress="return isNumberKey(event)" placeholder="Verfügbare Menge" class="form-control input-md">
        
      </div>
    </div>
    <!-- Submit Button -->
    <input class="btn btn-primary" type="button"  type="submit" name = "submit"  value="submit" id="saveproduct">

    
    </fieldset>

    </form>


<script>
var pluginUrl = '<?php echo plugins_url(); ?>' ;

$(document).ready(function() {
	$('#saveproduct').on('click', function() {
		$("#saveproduct").attr("disabled", "disabled");
		var name = $('#product_name').val();
    var productLocation = parseInt($("input[name='product_location']:checked").val())|| 0;
    var waterConsumption = parseInt($("input[name='water_consumption']:checked").val())|| 0;
		var productImg = $('#product_img').val();
		var productUsage = $('#product_usage').val();
    var productPrice = parseFloat($('#product_price').val())|| 0;
    var availableQuantity = parseInt($('#available_quantity').val())|| 0;

    if(checkDataValidation(name, productImg, productUsage, waterConsumption,
        productLocation, availableQuantity, productPrice)){
				$.ajax({
          url: pluginUrl + "/mulke-product-managment/save-mulke-product.php",
				type: "POST",
				data: {
					name: name,
					productLocation: productLocation,
					waterConsumption: waterConsumption,
          productImg: productImg,
					productUsage: productUsage,
					productPrice: productPrice,
					availableQuantity: availableQuantity,
			
				},
				cache: false,
				success: function(dataResult){
					var dataResult = JSON.parse(dataResult);
					if(dataResult.statusCode==200){
            alertify.alert('Add product', 'Produkt wurde erfolgreich hochgeladen :)', function(){ location.reload(false); });
					}
					else if(dataResult.statusCode==201){
            alertify.alert('Add product', 'something is not valid!', function(){ location.reload(false); });
					}
					
				}
			});

    }else{
      alertify.alert('Add product', 'something is not valid!', function(){ location.reload(false); });
      
    }
    function checkDataValidation(name, productImg, productUsage, waterConsumption,
                              productLocation, availableQuantity, productPrice){

  if(typeof(name) != "string"  || name === ""
  || typeof(productImg) != "string" || productImg === ""
  || typeof(productUsage) != "string" || productUsage === ""
  || typeof(productLocation) != "number" || productLocation === 0
  || typeof(waterConsumption) != "number" || waterConsumption === 0
  || typeof(availableQuantity) != "number" || availableQuantity === 0
  || typeof(productPrice) != "number" || productPrice ===0){
    return false;
  }
  return true;

}
	});
});
</script>
</body>
</html>