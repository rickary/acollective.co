
<?php
    if (perch_layout_has('is-home')) {
        perch_content('Hero');
    }
 ?>

<header class="b-container p-header">
    <a href="/" class="p-header__logo">ACOLLECTIVE</a>

    <?php 
        perch_pages_navigation(array(
            'template' => 'top.html',
            'navgroup' => 'top'
        ));
     ?>
</header>
