<html>
  <body>
    <h1>Hello, World!</h1>
    <hr>
    <h2>Request Headers</h2>
    <pre><?php
      $headers = apache_request_headers();
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
