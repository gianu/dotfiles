#!/bin/bash

# Get commit messages from the last 7 days
commit_messages=$(git log --since="7 days ago" --pretty=format:"%s")

if [ -z "$commit_messages" ]; then
  echo "No commits found in the last 7 days."
  exit 0
fi

# Prepare the prompt for Anthropic
prompt="You are helping to prepare a weekly Progress report for management. 
Here are the commit messages from the last 7 days:

$commit_messages

Based on these, create a clean, concise bullet list of the most important progress made this week. 
Focus only on meaningful progress (features, fixes, improvements). 
Write it as bullet points."

# Properly escape the prompt for JSON
json_escaped_prompt=$(jq -n --arg prompt "$prompt" '$prompt')

# Call Claude API with properly escaped JSON
response=$(curl -s https://api.anthropic.com/v1/messages \
  -H "Content-Type: application/json" \
  -H "x-api-key: $ANTHROPIC_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  --data-raw "{
        \"model\": \"claude-3-7-sonnet-20250219\",
        \"max_tokens\": 300,
        \"messages\": [
            {
                \"role\": \"user\",
                \"content\": ${json_escaped_prompt}
            }
        ]
    }")

# Extract the commit message from the response

# Extract and print the result
echo "Weekly Progress:"
echo
echo "$response" | jq -r '.content[0].text'
