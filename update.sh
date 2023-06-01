 #!/bin/bash

# Author: Rick Kock
# Created: 01/06/2023
# Last Modified: 01/06/2023

# Description:
# Updates all repositories.

update_repos() {
    repos=(posts client infra comments event-bus moderation query)

    for repo in "${repos[@]}"; do
        dir_name="$repo"
        if [ -d "$dir_name" ]; then
            cd "$dir_name"
            git remote update > /dev/null 2>&1
            LOCAL=$(git rev-parse @)
            REMOTE=$(git rev-parse @{u})
            if [ $LOCAL != $REMOTE ]; then
                echo "Updating $dir_name"
                git pull
            else
                echo "$dir_name is already up to date"
            fi
            cd ..
        else
            echo "$dir_name does not exist"
        fi
        printf '\n'
    done
}

echo 'Do you want to update all repositories? [y/N]'
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "Checking for updates in all repositories..."
    update_repos
fi

exit 0