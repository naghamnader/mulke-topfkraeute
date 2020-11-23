<?php
/* Description: Zeigt alle Produkte im Shop und den Warenkorb an der Seite an. 
Author: Nagham Nader , Daria Jarzabek  */
/**
Template Name: Produkt Template
*/
get_header();

?>

<section class="page-wrapper">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<!-- Verhindert die erneute Erstellung von Formen beim aktualisieren der Seite, Doppelte Zahlungen,etc  -->
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
        //gespeicherte Produkte anzeigen
            $sql = "SELECT * FROM mulke_product";
            $result = $conn->query($sql);
            if (!$result) {
                trigger_error('Invalid query: ' . $conn->error);
            }
            echo "<div class='col-md-9'>";
            if ($result->num_rows > 0) {
				$i = 1;
            // Listet alle Produkte in gestlyten Boxen auf
            while($row = $result->fetch_assoc()) {
                // Erstellung einer neuen Boostrap Row nach jedem 3. Produkt
				if($i % 3 == 1) {
					echo "<div class='row product-row padding-top-30 padding-bottom-30'>";
                }
 
                echo "<div class='headline col-md-4 product-box-parent-col' id ='product-box-" . $row['id'] . "'><div class='product-box-parent'>";
                if($row['available_quantity'] <= 0){
                    echo "<div class='sold-out-overlay'> <h1 class='sold-out-text'> Ausverkauft</h1>";
                }
                echo "<div class='col-md-12 text-center img-holder'><img class='img-rounded product-img' src='" . $row['product_img'] . "'></div><!-- /.img-holder -->";
                echo "<h3 class='col-md-10'><strong>" . $row['product_name'] . "</strong></h3>";
                echo "<p class='col-md-10'><strong>Verwendung:</strong> " . $row['product_usage'] . "</p>";
                echo "<p class='col-md-10'><strong>Standort:</strong> " . getProductLocation($row['product_location']) . "</p>";
                echo "<p class='col-md-10'><strong>Wasser:</strong> " . getProductWaterConsumption($row['water_consumption']) . "</p>";
                echo "<p class='col-md-11 prise-col'><strong>Preis:</strong> " . $row['product_price'] . " &#8364;</p>";
                // Anzeige des "Zum Warenkorb hinzufügen"-Buttons mit Name und Preis des Produktes
				echo "<div class='col-md-7 cart-btn-holder'>";
				echo do_shortcode("[wp_cart_button name='" . $row['product_name'] . "' price='" . $row['product_price'] . "']");
                echo "</div><!-- /.cart-btn-holder -->";
                if($row['available_quantity'] <= 0){
                    echo "</div>";
                }
                echo "</div></div><!-- /.product-box-parent -->";

                // Beendung der aktuellen Boostrap Row nach 3 Produkten
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
        <!-- Überprüfung der Produkt-Sidebar, ist sie Vorhanden wird der Warenkorb angezeigt  -->
    <?php if ( is_active_sidebar( 'sidebar-product' ) ) : ?>
    <?php dynamic_sidebar( 'sidebar-product' ); ?>
    <?php endif; ?>

	</div><!-- /.container -->
</section>
<?php
get_footer();
?>