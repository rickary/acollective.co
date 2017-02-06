<?php if (!defined('PERCH_RUNWAY')) include($_SERVER['DOCUMENT_ROOT'].'/perch/runtime.php');
    perch_layout('global/head', array(
        'class'=> 'members'
    ));
    perch_layout('global/header');

    perch_content('Intro');

    //  Form
    perch_content('Form');

    //  Terms  
    perch_content('Manifesto');


    perch_layout('global/footer');
    perch_layout('global/scripts');
?>
