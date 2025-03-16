#!/bin/bash

# 

# Cause the script to exit on failure.
set -eo pipefail

WORKSPACE_DIR="${WORKSPACE_DIR:-/workspace}"
ENV_PATH="$WORKSPACE_DIR/worker-env"


cd "$WORKSPACE_DIR"
# Activate the main virtual environment
. /venv/main/bin/activate


wget https://github.com/the-gvo-people/vastai/blob/main/vast-cli/requirements.txt

pip install -r requirements.txt
pip install jsonlines
pip install openai
pip install flash-attn --no-build-isolation