<?php
error_reporting(0);

$link = mysql_connect("localhost", "root", "", "anais");

mysql_select_db("anais");

if (!$link) {
    echo "Impossível se conectar ao banco de dados" . PHP_EOL;
    exit;
}

?>