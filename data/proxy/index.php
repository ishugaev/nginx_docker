<?php

echo "<h1>nginx proxy</h1>";

echo "<h1>" . date('Y-m-d H:i:s') . "</h1>";

if (isset($_SERVER['SERVER_PORT'])) {
    echo "<h2>Load Balancer Port: " . htmlspecialchars($_SERVER['SERVER_PORT'], ENT_QUOTES, 'UTF-8') . "</h2>";
} else {
    echo "<h2>Load Balancer Port: Unknown</h2>";
}
?>