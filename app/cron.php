<?php
date_default_timezone_set('America/Lima');

$content = "Date now: " . date('l jS \of F Y h:i:s A');
$fp = fopen("/var/www/html/date.txt","wb");
fwrite($fp,$content);
fclose($fp);