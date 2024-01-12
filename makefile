# Variables
IMAGE_NAME=revealjs-converter
MARKDOWN_SLIDES=XYZ_Strategic_Plan_Slides.md
THEME=league

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the container to convert the markdown to reveal.js presentation
convert:
	docker run --rm -v $(PWD):/app -e THEME=$(THEME) $(IMAGE_NAME) $(MARKDOWN_SLIDES)

# Help
help:
	@echo "Makefile commands:"
	@echo "build   - Build the Docker image for revealjs"
	@echo "convert - Run the conversion of Markdown to HTML slides"
	@echo "help    - Display this help message"

# Default command
.PHONY: help
.PHONY: build convert
default: help
