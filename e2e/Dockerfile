FROM ubuntu:24.04

# installing jre, curl, and unzip for Karate 
# https://stackoverflow.com/a/44154721
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get -y install --no-install-recommends \ 
  curl unzip default-jre-headless

# installing Karate
# https://github.com/karatelabs/karate-examples/blob/main/docker/README.md
RUN curl -o /karate.jar -L 'https://github.com/karatelabs/karate/releases/download/v2.0.0/karate-2.0.0.jar'

# https://www.docker.com/blog/docker-best-practices-choosing-between-run-cmd-and-entrypoint/
ENTRYPOINT ["java", "-jar", "karate.jar"]
