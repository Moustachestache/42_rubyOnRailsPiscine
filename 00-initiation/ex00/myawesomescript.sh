#!/bin/bash

# curl https://bit.ly/45579qw

#curl -s $URL | grep --regexp='href="*"' - 

# curl -s maked it silent
# curl -i shows the header
# > from header we extract location, which is where the http 301 redirection points to
# then into cut we delimit with whitespace and select the second field

# also for user input: https://www.redhat.com/en/blog/arguments-options-bash-scripts
curl -is $1 | grep "location" - | cut -d ' ' -f 2