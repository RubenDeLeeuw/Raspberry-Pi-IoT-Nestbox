<?php
$CONFIG = array (
  'instanceid' => 'oc0ikq8fan6o',
  'passwordsalt' => 'gkkoCTzKNk22Jqxv3SpDwHsFKJhtpz',
  'secret' => '3cPwxfoIvYasKJFWNtfdbBsHyG49f8VCAGM/5Hm+ZwENwH9V',
  'trusted_domains' =>
  array (
    0 => '192.168.15.1',
  ),
  'datadirectory' => '/var/www/html/owncloud/data',
  'overwrite.cli.url' => 'http://192.168.15.1/owncloud',
  'dbtype' => 'mysql',
  'version' => '10.5.0.10',
  'dbname' => 'EmbeddedSystems',
  'dbhost' => 'localhost',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'username',
  'dbpassword' => 'pasword',
  'logtimezone' => 'UTC',
  'apps_paths' =>
  array (
    0 =>
    array (
      'path' => '/var/www/html/owncloud/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 =>
    array (
      'path' => '/var/www/html/owncloud/apps-external',
      'url' => '/apps-external',
      'writable' => true,
    ),
  ),
  'installed' => true,
'files_external_allow_create_new_local' => 'true',
);
