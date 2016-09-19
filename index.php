<?php if (!defined('PERCH_RUNWAY')) include($_SERVER['DOCUMENT_ROOT'].'/perch/runtime.php');

    
  $bg = array('1.jpg', '2.jpg'); // array of filenames

  $i = rand(0, count($bg)-1); // generate random number size of the array
  $selectedBg = "$bg[$i]"; // set variable equal to which random filename was chosen

    perch_layout('global/head', array(
        'class'=> 'home',
        'image'=> $selectedBg
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
