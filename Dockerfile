FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

# Install LaTeX (full), make, and basic build utilities
RUN apt-get update && apt-get install -y \
    texlive-full \
    make \
    latexmk \
    perl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . .

# Default command builds PDF using your Makefile
CMD ["make"]
