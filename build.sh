#!/bin/bash
branch=$(<branchinfo)
dirname="${branch}bingo.2martens.de"

if [ "$branch" = "master" ]; then
    exit
fi

# transport files over to uberspace
rsync -ar --exclude=".git*" --exclude="README" . uberspace:html/$dirname/ 
