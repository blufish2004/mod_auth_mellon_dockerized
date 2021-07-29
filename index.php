<html>
  <body>
    <h1>Hello, <?php echo($_SERVER['REMOTE_USER']) ?></h1>
    <hr>
    <h2>Groups</h2>
    <ul>
    <?php
      $headers = apache_request_headers();
      $groups = explode(":",$_SERVER['MELLON_groups']);
      foreach($groups as $group){
        echo '<li>' . $group . '</li>';
      }
    ?>
    </ul>
    <hr>
    <h2>Request Headers</h2>
    <pre><?php
      foreach ($headers as $header => $value) {
        echo "$header: $value\n";
      }
    ?>
    </pre>
    <hr>
    <h2>Server Variables</h2>
    <pre><?php
      foreach ($_SERVER as $key => $value) {
        echo "$key: $value\n";
      }
    ?>
    </pre>
  </body>
</html>
