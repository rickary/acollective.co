<?php include('perch/runtime.php'); ?>
<?php perch_layout('global.header', array(
	    'class'=>'home',
	)); ?>

	<section id="about" class="home home--one home--white js-fullHeight">
		<div class="wrapper">
			<?php perch_content('About'); ?>
		</div>
	</section>

	<div class="home__break-one">
		<img src="/public/images/break-one.jpg" alt="Concept Art" class="home__img" />

		<img src="/public/images/office-two.jpg" alt="Office 2 Concept Art" class="home__mobile-img" />
	</div>

	<section id="membership" class="home home--two home--black js-fullHeight home--membership">
		<div class="wrapper">
			<?php perch_content('Membership'); ?>
		</div>

		<a href="#top" class="home__section-top js-scrollTo">Top</a>
	</section>

	<section id="offering" class="home home--three home--white js-fullHeight">
		<div class="wrapper">
			<?php perch_content('Offering'); ?>
		</div>

		<a href="#top" class="home__section-top js-scrollTo">Top</a>
	</section>

	<div class="home__break-two">
		<img src="/public/images/break-two.jpg" alt="Floorplans for No. 22" class="home__img" />

		<img src="/public/images/office-six.jpg" alt="Office 6 Concept Art" class="home__mobile-img" />
	</div>

	<section id="enquire" class="home home--four home--black home--enquire js-fullHeight">
		<div class="wrapper">
			<?php perch_content('Enquire'); ?>
		</div>

		<a href="#top" class="home__section-top js-scrollTo">Top</a>
	</section>

	<div class="home__map embed-container--maps">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2347.466448602391!2d-1.0805196529174836!3d53.958984124375185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487931af156cd143%3A0xffa9e83160cc6809!2s22+Pavement%2C+York+YO1+9UP!5e0!3m2!1sen!2suk!4v1434405397080" frameborder="0" style="border:0"></iframe>
	</div>


<?php perch_layout('global.footer'); ?>