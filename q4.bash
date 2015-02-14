#!/bin/bash

# How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page: 
# http://biostat.jhsph.edu/~jleek/contact.html 

# I know, I know ... this is an R class ... but it's just too tempting to solve this with 
# a single line on shell scripting

curl -s 'http://biostat.jhsph.edu/~jleek/contact.html' | sed -n -e 10p -e 20p -e 30p -e 100p | awk '{ print length($0); }'
