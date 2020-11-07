<?php 
	$heropress_hs_social			= get_theme_mod('hide_show_social','1'); 
	$heropress_hs_contact_infos		= get_theme_mod('hide_show_contact_infos','1'); 
	if ( ($heropress_hs_social) || ($heropress_hs_contact_infos) == '1') :
?>
<section id="specia-header" class="header-top-info-3 header-top-info-1">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-5">
                <!-- Start Social Media Icons -->
				<?php 
					$heropress_facebook_link		= get_theme_mod('facebook_link',''); 
					$heropress_linkedin_link		= get_theme_mod('linkedin_link',''); 
					$heropress_twitter_link			= get_theme_mod('twitter_link',''); 
					$heropress_googleplus_link		= get_theme_mod('googleplus_link','');
					$heropress_instagram_link		= get_theme_mod('instagram_link',''); 
					$heropress_dribble_link			= get_theme_mod('dribble_link',''); 
					$heropress_github_link			= get_theme_mod('github_link',''); 
					$heropress_bitbucket_link		= get_theme_mod('bitbucket_link',''); 
					$heropress_email_link			= get_theme_mod('email_link',''); 
					$heropress_skype_link			= get_theme_mod('skype_link',''); 
					$heropress_skype_action_link	= get_theme_mod('skype_action_link',''); 
					$heropress_vk_link				= get_theme_mod('vk_link','');
					$heropress_pinterest_link		= get_theme_mod('pinterest_link','');				
				?>
				
				
					<?php if($heropress_hs_social == '1') { ?>
						<ul class="social pull-left">
							<?php if($heropress_facebook_link) { ?> 
								<li><a href="<?php echo esc_url($heropress_facebook_link); ?>"><i class="fa fa-facebook"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_linkedin_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_linkedin_link); ?>"><i class="fa fa-linkedin"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_twitter_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_twitter_link); ?>"><i class="fa fa-twitter"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_googleplus_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_googleplus_link); ?>"><i class="fa fa-google-plus"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_instagram_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_instagram_link); ?>"><i class="fa fa-instagram"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_dribble_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_dribble_link); ?>"><i class="fa fa-dribbble"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_github_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_github_link); ?>"><i class="fa fa-github-alt"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_bitbucket_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_bitbucket_link); ?>"><i class="fa fa-bitbucket"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_email_link) { ?> 
							<li><a href="mailto:<?php echo esc_attr($heropress_email_link); ?>"><i class="fa fa-envelope-o"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_skype_link) { ?> 
							<li><a href="<?php echo esc_attr($heropress_skype_link); ?>?<?php echo esc_attr($heropress_skype_action_link); ?>"><i class="fa fa-skype"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_vk_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_vk_link); ?>"><i class="fa fa-vk"></i></a></li>
							<?php } ?>
							
							<?php if($heropress_pinterest_link) { ?> 
							<li><a href="<?php echo esc_url($heropress_pinterest_link); ?>"><i class="fa fa-pinterest-square"></i></a></li>
							<?php } ?>
						</ul>
					<?php } ?>
                <!-- /End Social Media Icons-->
            </div>
			
			<?php 
				$heropress_header_email		= get_theme_mod('header_email'); 
				$heropress_header_contact	= get_theme_mod('header_contact_num'); 
			?>

            <div class="col-md-6 col-sm-7">
				<?php if($heropress_hs_contact_infos == '1') { ?>
					<!-- Start Contact Info -->
					<ul class="info pull-right">
						<?php if($heropress_header_email) { ?> 
							<li><a href="mailto:<?php echo esc_html($heropress_header_email); ?>"><i class="fa fa-envelope"></i> <?php echo esc_html($heropress_header_email); ?> </a></li>
						<?php } ?>
						
						<?php if($heropress_header_contact) { ?> 
							<li><a href="tel:<?php echo esc_html($heropress_header_contact); ?>"><i class="fa fa-phone-square"></i> <?php echo esc_html($heropress_header_contact); ?></a></li>
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