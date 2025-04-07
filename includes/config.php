<?php 
// Check if running on Render (production) or Localhost
if (getenv('RENDER')) {
    // Render environment: use environment variables
    define('DB_HOST', getenv('DB_HOST'));
    define('DB_PORT', getenv('DB_PORT') ?: '3306');
    define('DB_USER', getenv('DB_USER'));
    define('DB_PASS', getenv('DB_PASS'));
    define('DB_NAME', getenv('DB_NAME'));
} else {
    // Local XAMPP environment
    define('DB_HOST', 'localhost');
    define('DB_PORT', '3307'); // your XAMPP MySQL port
    define('DB_USER', 'root');
    define('DB_PASS', '');
    define('DB_NAME', 'carrental');
}

try {
    $dsn = "mysql:host=" . DB_HOST . ";port=" . DB_PORT . ";dbname=" . DB_NAME;
    $dbh = new PDO($dsn, DB_USER, DB_PASS, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
?>
