# Set the base image to use for subsequent instructions
FROM alpine:3.10

# Set the working directory inside the container
# WORKDIR /usr/src

# Copy any source file(s) required for the action
COPY entrypoint.sh /entrypoint.sh

# Remember to make the script executable with RUN chmod +x entrypoint.sh
RUN chmod +x entrypoint.sh

# Configure the container to be run as an executable
# ENTRYPOINT ["/usr/src/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
