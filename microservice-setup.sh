 #!/bin/bash

# Author: Rick Kock
# Created: 01/06/2023
# Last Modified: 01/06/2023

# Description:
# Clones all git repositories that are part of this microservice architecture.

clone_repos() {
    prefix=microservice
    repos=(posts client infra comments event-bus moderation query)

    for repo in "${repos[@]}"; do
        dir_name="$prefix-$repo"
        if [ -d "$dir_name" ]; then
            echo "$dir_name already exists"
        else
            git clone "git@github.com:RickITKock/$dir_name.git"
        fi
        printf '\n'
    done
}

echo 'Run this script to clone all git repositories.'
echo 'Do you wish to clone all microservice related projects? [y/N]'
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo '\nCloning all repositories...'
    clone_repos
else
    echo '\nExiting...'
fi


exit 0
