#!/bin/bash

domain=$1
pwd=$(pwd)

if [ ! -d $pwd/$domain ]; then
    echo "make $pwd/$domain"
    mkdir -p $pwd/$domain
fi

echo "Trying to make $domain 's cert..."

sudo certbot --nginx -d $domain

cp -r /etc/letsencrypt/archive/$domain/cert1.pem $pwd/result/$domain/cert1.pem
cp -r /etc/letsencrypt/archive/$domain/privkey1.pem $pwd/result/$domain/privkey1.pem
