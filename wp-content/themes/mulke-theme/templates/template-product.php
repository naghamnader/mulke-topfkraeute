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

  <!-- include mulkeproduct Template css style  -->

<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri();?>/templates/product-template-style.css" />


	<div class="container-fluid">
					
        <?php 
        include "convert-product-info.php";
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
                if($row['available_quantity'] <= 0){
                    echo "<div class='sold-out-overlay'> <h1 class='sold-out-text'> Ausverkauft</h1>";
                }
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
                if($row['available_quantity'] <= 0){
                    echo "</div>";
                }
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