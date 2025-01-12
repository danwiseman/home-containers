#!/bin/bash
set -e  # Exit the script if any statement returns a non-true return value

echo "Starting comfyui"
cd /comfyui/ComfyUI && \
	source venv/bin/activate && \
	python3 main.py \
    		--listen 0.0.0.0 \
    		--port ${COMFY_UI_PORT:-8082}
sleep infinity