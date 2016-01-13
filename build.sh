#!/bin/bash
branch=$(<branchinfo)
dirname="${branch}bingo.2martens.de"

# transport files over to uberspace
rsync -r --exclude=".git/" --exclude="README" . uberspace:html/$dirname/ 
