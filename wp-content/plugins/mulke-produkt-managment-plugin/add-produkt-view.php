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
  <form 
  class="form-horizontal" >
    <fieldset>
    
    <!-- Form Name -->
    <legend>Neue Produkt</legend>
    
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="produktName">Produkt Name</label>  
      <div class="col-md-4">
      <input id="produktName" name="produktName" type="text" placeholder="Produkt-Name" class="form-control input-md" required="">
        
      </div>
    </div>
    
    <!-- Multiple Checkboxes -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="checkboxes">Produkt-Standort</label>
      <div class="col-md-4">
      <div class="checkbox">
        <label for="checkboxes-0">
          <input type="checkbox" name="checkboxes-sonnig" id="checkboxes-sonnig" value="1">
          sonnig
        </label>
      </div>
      <div class="checkbox">
        <label for="checkboxes-1">
          <input type="checkbox" name="checkboxes-vollsonnig" id="checkboxes-vollsonnig" value="2">
          vollsonnig
        </label>
      </div>
      <div class="checkbox">
        <label for="checkboxes-2">
          <input type="checkbox" name="checkboxes-halbschattig" id="checkboxes-halbschattig" value="3">
          halbschattig
        </label>
      </div>
      <div class="checkbox">
        <label for="checkboxes-3">
          <input type="checkbox" name="checkboxes-schattig" id="checkboxes-schattig" value="4">
          schattig
        </label>
      </div>
      </div>
    </div>
    
    <!-- Multiple Radios -->
    <div class="form-group">
      <label class="col-md-4 control-label" for="wasserVerbrauch">Wasser-Verbrauch</label>
      <div class="col-md-4">
      <div class="radio">
        <label for="wasserVerbrauch-0">
          <input type="radio" name="wasserVerbrauch-mittel" id="wasserVerbrauch-mittel" value="1" checked="checked">
          mittel
        </label>
      </div>
      <div class="radio">
        <label for="wasserVerbrauch-1">
          <input type="radio" name="wasserVerbrauch-maeßigFeucht" id="wasserVerbrauch-maeßigFeucht" value="2">
          mäßig feucht
        </label>
      </div>
      <div class="radio">
        <label for="wasserVerbrauch-2">
          <input type="radio" name="wasserVerbrauch-feucht" id="wasserVerbrauch-feucht" value="3">
          feucht
        </label>
      </div>
      <div class="radio">
        <label for="wasserVerbrauch-3">
          <input type="radio" name="wasserVerbrauch-leichtFeucht" id="wasserVerbrauch-leichtFeucht" value="4">
          leicht feucht
        </label>
      </div>
      <div class="radio">
        <label for="wasserVerbrauch-4">
          <input type="radio" name="wasserVerbrauch-maeßig" id="wasserVerbrauch-maeßig" value="5">
          mäßig
        </label>
      </div>
      <div class="radio">
        <label for="wasserVerbrauch-5">
          <input type="radio" name="wasserVerbrauch-maeßigTrocken" id="wasserVerbrauch-maeßigTrocken" value="6">
          mäßig trocken
        </label>
      </div>
      <div class="radio">
        <label for="wasserVerbrauch-6">
          <input type="radio" name="wasserVerbrauch-trocken" id="wasserVerbrauch-trocken" value="7">
          trocken
        </label>
      </div>
      </div>
    </div>
    
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="produktVerwendung">Produkt-Verwendung</label>  
      <div class="col-md-4">
      <input id="produktVerwendung" name="produktVerwendung" type="text" placeholder="Produkt-Verwendung" class="form-control input-md">
        
      </div>
    </div>
    
    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-4 control-label" for="produktPrise">Produkt-Prise</label>  
      <div class="col-md-4">
      <input id="produktPrise" name="produktPrise" type="text" placeholder="Produkt-Prise" class="form-control input-md" onkeypress="return isNumberKey(event)" >
        
      </div>
    </div>
     <!-- Text input-->
     <div class="form-group">
      <label class="col-md-4 control-label" for="produktAvilableAmount">Verfügbare Menge</label>  
      <div class="col-md-4">
      <input id="produktAvilableAmount" name="produktAvilableAmount" onkeypress="return isNumberKey(event)" placeholder="Verfügbare Menge" class="form-control input-md">
        
      </div>
    </div>
    <!-- Button -->

    
    </fieldset>
    <input class="btn btn-primary" type="submit" value="Submit">

    </form>
</body>
</html>