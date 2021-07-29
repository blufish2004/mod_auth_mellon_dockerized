#!/bin/bash
openssl req -x509 -newkey rsa:4096 -keyout signing-cert.key -out signing-cert.crt -days 365 -nodes -subj '/CN=localhost'
