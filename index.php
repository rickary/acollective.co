<?php if (!defined('PERCH_RUNWAY')) include($_SERVER['DOCUMENT_ROOT'].'/perch/runtime.php');

    perch_layout('global/head', array(
        'class'=> 'home'
    ));
    perch_layout('global/header', array(
        'is-home'=> true
    ));

    perch_content('Intro');

    //perch_layout('home/social');

    perch_layout('multi-slides', array(
        'colour' => 'p-section--orange',
        'title' => 'The Space'
    ));

    perch_layout('testimonials');

    perch_layout('home/free-stuff');

    perch_layout('membership');

    perch_layout('home/viewing');

    perch_layout('map');

    perch_layout('global/footer');
    perch_layout('global/scripts');
?>
