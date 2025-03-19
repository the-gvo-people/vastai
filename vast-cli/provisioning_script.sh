#!/bin/bash

# 

# Cause the script to exit on failure.
set -eo pipefail

WORKSPACE_DIR="${WORKSPACE_DIR:-/workspace}"
ENV_PATH="$WORKSPACE_DIR/worker-env"


cd "$WORKSPACE_DIR"
git config --global user.email "gvo1112@gmail.com"
git clone https://gvo-dot:${GITHUB_TOKEN}@github.com/the-gvo-people/task_${TASK_ID}.git


wget https://raw.githubusercontent.com/the-gvo-people/vastai/refs/heads/main/vast-cli/requirements.txt
wget https://raw.githubusercontent.com/the-gvo-people/vastai/refs/heads/main/vast-cli/install.sh

chmod +x install.sh

# Reload Supervisor
supervisorctl reload
