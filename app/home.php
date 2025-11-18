<?php
  $name = getenv("GREETING_NAME") ?: "World";
  echo "<h1>Hello $name!</h1>";
?>