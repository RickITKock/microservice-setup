#!/bin/bash

# Author: Rick Kock
# Created: 01/06/2023
# Last Modified: 01/06/2023

# Description:
# Clones all git repositories that are part of this microservice architecture.

echo 'Run this script to clone all git repositories.'
echo 'Do you wish to clone all microservice related projects? [y/N]'
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo 'Cloning all repositories...'
else
    echo 'Exiting...'
fi

exit 0