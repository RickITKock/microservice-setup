 #!/bin/bash

# Author: Rick Kock
# Created: 01/06/2023
# Last Modified: 01/06/2023

# Description:
# Clones all git repositories that are part of this microservice architecture.

clone_repos() {
    git clone https://github.com/RickITKock/microservice-posts.git
    git clone git@github.com:RickITKock/microservice-client.git
    git clone git@github.com:RickITKock/microservice-infra.git
    git clone git@github.com:RickITKock/microservice-comments.git
    git clone git@github.com:RickITKock/microservice-event-bus.git
    git clone git@github.com:RickITKock/microservice-moderation.git
    git clone git@github.com:RickITKock/microservice-query.git
}

echo 'Run this script to clone all git repositories.'
echo 'Do you wish to clone all microservice related projects? [y/N]'
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo 'Cloning all repositories...'
    clone_repos
else
    echo 'Exiting...'
fi


exit 0
