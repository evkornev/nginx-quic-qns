#!/bin/bash

country=FI
state=Uusimaa
locality=Espoo
organization=Cujo
organizationalunit=FW
commonname=172.17.0.2
email=evgeny.kornev@cujo.com


openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt \
-subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"

openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
