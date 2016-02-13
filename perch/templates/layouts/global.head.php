<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--[if lt IE 9]><script src='/assets/js/libs/html5shiv.min.js'></script><![endif]-->

	<link href='/assets/css/master.css' rel='stylesheet' />

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

</head>

	<body <?php if (perch_layout_has('class')) { perch_layout_var('class'); } ?>>
