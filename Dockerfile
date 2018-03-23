# Specify base image to build from
FROM alpine

# You can add labels
LABEL maintainer="smartshader@gmail.com"
LABEL description="Test application"

# Execute shell commands
RUN apk add --update nodejs nodejs-npm

# Copies a file or folder from local project folder
# inside the image in specified path
COPY src /src

# Specify work directory
# Any executed command will run within this directory
WORKDIR /src

# Execute shell commands
RUN npm install

# When image is executed, this port
# will be mapped to host port
EXPOSE 8080

# Executable to run when container is created
ENTRYPOINT ["node"]

# Default command line arguments for ENTRYPOINT
CMD ["/src/app.js"]
