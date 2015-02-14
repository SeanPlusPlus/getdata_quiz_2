#!/bin/bash

# Register an application with the Github API here https://github.com/settings/applications. Access
# the API to get information on your instructors repositories (hint: this is the url you want
# "https://api.github.com/users/jtleek/repos"). Use this data to find the time that the datasharing
# repo was created. What time was it created? This tutorial may be useful
# (https://github.com/hadley/httr/blob/master/demo/oauth2-github.r). You may also need to run the code
# in the base R package and not R studio.

# I know, I know ... this is an R class ... but it's just too tempting to solve this with 
# a single line on shell scripting

curl -s 'https://api.github.com/users/jtleek/repos' | \
  jq -C '.[] | select(.name=="datasharing") | .created_at'
