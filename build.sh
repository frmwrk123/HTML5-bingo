#!/bin/bash
branch=$(<branchinfo)
dirname="${branch}bingo.2martens.de"

if [ "$branch" = "master" ]; then
    exit
fi

# transport files over to uberspace
rsync -r --exclude=".git/" --exclude="README" . uberspace:html/$dirname/ 
