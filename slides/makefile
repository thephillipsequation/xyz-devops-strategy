# Makefile for Docker Pandoc DZSlides

# Variables
IMAGE_NAME=pandoc-dzslides
CONTAINER_NAME=pandoc-dzslides-container

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the container to convert Markdown to DZSlides
convert:
	docker run --rm --name $(CONTAINER_NAME) -v ${PWD}:/usr/src/app $(IMAGE_NAME)

# Help
help:
	@echo "Makefile commands:"
	@echo "build   - Build the Docker image for Pandoc DZSlides conversion"
	@echo "convert - Run the conversion of Markdown to DZSlides"
	@echo "help    - Display this help message"

# Default command
.PHONY: help
default: help