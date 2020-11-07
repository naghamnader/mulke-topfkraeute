<?php
/**
Template Name: Produkt Template
*/
get_header();

?>

<section class="page-wrapper">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
.product-box-parent{
	padding: 1%;
}
.product-box-holder{
	padding-top: 3%;
	overflow: auto;
    border-radius: 10px;
    background: linear-gradient(300deg, rgba(8,225,174,0.24273459383753504) 0%, rgba(152,222,91,0.40800070028011204) 31%, rgba(8,225,174,0.37718837535014005) 100%);
}
p {
    color: black;
    font-size: 15px;
    font-family: 'Raleway', sans-serif;
}
input[type=number]::-webkit-inner-spin-button {
  opacity: 1;
}
</style>
	<div class="container">
					
		<div class="row padding-top-60 padding-bottom-60">	
		<?php 
        include "mulke-db-connection.php";
        //show saved produkte
            $sql = "SELECT * FROM mulke_product";
            $result = $conn->query($sql);
            if (!$result) {
                trigger_error('Invalid query: ' . $conn->error);
            }
            if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<div class='headline col-md-4 product-box-parent' id ='product-box-" . $row['id'] . "'><div class='product-box-holder'>";
                echo "<div class='col-md-12 text-center' height ='200'><img class='img-rounded'  src='" . $row['product_img'] . "'></div>";
                echo "<h3 class='col-md-8'><strong>" . $row['product_name'] . "</strong></h3>";
                echo "<p class='col-md-10'><strong>usage:</strong> " . $row['product_usage'] . "</p>";
                echo "<p class='col-md-7'><strong>Location:</strong> " . $row['product_location'] . "</p>";
                echo "<p class='col-md-7'><strong>Wasser:</strong> " . $row['water_consumption'] . "</p>";
                echo "<p class='col-md-11'><strong>Prise:</strong> " . $row['product_price'] . " &#8364;</p>";
                echo "<div class='col-md-3'><input type='number' value='1' min='0' max='100' step='1'/></div>";
                echo "<div class='col-md-4 text-center'><button type='button'class='btn btn-success btn-lg'><i class='fa fa-cart-plus'></i></button></div>";
                echo "</div></div>";

            }
            } else {
            echo "0 results";
            }
            $conn->close(); 
            
        ?>

		</div><!-- /.row -->
	</div><!-- /.container -->
</section>
<?php
get_footer();
?>