#!/bin/bash

# Function to display a spinner animation
spinner() {
  local pid=$1
  local delay=0.1
  local spinstr='|/-\'
  # Skip spinner if no valid PID
  if [ -z "$pid" ] || [ "$pid" -eq 0 ]; then
    echo "Generating AI commit message... (no process to monitor)"
    return
  fi
  # Use ps -p which is more portable across Unix systems including macOS
  while ps -p $pid >/dev/null 2>&1; do
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
status_file="$temp_file.status"
pid_file="$temp_file.pid"

# Run the script in background without showing background job notification
bash -c "
  ~/.local/scripts/ai-commit-msg.sh >\"$temp_file\" 2>\"$error_file\"
  echo \$? >\"$status_file\"
  echo \$\$ >\"$pid_file\"
" >/dev/null 2>&1 &

# Wait a moment for the PID file to be created
sleep 0.1

# Get the PID from the file
pid=$(cat "$pid_file" 2>/dev/null || echo 0)

# Display spinner while waiting
spinner $pid

# Check if the command was successful
exit_status=$(cat "$status_file" 2>/dev/null || echo "1")

if [ "$exit_status" -ne 0 ]; then
  echo "Error: AI commit message generation failed!"
  if [ -s "$error_file" ]; then
    echo "Error details:"
    cat "$error_file"
  fi
  # Clean up temporary files
  rm -f "$temp_file" "$status_file" "$error_file" "$pid_file"
  return 1
fi

# Read the commit message from the temporary file
commit_message=$(cat "$temp_file")

# Display the commit message
echo "Generated commit message:"
cat "$temp_file"

# Clean up temporary files
rm -f "$temp_file" "$status_file" "$error_file" "$pid_file"

# Use git commit -m with -e to edit
echo "git commit -m \"$commit_message\" -e"
# git commit -m "$commit_message" -e
