FROM docker.io/python:3.14.3-slim

LABEL org.opencontainers.image.source="https://github.com/leberkaslabs/docker-image-mkslides"

# Setup Python virtual environment and install dependencies
ARG VENV_PATH=/venv
RUN --mount=type=bind,source=requirements.txt,target=/requirements.txt \
    python3 -m venv "$VENV_PATH" && \
    . "${VENV_PATH}/bin/activate" && \
    python3 -m pip install --upgrade --no-cache-dir pip && \
    python3 -m pip install --upgrade --no-cache-dir -r /requirements.txt && \
    python3 -m pip cache purge && \
    chown nobody:nogroup "$VENV_PATH"
ENV PATH="${VENV_PATH}/bin:${PATH}"

# This is where users are expected to mount or place their slide content
WORKDIR /slides

CMD ["mkslides"]
