<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--[if lt IE 9]><script src='/assets/js/libs/html5shiv.min.js'></script><![endif]-->

	<link href='/assets/css/master.css?d=060217' rel='stylesheet' />

	<link href="/assets/img/favicon.ico" rel="shortcut icon">
	<link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	<title>
		<?php
		if (perch_layout_has('title')) {
			perch_layout_var('title');
		}else{
			perch_pages_title();
		}
		 ?>
	</title>

	<?php perch_page_attributes(); ?>

	<script src="https://use.typekit.net/ita5cmy.js"></script>
	<script>try{Typekit.load({ async: true });}catch(e){}</script>

	<style type="text/css">
		.p-hero {
			background-image: url('/assets/img/slides/<?php perch_layout_var('image'); ?>');
		}
	</style>

</head>

	<body class="<?php if (perch_layout_has('class')) { perch_layout_var('class'); } ?>">
