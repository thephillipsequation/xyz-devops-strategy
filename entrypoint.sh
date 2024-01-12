#!/bin/bash

# Check if the input markdown file is provided
if [ -z "$1" ]; then
  echo "Please provide a markdown file to convert."
  exit 1
fi

# Use the environment variable for the theme, or default to 'black'
THEME=${THEME:-white}

# Convert the markdown to reveal.js presentation
reveal-md "$1" --static docs

# Move the output to the `docs` directory
echo "Presentation generated in the docs directory."
