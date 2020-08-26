#! /bin/bash

if [ "$1" != "" ]; then
	openssl req -new -x509 -days 365 -nodes -out cert.pem -keyout key.pem
	openssl pkcs12 -export -out $1.pfx -inkey key.pem -in cert.pem
else
	echo "Usage: makessc <out_name>"
fi

