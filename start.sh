#!/usr/bin/env bash

echo "Starting ComfyUI + RunPod handler..."

# Optional: warm up models (helps a bit on first request)
python /comfyui/main.py --cpu --quick-test-for-ci &>/dev/null &
sleep 8
pkill -f main.py

# Start real server + handler
exec /start.sh "$@"
