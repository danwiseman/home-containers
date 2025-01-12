# AI Containers - Docker Compose Setup

This repository contains a `docker-compose.yaml` file to manage and deploy multiple AI-related containerized applications. Each service is configured to utilize GPU resources for optimal performance.

## Services

### 1. **ComfyUI**
 **Image**: `comfyui:0.3.10-cuda-12.4`
 **Container Name**: `comfyui`
 **Hostname**: `comfyui`
 **Ports**: `8082:8082`
 **Volumes**:
  - `comfyui_models:/comfyui/ComfyUI/models`
  - `comfyui_nodes:/comfyui/ComfyUI/custom_nodes`
 **GPU Support**: Enabled (NVIDIA GPU with CUDA support)

### 2. **SDNext**
 **Image**: `localhost:5000/sdnext:cuda-12.4`
 **Container Name**: `sdnext`
 **Hostname**: `sdnext`
 **Ports**: `7860:7860`
 **Volumes**:
  - `comfyui_models:/sdnext/automatic/models`
 **GPU Support**: Enabled (NVIDIA GPU with CUDA support)

### 3. **Ollama**
 **Image**: `ollama/ollama:0.5.5`
 **Container Name**: `ollama`
 **Hostname**: `ollama`
 **Ports**: `11434:11434`
 **Volumes**:
  - `ollama:/root/.ollama`
 **Command**: `serve`
 **GPU Support**: Enabled (NVIDIA GPU with CUDA support)

### 4. **OpenUI**
 **Image**: `ghcr.io/open-webui/open-webui:main`
 **Container Name**: `openui`
 **Hostname**: `openui`
 **Ports**: `8080:8080`
 **Volumes**:
  - `openwebui:/app/backend/data`
 **GPU Support**: Not explicitly mentioned.

## Networks

All services are connected to the `ai-apps` network, which is an external network.

## Volumes

The following external volumes are used to persist data:
 `comfyui_models`
 `comfyui_nodes`
 `ollama`
 `openwebui`

## Prerequisites

 Docker and Docker Compose installed on your system.
 NVIDIA GPU with CUDA support for GPU-enabled services.
 Access to the external network `ai-apps` and the required external volumes.
