docker run \
 -p 8443:443 \
 -v $(pwd)/index.php:/var/www/html/index.php:ro \
 -it \
  saml_training_preflight_check

