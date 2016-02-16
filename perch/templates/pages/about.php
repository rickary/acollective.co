<?php
    perch_layout('global/head', array(
        'class'=> 'about'
    ));
    perch_layout('global/header');

	perch_content('Intro');

	perch_layout('about/press');
	perch_layout('about/faq');

    perch_layout('global/footer');
    perch_layout('global/scripts');
?>
