<section class="p-section p-section--white">
	<div class="b-container">
		<h2 class="p-section__title">We’re Social</h2>

		<div class="p-section-text">
			<?php perch_content('Social Intro'); ?>
		</div>

		<div>

			<div class="p-community-container">
				<div class="p-social-links">
					<h3>Follow Us</h3>
					<ul class="b-nav b-nav--banner">
						<li><a href="">Twitter</a></li>
						<li><a href="">Facebook</a></li>
					</ul>
				</div>
			</div>

		<?php 

			//	EVENTS

			$today = Date('Y-m-d');

			if (perch_events_custom(array(
				'filter'   => 'eventDateTime',
				'match'    => 'gte',
				'value'    => $today,
				'count'		=> 1
			), true)) {
				
				perch_events_custom(array(
					'filter'   => 'eventDateTime',
					'match'    => 'gte',
					'value'    => $today,
					'count'		=> 1
				));

			} else {

				?>
				<div class="p-event">
					<h3 class="p-event__heading">Regular Meet Ups &amp; Drinks</h3>

					<div class="p-event__inner">
						<h4 class="p-event__title">Next Event TBC</h4>

					    <div class="p-event__desc">
					    	<p>Stay up to date on <a href="http://twitter.com/acollectivehq">Twitter</a> and <a href="http://facebook.com/acollectivehq">Facebook</a>.</p>
					    </div>	
					</div>
				</div>
				<?php

			}
		?>

			<!-- <div class="p-community-container">
				<div class="p-listen">
					<h3>We’re Listening to</h3>
					<?php perch_content('Listening'); ?>
				</div>
			</div> -->
		</div>
	</div>
</section>