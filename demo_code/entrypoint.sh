#!/bin/bash

set -e

python seed_data.py
uvicorn app:app
    --host 0.0.0.0 \
    --port 8000 \
    --workers 4 \
    --log-level=info
