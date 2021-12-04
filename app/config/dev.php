<?php

// Doctrine (db)
$app['db.options'] = array(
    'driver'   => 'pdo_mysql',
    'charset'  => 'utf8',
    'host'     => 'database',  
    'port'     => '3306',
    'dbname'   => 'lamp',
    'user'     => 'lamp',
    'password' => 'lamp'
);

// enable the debug mode
$app['debug'] = true;

// define log parameters
$app['monolog.level'] = 'INFO';
