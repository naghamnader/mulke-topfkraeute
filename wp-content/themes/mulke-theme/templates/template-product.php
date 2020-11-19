<?php
/* Description: show all product in box view and sidebar with shopping cart )
Author: Nagham Nader , ??  */
/**
Template Name: Produkt Template
*/
get_header();

?>

<section class="page-wrapper">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<!-- To prevent forms from submitting again when refreshing the page // double pay, etc  -->
<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
<style>
body {
  overscroll-behavior-y: none;
}
.product-box-parent{
    height: 100%;
	border-radius: 10px;
    background: linear-gradient(300deg, rgba(8,225,174,0.24273459383753504) 0%, rgba(152,222,91,0.40800070028011204) 31%, rgba(8,225,174,0.37718837535014005) 100%);

}
.product-box-parent-col{
	position: relative;

}
p {
    color: black;
    font-size: 15px;
    font-family: 'Raleway', sans-serif;
}
.product-row{

	/** same height for all columns */
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	flex-wrap: wrap;
} 
.cart-btn-holder{
    bottom: 2%;
    position: absolute;
}
input[type=number]::-webkit-inner-spin-button {
	/** show the number picker buttons all the time */
  opacity: 1;
}
.product-img{
	width:100% !important;
    height: 250px!important;
}
.img-holder{
	margin-top: 3%;
    margin-bottom: 3%;
}
.prise-col{
    margin-bottom: 25%;
}
</style>

	<div class="container-fluid">
					
        <?php 
        
        include "mulke-db-connection.php";
        //show saved produkte
            $sql = "SELECT * FROM mulke_product";
            $result = $conn->query($sql);
            if (!$result) {
                trigger_error('Invalid query: ' . $conn->error);
            }
            echo "<div class='col-md-9'>";
            if ($result->num_rows > 0) {
				$i = 1;
            // output data of each row and list all products in styled boxes
            while($row = $result->fetch_assoc()) {
                // every 3 products start a new row
				if($i % 3 == 1) {
					echo "<div class='row product-row padding-top-30 padding-bottom-30'>";
				}
                echo "<div class='headline col-md-4 product-box-parent-col' id ='product-box-" . $row['id'] . "'><div class='product-box-parent'>";
                echo "<div class='col-md-12 text-center img-holder'><img class='img-rounded product-img' src='" . $row['product_img'] . "'></div><!-- /.img-holder -->";
                echo "<h3 class='col-md-10'><strong>" . $row['product_name'] . "</strong></h3>";
                echo "<p class='col-md-10'><strong>usage:</strong> " . $row['product_usage'] . "</p>";
                echo "<p class='col-md-10'><strong>Location:</strong> " . getProductLocation($row['product_location']) . "</p>";
                echo "<p class='col-md-10'><strong>Wasser:</strong> " . getProductWaterConsumption($row['water_consumption']) . "</p>";
                echo "<p class='col-md-11 prise-col'><strong>Prise:</strong> " . $row['product_price'] . " &#8364;</p>";
                // add to cart button with data : product name, Product prise
				echo "<div class='col-md-7 cart-btn-holder'>";
				echo do_shortcode("[wp_cart_button name='" . $row['product_name'] . "' price='" . $row['product_price'] . "']");
				echo "</div><!-- /.cart-btn-holder -->";
				echo "</div></div><!-- /.product-box-parent -->";

                // every 3 products end current row
				if($i % 3 == 0 || $i == $result->num_rows) {
					echo "</div> <!-- /.product-row -->";
				}
                $i++;
            }
            echo "</div><!-- /.products-column -->";
            
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
        <!-- check if the product side bar is created and show it with shopping cart   -->
    <?php if ( is_active_sidebar( 'sidebar-product' ) ) : ?>
    <?php dynamic_sidebar( 'sidebar-product' ); ?>
    <?php endif; ?>

	</div><!-- /.container -->
</section>
<?php
get_footer();
?>