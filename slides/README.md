# Pandoc DZSlides Docker Converter with Makefile

This setup uses Docker and a Makefile to convert Markdown files to DZSlides presentations using Pandoc in a containerized environment. The Makefile simplifies the build and run process into easy-to-use commands.

## Requirements

- Docker installed on your machine.

## Setup

1. Place your Markdown file (e.g., `XYZ_Strategic_Plan_Slides.md`), the script `convert_to_dz.sh`, and the `Makefile` in the same directory as the Dockerfile.

2. Use the Makefile to build the Docker image:
    ```bash
    make build
    ```
   This command builds the Docker image with Pandoc and necessary dependencies.

## Usage

To convert your Markdown file to DZSlides, use the Makefile:
```bash
make convert
```

This command runs the Docker container which executes the script to convert your Markdown file into a DZSlides presentation. The resulting HTML file (e.g., `XYZ_Strategic_Plan_Slides.html`) will be saved in your current directory.

## Viewing the Slides

Open the generated HTML file in any web browser to view your DZSlides presentation.

## Help

To see available Makefile commands, run:
```bash
make help
```


## Notes

- Ensure that the script `convert_to_dz.sh` correctly references your Markdown file name.
- The output HTML file will be generated in the same directory as your Markdown file.