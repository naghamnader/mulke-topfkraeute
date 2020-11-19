  
  // just allow number with comas 
  function isNumberKey(evt)
  {
     var charCode = (evt.which) ? evt.which : event.keyCode
     if (charCode != 46 && charCode > 31 
       && (charCode < 48 || charCode > 57))
        return false;

     return true;
  }



  // add the Save product function with ajax
  jQuery(document).ready(function() {
	jQuery('#saveproduct').on('click', function() {
		//$("#saveproduct").attr("disabled", "disabled");
		var name = $('#product_name').val();
    var productLocation = parseInt($("input[name='product_location']:checked").val())|| 0;
    var waterConsumption = parseInt($("input[name='water_consumption']:checked").val())|| 0;
		var productImg = $('#product_img').val();
		var productUsage = $('#product_usage').val();
    var productPrice = parseFloat($('#product_price').val())|| 0;
    var availableQuantity = parseInt($('#available_quantity').val())|| 0;

    if(checkDataValidation(name, productImg, productUsage, waterConsumption,
        productLocation, availableQuantity, productPrice)){
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
					if(dataResult.statusCode==200){
            alertify.alert('Add product', 'Produkt wurde erfolgreich hochgeladen :)', function(){ location.reload(false); });
					}
					else if(dataResult.statusCode==201){
            alertify.alert('Add product', 'something is not valid!', function(){ location.reload(false); });
					}
					
				}
			});

    }else{
      alertify.alert('Add product', 'something is not valid!');
      
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
					if(dataResult.statusCode==200){
            alertify.alert('Delete product', 'Produkt wurde erfolgreich gelöscht :)', function(){ document.getElementById(productId).outerHTML=""; });
            
					}
					else if(dataResult.statusCode==201){
            alertify.alert('Delete product', 'something is not valid!');
					}
					
				}
     });
     }
     //cancel function
    , function(){ return;});   
  }

  function showEditProduct(productId)
  {
    document.getElementById("product-edit-" + productId).style.display = 'table-row';

   /*  alertify.confirm('Edit product', 'Sure to Edit?', function(){ 
      jQuery.ajax({
    url: pluginUrl + '/mulke-product-managment/update-product.php',
    type:'POST',
    data:{productId:productId},
    cache: false
     });
     }
     //cancel function
    , function(){ return;});   */ 
  }