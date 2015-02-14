#!/bin/bash

curl -O 'http://biostat.jhsph.edu/~jleek/contact.html'
sed -n 10p contact.html | wc -m
rm -f contact.html
