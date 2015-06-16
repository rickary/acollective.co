<?php
    define('PERCH_LICENSE_KEY', 'P21506-XAU970-RVF496-AGW564-JHP015');

    $http_host = getenv('HTTP_HOST');
    switch($http_host)
    {
        case('local.acollective.co:8888') :

            define("PERCH_DB_USERNAME", 'root');
            define("PERCH_DB_PASSWORD", 'root');
            define("PERCH_DB_SERVER", "localhost");
            define("PERCH_DB_DATABASE", "acollective");
            break;

        case('dev.acollective.co') :
            define("PERCH_DB_USERNAME", 'acollective');
            define("PERCH_DB_PASSWORD", 'jDGVrqKuP3B7MWGM');
            define("PERCH_DB_SERVER", "localhost");
            define("PERCH_DB_DATABASE", "acollective");
            break;

        default :
            define("PERCH_DB_USERNAME", 'acollective');
            define("PERCH_DB_PASSWORD", 'jDGVrqKuP3B7MWGM');
            define("PERCH_DB_SERVER", "localhost");
            define("PERCH_DB_DATABASE", "acollective");
            break;

        }

    
    define("PERCH_DB_PREFIX", "perch2_");
    

    
    define('PERCH_TZ', 'Europe/London');

    define('PERCH_EMAIL_FROM', 'rick@acollective.co');
    define('PERCH_EMAIL_FROM_NAME', 'Rick Chadwick');

    define('PERCH_LOGINPATH', '/perch');
    define('PERCH_PATH', str_replace(DIRECTORY_SEPARATOR.'config', '', __DIR__));
    define('PERCH_CORE', PERCH_PATH.DIRECTORY_SEPARATOR.'core');

    define('PERCH_RESFILEPATH', PERCH_PATH . DIRECTORY_SEPARATOR . 'resources');
    define('PERCH_RESPATH', PERCH_LOGINPATH . '/resources');
    
    define('PERCH_HTML5', true);
