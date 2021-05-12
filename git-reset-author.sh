#!/bin/sh

# Credits: http://stackoverflow.com/a/750191

git filter-branch -f --env-filter "
    GIT_AUTHOR_NAME='Remitano'
    GIT_AUTHOR_EMAIL='dev@remitano.com'
    GIT_COMMITTER_NAME='Remitano'
    GIT_COMMITTER_EMAIL='dev@remitano.com'
  " HEAD
