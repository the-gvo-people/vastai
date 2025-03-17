#!/bin/bash

# 

# Activate the main virtual environment
. /venv/main/bin/activate


pip install -r requirements.txt
pip install jsonlines
pip install openai
pip install flash-attn --no-build-isolation
