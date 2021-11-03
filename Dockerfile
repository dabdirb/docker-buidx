FROM docker:19.03
LABEL maintainer="dabdirb <dabdirb@gmail.com>"

COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN docker buildx install &&  docker buildx version
