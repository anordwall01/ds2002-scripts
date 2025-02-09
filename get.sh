#!usr/bin/bash


echo "get all my repositories in github"
 curl -s https://api.github.com/users/amanda01/repos | jq -r .[].name 
