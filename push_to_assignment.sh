#!/bin/bash

# Script to push code to Assignment repository main branch
# Usage: ./push_to_assignment.sh [remote-url]

echo "Setting up push to Assignment main branch..."
echo ""

# Check if remote URL is provided
if [ -z "$1" ]; then
    echo "Please provide the Assignment repository URL"
    echo "Usage: ./push_to_assignment.sh <repository-url>"
    echo ""
    echo "Example:"
    echo "  ./push_to_assignment.sh https://github.com/username/Assignment.git"
    echo "  ./push_to_assignment.sh git@github.com:username/Assignment.git"
    exit 1
fi

REMOTE_URL=$1
REMOTE_NAME="assignment"

# Check if remote already exists
if git remote get-url "$REMOTE_NAME" &>/dev/null; then
    echo "Remote '$REMOTE_NAME' already exists. Updating URL..."
    git remote set-url "$REMOTE_NAME" "$REMOTE_URL"
else
    echo "Adding remote '$REMOTE_NAME'..."
    git remote add "$REMOTE_NAME" "$REMOTE_URL"
fi

echo ""
echo "Fetching from Assignment repository..."
git fetch "$REMOTE_NAME"

echo ""
echo "Current branch: $(git branch --show-current)"
echo ""

# Check if Assignment main branch exists remotely
if git ls-remote --heads "$REMOTE_NAME" main &>/dev/null; then
    echo "Assignment main branch exists. Pushing to it..."
    git push "$REMOTE_NAME" main:main
else
    echo "Assignment main branch doesn't exist yet. Creating it..."
    git push -u "$REMOTE_NAME" main:main
fi

echo ""
echo "Done! Your code has been pushed to Assignment main branch."
echo "Remote URL: $REMOTE_URL"
echo "Branch: main"

