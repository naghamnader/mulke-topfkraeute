<?php 					
	$specia_hide_show_social= get_theme_mod('hide_show_social','1'); 
	$specia_hs_contact_infos= get_theme_mod('hide_show_contact_infos','1'); 
	
	if ( ($specia_hide_show_social) || ($specia_hs_contact_infos) == '1') :
?>
<section id="specia-header" class="header-top-info-1">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-5">
                <!-- Start Social Media Icons -->
				<?php 
					$specia_facebook_link		= get_theme_mod('facebook_link',''); 
					$specia_linkedin_link		= get_theme_mod('linkedin_link',''); 
					$specia_twitter_link		= get_theme_mod('twitter_link',''); 
					$specia_googleplus_link 	= get_theme_mod('googleplus_link',''); 
					$specia_instagram_link		= get_theme_mod('instagram_link',''); 
					$specia_dribble_link		= get_theme_mod('dribble_link',''); 
					$specia_github_link			= get_theme_mod('github_link',''); 
					$specia_bitbucket_link		= get_theme_mod('bitbucket_link',''); 
					$specia_email_link			= get_theme_mod('email_link',''); 
					$specia_skype_link			= get_theme_mod('skype_link',''); 
					$specia_skype_action_link	= get_theme_mod('skype_action_link',''); 
					$specia_vk_link				= get_theme_mod('vk_link','');
					$specia_pinterest_link		= get_theme_mod('pinterest_link','');					
				?>
				
				
					<?php if($specia_hide_show_social == '1') { ?>
						<ul class="social pull-left">
							<?php if($specia_facebook_link) { ?> 
								<li><a href="<?php echo esc_url($specia_facebook_link); ?>"><i class="fa fa-facebook"></i></a></li>
							<?php } ?>
							
							<?php if($specia_linkedin_link) { ?> 
							<li><a href="<?php echo esc_url($specia_linkedin_link); ?>"><i class="fa fa-linkedin"></i></a></li>
							<?php } ?>
							
							<?php if($specia_twitter_link) { ?> 
							<li><a href="<?php echo esc_url($specia_twitter_link); ?>"><i class="fa fa-twitter"></i></a></li>
							<?php } ?>
							
							<?php if($specia_googleplus_link) { ?> 
							<li><a href="<?php echo esc_url($specia_googleplus_link); ?>"><i class="fa fa-google-plus"></i></a></li>
							<?php } ?>
							
							<?php if($specia_instagram_link) { ?> 
							<li><a href="<?php echo esc_url($specia_instagram_link); ?>"><i class="fa fa-instagram"></i></a></li>
							<?php } ?>
							
							<?php if($specia_dribble_link) { ?> 
							<li><a href="<?php echo esc_url($specia_dribble_link); ?>"><i class="fa fa-dribbble"></i></a></li>
							<?php } ?>
							
							<?php if($specia_github_link) { ?> 
							<li><a href="<?php echo esc_url($specia_github_link); ?>"><i class="fa fa-github-alt"></i></a></li>
							<?php } ?>
							
							<?php if($specia_bitbucket_link) { ?> 
							<li><a href="<?php echo esc_url($specia_bitbucket_link); ?>"><i class="fa fa-bitbucket"></i></a></li>
							<?php } ?>
							
							<?php if($specia_email_link) { ?> 
							<li><a href="mailto:<?php echo esc_attr($specia_email_link); ?>"><i class="fa fa-envelope-o"></i></a></li>
							<?php } ?>
							
							<?php if($specia_skype_link) { ?> 
							<li><a href="<?php echo esc_attr($specia_skype_link); ?>?<?php echo esc_attr($specia_skype_action_link); ?>"><i class="fa fa-skype"></i></a></li>
							<?php } ?>
							
							<?php if($specia_vk_link) { ?> 
							<li><a href="<?php echo esc_url($specia_vk_link); ?>"><i class="fa fa-vk"></i></a></li>
							<?php } ?>
							
							<?php if($specia_pinterest_link) { ?> 
							<li><a href="<?php echo esc_url($specia_pinterest_link); ?>"><i class="fa fa-pinterest-square"></i></a></li>
							<?php } ?>
						</ul>
					<?php } ?>
                <!-- /End Social Media Icons-->
            </div>
			
			<?php 
				$specia_header_email= get_theme_mod('header_email'); 
				$specia_header_contact= get_theme_mod('header_contact_num'); 
			?>

            <div class="col-md-6 col-sm-7">
				<?php if($specia_hs_contact_infos == '1') { ?>
					<!-- Start Contact Info -->
					<ul class="info pull-right">
						<?php if($specia_header_email) { ?> 
							<li class="header-email"><a href="mailto:<?php echo esc_html($specia_header_email); ?>"><i class="fa fa-envelope"></i> <?php echo esc_html($specia_header_email); ?> </a></li>
						<?php } ?>
						
						<?php if($specia_header_contact) { ?> 
							<li class="header-contact"><a href="tel:<?php echo esc_html($specia_header_contact); ?>"><i class="fa fa-phone-square"></i> <?php echo esc_html($specia_header_contact); ?></a></li>
						<?php } ?>
					</ul>
					<!-- /End Contact Info -->
				<?php } ?>
			</div>
        </div>
    </div>
</section>

<div class="clearfix"></div>
<?php endif; ?>