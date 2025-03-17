#!/bin/bash

# 

# Cause the script to exit on failure.
set -eo pipefail

WORKSPACE_DIR="${WORKSPACE_DIR:-/workspace}"
ENV_PATH="$WORKSPACE_DIR/worker-env"


cd "$WORKSPACE_DIR"
# Activate the main virtual environment
. /venv/main/bin/activate

git clone https://gvo-dot:${GITHUB_TOKEN}@github.com/the-gvo-people/task_${TASK_ID}.git


# wget https://raw.githubusercontent.com/the-gvo-people/vastai/refs/heads/main/vast-cli/requirements.txt

# pip install -r requirements.txt
pip install jsonlines
# pip install openai
# pip install flash-attn --no-build-isolation


# Reload Supervisor
supervisorctl reload