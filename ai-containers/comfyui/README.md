# ComfyUI Docker Environment

This repository provides a Dockerized setup for running the [ComfyUI](https://github.com/comfyanonymous/ComfyUI) application. It leverages NVIDIA CUDA for GPU acceleration and includes all necessary dependencies to get started quickly.

## Features

 **CUDA Runtime**: Built on NVIDIA CUDA runtime version `12.4.0` for Ubuntu 22.04.
 **Pre-configured Environment**: Includes Python 3.10, virtual environment, and required Python packages.
 **Custom Nodes**: Automatically installs the `ComfyUI-Manager` custom nodes.
 **User Isolation**: Runs the application under a non-root user for security.

## Prerequisites

 Docker installed on your machine.
 An NVIDIA GPU with CUDA support.
 Access to the internet for downloading dependencies.

## Build and Run

### Building the Docker Image

1. Clone this repository:
2. Build the Docker image:ShellRunning the Container

1. Start the container:Shell2. The application will automatically start using the provided start.sh script.

Environment Variables

- CUDA_VERSION: Specifies the CUDA runtime version (default: 12.4.0).
- BRANCH_NAME: Specifies the branch of the ComfyUI repository to clone (default: v0.3.10).
- TRANSFORMERS_CACHE: Path to cache directory for Hugging Face transformers (default: /comfyui/cache).

Included Dependencies

The following dependencies are installed within the Docker image:

- Python 3.10 and related development tools.
- PyTorch with CUDA support.
- Hugging Face Transformers and CLI tools.
- Additional Python packages as specified in requirements.txt.

Custom Nodes

The Docker image includes the ComfyUI-Manager custom nodes, which are cloned into the ComfyUI/custom_nodes directory.