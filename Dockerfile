FROM python:3.12-alpine

# Set build directory
WORKDIR /tmp
COPY requirements.txt requirements.txt
ENV PATH=$PATH:/root/.local/bin

# Perform build and cleanup artifacts
RUN apk add --no-cache git curl \
    && pip install --upgrade pip \
    && pip install --user -r requirements.txt \
    && rm -rf /tmp/*

# Set working directory
WORKDIR /project

# Expose MkDocs development server port
EXPOSE 8000

# Configure healthcheck
HEALTHCHECK CMD curl --fail http://0.0.0.0:8000/ || exit 1

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
