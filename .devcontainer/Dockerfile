# The full list of available images can be found here https://hub.docker.com/r/microsoft/devcontainers-dotnet
FROM mcr.microsoft.com/devcontainers/dotnet:10.0-noble

# installing jre, curl, and unzip for Karate 
# https://stackoverflow.com/a/44154721
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get -y install --no-install-recommends \ 
  curl unzip default-jre-headless

# installing Karate
RUN curl -o /karate.jar -L 'https://github.com/karatelabs/karate/releases/download/v2.0.0/karate-2.0.0.jar'
