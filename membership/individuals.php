<?php include('../perch/runtime.php'); ?>
<?php perch_layout('global.header', array(
	    'class'=>'membership',
	)); ?>


<section class="section first-section section--white">
	<div class="wrapper">
		<?php perch_content('Form'); ?>
	</div>
</section>

<section class="section section--black">
	<div class="wrapper">
		<h1 class="section-title">Members Manifesto</h1>
		<?php perch_content('Manifesto'); ?>
	</div>
</section>







<?php perch_layout('global.footer'); ?>