<?php
    # include the API
    include('../../../../core/inc/api.php');
    
    $API  = new PerchAPI(1.0, 'perch_events');
    $Lang = $API->get('Lang');

    # include your class files
    include('../PerchEvents_Events.class.php');
    include('../PerchEvents_Event.class.php');
    include('../PerchEvents_Categories.class.php');
    include('../PerchEvents_Category.class.php');
    include('../PerchEvents_Cache.class.php');
    
    # Set the page title
    $Perch->page_title = $Lang->get('Manage Events');


    # Do anything you want to do before output is started
    include('../modes/delete.pre.php');
    
    
    # Top layout
    include(PERCH_CORE . '/inc/top.php');

    
    # Display your page
    include('../modes/delete.post.php');
    
    
    # Bottom layout
    include(PERCH_CORE . '/inc/btm.php');
?>