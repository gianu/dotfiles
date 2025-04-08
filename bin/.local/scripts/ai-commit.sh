#!/bin/bash

# Function to display a spinner animation
spinner() {
  local pid=$1
  local delay=0.1
  local spinstr='|/-\'
  while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
    local temp=${spinstr#?}
    printf " [%c] Generating AI commit message...  " "$spinstr"
    local spinstr=$temp${spinstr%"$temp"}
    sleep $delay
    printf "\r"
  done
  printf "                                          \r"
}

# Run AI commit message generator in background and capture its output and exit status to files
temp_file=$(mktemp)
error_file=$(mktemp)

# Run the script in background and capture its exit status
(
  ~/.local/scripts/ai-commit-msg.sh >"$temp_file" 2>"$error_file"
  echo $? >"$temp_file.status"
) &
pid=$!

# Display spinner while waiting
spinner $pid

# Check if the command was successful
exit_status=$(cat "$temp_file.status")

if [ "$exit_status" -ne 0 ]; then
  echo "Error: AI commit message generation failed!"
  if [ -s "$error_file" ]; then
    echo "Error details:"
    cat "$error_file"
  fi
  # Clean up temporary files
  rm -f "$temp_file" "$temp_file.status" "$error_file"
  return 1
fi

# Read the commit message from the temporary file
commit_message=$(cat "$temp_file")

# Display the commit message
echo "Generated commit message:"
cat "$temp_file"

# Clean up temporary files
rm -f "$temp_file" "$temp_file.status" "$error_file"

# Use git commit -m with -e to edit
git commit -m "$commit_message" -e
