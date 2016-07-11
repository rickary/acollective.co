<?php if (!defined('PERCH_RUNWAY')) include($_SERVER['DOCUMENT_ROOT'].'/perch/runtime.php');
    perch_layout('global/head', array(
        'class'=> 'community'
    ));
    perch_layout('global/header');

    perch_content('Intro');

    perch_layout('community/members');

    perch_content('Projects');

    perch_layout('community/social');
   

    perch_layout('global/footer');
    perch_layout('global/scripts');
?>
