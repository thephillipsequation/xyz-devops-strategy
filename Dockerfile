FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Install reveal-md globally
RUN npm install -g reveal-md

# Set an environment variable for the theme
ENV THEME black

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Ensure the script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint script to be executed when the container starts
ENTRYPOINT ["/entrypoint.sh"]
