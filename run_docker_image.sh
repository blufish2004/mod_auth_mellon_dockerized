docker run \
 -p 8443:443 \
 -v $(pwd)/mellon.conf:/etc/apache2/conf-available/mellon.conf:ro \
 -v $(pwd)/signing-cert.crt:/etc/apache2/mellon/signing-cert.crt:ro \
 -v $(pwd)/signing-cert.key:/etc/apache2/mellon/signing-cert.key:ro \
 -v $(pwd)/idp-metadata.xml:/etc/apache2/mellon/idp-metadata.xml:ro \
 -v $(pwd)/index.php:/var/www/html/protected/index.php:ro \
 -it \
  mod_auth_mellon

