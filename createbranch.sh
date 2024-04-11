#!/bin/bash

# List of repository URLs
repos=(
    "https://github.com/theppasiva/test-repo.git"
    #"https://github.com/theppasiva/roboshop-shell.git"
    # Add more repository URLs as needed
)

# New branch name
new_branch="feature"

for repo in "${repos[@]}"; do
    # Clone the repository
    git clone "$repo" temp_repo

    # Enter the cloned repository directory
    cd temp_repo || exit

    # Create a new branch
    git checkout -b "$new_branch"

    # Push the new branch to the remote repository
    git push origin "$new_branch"

    # Go back to the parent directory
    cd ..

    # Remove the temporary cloned repository directory
    rm -rf temp_repo
done
