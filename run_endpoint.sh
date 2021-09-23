#!/bin/bash

./create_signed_cert.sh

echo ">>> Starting nginx server..."

/usr/sbin/nginx -V

export LD_LIBRARY_PATH=boringssl/build/ssl:boringssl/build/crypto

/usr/sbin/nginx
