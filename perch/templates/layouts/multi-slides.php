<section class="p-section <?php echo perch_layout_var('colour'); ?>">
	<div class="b-container">
		<?php 
			if (perch_layout_has('title')) {
				echo '<h2 class="p-section__title">' . perch_layout_var('title', true) . '</h2>';
			}
		 ?>



		<div class="p-slides p-slides--large">
			<?php perch_content('Landscape Images') ?>
		</div>

		<div class="p-two-slides">
			<div class="p-two-slides__inner p-slides--small">
				<?php perch_content('Square Images') ?>
			</div>

			<div class="p-two-slides__inner p-slides--medium">
				<?php perch_content('Portrait Slides') ?>
			</div>
		</div>

	</div>
</section>