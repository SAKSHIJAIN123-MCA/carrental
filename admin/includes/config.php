<?php 
$serverName = $_SERVER['SERVER_NAME'];

if ($serverName === 'localhost') {
    // Local XAMPP environment
    define('DB_HOST', 'localhost');
    define('DB_PORT', '3307');
    define('DB_USER', 'root');
    define('DB_PASS', '');
    define('DB_NAME', 'carrental');

} else {
    // Live InfinityFree environment
    define('DB_HOST', 'sql311.infinityfree.com');
    define('DB_PORT', '3306');
    define('DB_USER', 'if0_38684133');
    define('DB_PASS', 'i0zm1G2n8FdWnN');
    define('DB_NAME', 'if0_38684133_carrental');
}

try {
    $dsn = "mysql:host=" . DB_HOST . ";port=" . DB_PORT . ";dbname=" . DB_NAME;
    $dbh = new PDO($dsn, DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
?>
