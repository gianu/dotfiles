#!/bin/bash

# Get AI-generated commit message
commit_message=$(~/.local/bin/ai-commit-msg.sh)

# Use git commit -m with -e to edit
git commit -m "$commit_message" -e
