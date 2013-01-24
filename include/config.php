<?php
// Enable Debugging
$debug_mode = true;

// Database Connection Settings
$dbHost = 'localhost';
$dbUser = 'esb';
$dbPass = 'esb';
$dbName = 'ski_destinations3';



/***** STOP EDITING *****/
require_once 'database.php';

if($debug_mode){
	ini_set('display_errors', true);
	ini_set('display_startup_errors', true);
	error_reporting(E_ALL);
}else{}
?>
