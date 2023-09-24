# Custom PHP + Apache Docker Image

[![GitHub last commit](https://img.shields.io/github/last-commit/agosalvez/apache-custom.svg)](https://github.com/agosalvez/apache-custom/commits/main)
![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/t/agosalvez/apache-custom)
![GitHub contributors](https://img.shields.io/github/contributors/agosalvez/apache-custom)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/agosalvez/apache-custom)

This repository contains instructions and Dockerfile to create a custom PHP + Apache Docker image. This image is based on the official PHP + Apache image and includes custom configurations.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Build the Docker Image](#build-the-docker-image)
  - [Run a Container](#run-a-container)
- [Custom Configuration](#custom-configuration)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before you begin, ensure you have the following prerequisites installed:

- Docker: [Installation Guide](https://docs.docker.com/get-docker/)

## Getting Started

### Build the Docker Image

To create the custom PHP + Apache Docker image, follow these steps:

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/agosalvez/apache-custom.git
   ```

2. Navigate to the project directory:

   ```shell
   cd apache-custom
   ```

3. Build the Docker image:

   ```shell
   docker build -t apache-custom .
   ```

### Run a Container

Once the image is built, you can run a container using the following command:

```shell
docker run -d -p 80:80 -v YOUR_LOCAL_PATH:/var/www/html apache-custom
```

This command starts a container using your custom PHP + Apache image, and it will be accessible on port 80 of your localhost.

## Custom Configuration

To add your own custom configurations to the PHP + Apache server, follow these steps:

1. Create a directory named `custom-config` in the root of this repository.

2. Add your custom configuration files to the `custom-config` directory.

3. Modify the `Dockerfile` to copy your custom configuration files into the container during the build process. You can use the `COPY` instruction in the `Dockerfile` to achieve this.

4. Rebuild the Docker image as described in the "Build the Docker Image" section.

Your custom configurations will be included in the Docker image, and the Apache server will use them when a container is started.

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

1. Fork the repository.

2. Create a new branch for your feature or bug fix:

   ```shell
   git checkout -b feature/my-feature
   ```

3. Make your changes and commit them with a descriptive commit message.

4. Push your changes to your forked repository:

   ```shell
   git push origin feature/my-feature
   ```

5. Create a pull request to the `main` branch of this repository.

Please ensure your code adheres to the existing coding style and includes appropriate documentation.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
test
