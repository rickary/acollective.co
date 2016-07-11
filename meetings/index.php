<?php if (!defined('PERCH_RUNWAY')) include($_SERVER['DOCUMENT_ROOT'].'/perch/runtime.php');
    perch_layout('global/head', array(
        'class'=> 'meet'
    ));
    perch_layout('global/header');

  	perch_content('Intro');

  	perch_layout('multi-slides');

  	perch_layout('meeting/facilities');
  	perch_layout('meeting/rates');
  	perch_layout('meeting/book');

    perch_layout('global/footer');
    perch_layout('global/scripts');
?>
