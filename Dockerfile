# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Set environment variables to non-interactive to prevent prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package index and install FFmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Clear package cache to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the default command to an empty shell
CMD ["ffmpeg"]
