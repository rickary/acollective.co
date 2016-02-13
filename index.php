<?php
    include($_SERVER['DOCUMENT_ROOT'].'/perch/runtime.php');
    perch_layout('global.head', array(
        'title'=> 'ACOLLECTIVE',
        'class'=> 'home'
    ));
    perch_layout('global.header', array(
        'is-home'=> true
    ));

    perch_layout('global.footer');
    perch_layout('global.scripts');
?>
