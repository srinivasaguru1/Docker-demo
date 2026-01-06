# Use latest Ubuntu base image
FROM ubuntu:latest

# Set working directory inside container
WORKDIR /helloworld

# Copy all files from current folder into container
COPY . /helloworld

# Install Python3 and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Optional environment variable
ENV NAME World

# Correct the typo here: 'python3' instead of 'pyhton3'
CMD ["python3", "helloworld.py"]
