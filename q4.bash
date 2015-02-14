#!/bin/bash

curl -sO 'http://biostat.jhsph.edu/~jleek/contact.html'
sed -n 10p contact.html | wc -m
sed -n 20p contact.html | wc -m
sed -n 30p contact.html | wc -m
sed -n 100p contact.html | wc -m
rm -f contact.html
