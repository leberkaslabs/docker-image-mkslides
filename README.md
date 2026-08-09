# MkSlides

[![Container Release (MkSlides)](https://github.com/leberkaslabs/docker-image-mkslides/actions/workflows/build.yml/badge.svg)](https://github.com/leberkaslabs/docker-image-mkslides/actions/workflows/build.yml)

This repository provides a Docker image for [MkSlides](https://github.com/MartenBE/mkslides).

```bash
docker pull dudecalledbro/mkslides:latest
```

## Usage

You can easily build and serve presentations using Docker:

### Build a Presentation

```bash
docker run \
  --mount type=bind,src=./slides,dst=/slides \
  --rm \
  dudecalledbro/mkslides:latest mkslides build test.md
```

This command mounts your local slides directory into the container and builds test.md into a presentation.

### Serve a Presentation Locally

```bash
docker run \
  --mount type=bind,src=./slides,dst=/slides \
  --publish 8000:8000 \
  --rm \
  dudecalledbro/mkslides:latest mkslides serve --dev-addr 0.0.0.0:8000 test.md
```

Your presentation will be available at http://localhost:8000.

## Build

This image build is scheduled with GitHub Actions and will be pushed to DockerHub. The image will also be rebuilt, if the `main` branch is updated. If you need to build the image locally, ensure [Docker](https://docs.docker.com/engine/installation/) is installed and execute the following:

```bash
docker build -t mkslides:latest .
```

## License

Copyright (c) 2026 Niclas Spreng
