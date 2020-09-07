<?php 
	$heropress_hs_call_actions		= get_theme_mod('hide_show_call_actions','on'); 
	$heropress_call_action_btn_lbl	= get_theme_mod('call_action_button_label');
	$heropress_call_action_btn_link	= get_theme_mod('call_action_button_link');
	if($heropress_hs_call_actions == 'on') :
?>
<section id="specia-cta" class="call-to-action-three wow fadeInDown call-to-action" style="background: url('<?php echo esc_url( get_stylesheet_directory_uri() ); ?>/images/features.jpg') no-repeat fixed 0 0 / cover rgba(0, 0, 0, 0);">
    <div class="background-overlay">
        <div class="container">
            <div class="row padding-top-90 padding-bottom-90">
                
                <div class="col-md-12 text-center">
					<?php 
						$heropress_aboutusquery1 = new wp_query('page_id='.get_theme_mod('call_action_page',true)); 
						if( $heropress_aboutusquery1->have_posts() ) 
						{   while( $heropress_aboutusquery1->have_posts() ) { $heropress_aboutusquery1->the_post(); 
					?>
                    <h2> <?php the_title(); ?></h2>
					<span class=""> <?php the_content(); ?></span> 
					
					<?php if($heropress_call_action_btn_lbl) :?>
                    <br>
					<a href="<?php echo esc_url($heropress_call_action_btn_link); ?>" class="call-btn-3"><?php echo esc_html($heropress_call_action_btn_lbl); ?></a>
					<?php endif; ?>
					<?php } } wp_reset_postdata(); ?>
					
				</div>
				
			</div>
        </div>
    </div>
</section>
<div class="clearfix"></div>
<?php endif; ?>