<?php
    define('PERCH_LICENSE_KEY', 'R21602-WLS991-MCG547-XVD365-WCC014');
    define('PERCH_SITEPATH', '/Users/Rick/Websites/acollective.co');

    define("PERCH_DB_USERNAME", 'root');
    define("PERCH_DB_PASSWORD", 'root');
    define("PERCH_DB_SERVER", "localhost");
    define("PERCH_DB_DATABASE", "acollective.co");
    define("PERCH_DB_PREFIX", "perch2_");

    define('PERCH_TZ', 'Europe/London');

    define('PERCH_EMAIL_FROM', 'rick@madeinbeta.co.uk');
    define('PERCH_EMAIL_FROM_NAME', 'Rick Chadwick');

    define('PERCH_LOGINPATH', '/perch');
    define('PERCH_PATH', str_replace(DIRECTORY_SEPARATOR.'config', '', __DIR__));
    define('PERCH_CORE', PERCH_PATH.DIRECTORY_SEPARATOR.'core');

    define('PERCH_RESFILEPATH', PERCH_PATH . DIRECTORY_SEPARATOR . 'resources');
    define('PERCH_RESPATH', PERCH_LOGINPATH . '/resources');

    define('PERCH_HTML5', true);
