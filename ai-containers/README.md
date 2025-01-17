# AI Containers - Docker Compose Setup

This repository contains a `docker-compose.yaml` file to manage and deploy multiple AI-related containerized applications. Each service is configured to utilize GPU resources for optimal performance.

## Services

Comfyui, sd.next, ollama, openui

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
