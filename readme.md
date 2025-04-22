# Docker + Node "Hello World" Example

This repository gives you a quick introduction to getting docker running with Node. It is intended for the Docker beginner.

## Setup

First, checkout this project locally and then follow these steps:

1. Build the Docker image: `docker build -t hello-world .`
2. Run the image in a container: `docker run -d -p 8080:8080 hello-world`

- The `-d` flag says to run the container in the background (daemon mode).
- The `-p` flag maps port 8080 from the container to port 8080 on the docker machine.
