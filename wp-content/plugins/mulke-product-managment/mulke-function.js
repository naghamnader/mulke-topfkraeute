  
  /* Description: alle Javascript methoden, welche in diesem Plugin genutzt werden
    Author: Nagham Nader , Daria Jarzabek
 */

  // nur nummern mit Komma zulassen
  function isNumberKey(evt)
  {
     var charCode = (evt.which) ? evt.which : event.keyCode
     if (charCode != 46 && charCode > 31 
       && (charCode < 48 || charCode > 57))
        return false;

     return true;
  }

  function setlocationValue(radiosValue , productid){
    jQuery("input[name=product_location_edit" + productid + "][value=" + radiosValue + "]").prop('checked', true);

  }
  function setWaterValue(radiosValue , productid){
    jQuery("input[name=water_consumption_edit" + productid + "][value=" + radiosValue + "]").prop('checked', true);

  }


  // hinzufügen der "Hinzufügen"-Button Funktionalität mit Ajax 
  jQuery(document).ready(function() {
	jQuery('#saveproduct').on('click', function() {

    //abruf der Produktinformationen durch Nutzereingabe 
		var name = $('#product_name').val();
    var productLocation = parseInt($("input[name='product_location']:checked").val())|| 0;
    var waterConsumption = parseInt($("input[name='water_consumption']:checked").val())|| 0;
		var productImg = $('#product_img').val();
		var productUsage = $('#product_usage').val();
    var productPrice = parseFloat($('#product_price').val())|| 0;
    var availableQuantity = parseInt($('#available_quantity').val())|| 0;

    // Überprüfung von -> string , int, empty, null ...
    if(checkDataValidation(name, productImg, productUsage, waterConsumption,
        productLocation, availableQuantity, productPrice)){
          // Sendet AJAX Post anfrage an save-mulke-produkt.php mit allen Produktinformationen
            jQuery.ajax({
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
          // wenn erfolgreich, zeige Meldung an und lade Seite erneut
					if(dataResult.statusCode==200){
            alertify.alert('Produkt hinzufügen', 'Produkt wurde erfolgreich hinzugefügt :)', function(){ location.reload(false); });
          }
          
					else if(dataResult.statusCode==201){
            alertify.alert('Produkt hinzufügen', 'Etwas stimmt nicht, versuchen Sie es bitte noch einmal!', function(){ location.reload(false); });
					}
					
				}
			});

    }else{
      alertify.alert('Produkt hinzufügen', 'Eingabe fehlerhaft!');
      
    }



	});
});

  // Überprüft zu speichernde Werte vor übergabe an die Datenbank, wenn Produktanzahl 0 wird "Ausverkauft"-Overlay im Shop angezeigt
  function checkDataValidation(name, productImg, productUsage, waterConsumption,
    productLocation, availableQuantity, productPrice){

    if(typeof(name) != "string"  || name === ""
    || typeof(productImg) != "string" || productImg === ""
    || typeof(productUsage) != "string" || productUsage === ""
    || typeof(productLocation) != "number" || productLocation === 0
    || typeof(waterConsumption) != "number" || waterConsumption === 0
    || typeof(availableQuantity) != "number" || availableQuantity < 0
    || typeof(productPrice) != "number" || productPrice ===0){
    return false;
    }
    return true;

  }

// Sendet AJAX Post anfrage an delete-product.php mit zu löschender ProduktID
function deleteProduct(productId)
  {

    alertify.confirm('Delete product', 'Sure to delete?', function(){ 
      jQuery.ajax({
    url: pluginUrl + '/mulke-product-managment/delete-product.php',
    type:'POST',
    data:{productId:productId},
    cache: false,
      success: function(dataResult){
          var dataResult = JSON.parse(dataResult);
          // wenn erfolgreich, zeige Meldung an und lade Seite erneut
					if(dataResult.statusCode==200){
            alertify.alert('Produkt löschen', 'Produkt wurde erfolgreich gelöscht :)', function(){ document.getElementById(productId).outerHTML="";document.getElementById("product-edit-" + productId).outerHTML=""; });
            
					}
					else if(dataResult.statusCode==201){
            alertify.alert('Produkt löschen', 'Etwas stimmt nicht, bitte versuchen Sie es erneut!');
					}
					
				}
     });
     }
     //Abbrechen Funktion
    , function(){ return;});   
  }

// Zeigt "Produkt bearbeiten" Form an, wenn man auf "bearbeiten"-Button klickt 
  function showEditProduct(productId)
  {
    var x = document.getElementById("product-edit-" + productId);
    if(x.style.display === "none"){
      //Verberge alle angezeigten "bearbeiten"-Formen
      var formsToHide = document.getElementsByClassName("product-edit-form")
      if (formsToHide.length > 0){
        for(var i = 0; i < formsToHide.length; i++){
          formsToHide[i].style.display = "none";
       }
       x.style.display = "table-row";
       x.scrollIntoView(false);
      }
    }
    else {
     
        x.style.display = "none";
    }

  }

  function updateProduct(productId){
     // Erhalte Produktinformationen durch Nutzereingabe
		var name = jQuery('#product_name'+ productId).val();
    var productLocation = parseInt(jQuery("input[name='product_location_edit" + productId+ "']:checked").val())|| 0;
    var waterConsumption = parseInt(jQuery("input[name='water_consumption_edit" + productId+ "']:checked").val())|| 0;
		var productImg = jQuery('#product_img'+ productId).val();
		var productUsage = jQuery('#product_usage'+ productId).val();
    var productPrice = parseFloat(jQuery('#product_price'+ productId).val())|| 0;
    var availableQuantity = parseInt(jQuery('#available_quantity'+ productId).val())|| 0;


    // Überprüfung von -> string , int, empty, null ...
    if(checkDataValidation(name, productImg, productUsage, waterConsumption,
        productLocation, availableQuantity, productPrice)){
          // Sendet AJAX Post anfrage an save-mulke-product.php mit zu speichernden Produktinformationen
            jQuery.ajax({
          url: pluginUrl + "/mulke-product-managment/update-product.php",
				type: "POST",
				data: {
          id : productId,
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
          // wenn erfolgreich, zeige Meldung an und lade Seite erneut mit neuem Inhalt
					if(dataResult.statusCode==200){
            alertify.alert('Produkt bearbeiten', 'Produkt wurde erfolgreich bearbeitet :)', function(){ location.reload(false); });
          }
          
					else if(dataResult.statusCode==201){
            alertify.alert('Produkt bearbeiten', 'Etwas stimmt nicht, bitte versuchen Sie es erneut!', function(){ location.reload(false); });
					}
					
				}
			});

    }else{
      alertify.alert('Produkt bearbeiten', 'Eingabe fehlerhaft!');
      
    }
  }