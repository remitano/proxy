#!/bin/sh

git filter-branch -f --env-filter "
    GIT_AUTHOR_NAME='Remitano'
    GIT_AUTHOR_EMAIL='dev@remitano.com'
    GIT_COMMITTER_NAME='Remitano'
    GIT_COMMITTER_EMAIL='dev@remitano.com'
  " HEAD

# Delete all other branches
git branch | grep -v "master" | xargs git branch -D
git push origin master -f
git push proxy master -f
