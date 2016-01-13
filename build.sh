#!/bin/bash
branch=$(<branchinfo)
dirname="${branch}bingo.2martens.de"

if [ "$branch" = "master" ]; then
    echo "Master branch is not built"
    exit
fi

# transport files over to uberspace
rsync -tvzr --modify-window=1 --progress --exclude=".git*" --exclude="README" . uberspace:html/$dirname/ 
