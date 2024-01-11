FROM pandoc/latex:2.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the markdown file and the script into the container
COPY . .

# Command to execute the script
CMD ["sh", "convert_to_dz.sh"]
