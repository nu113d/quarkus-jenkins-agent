FROM jenkins/inbound-agent:alpine
USER root

RUN apk add --no-cache --update podman  fuse-overlayfs

RUN sed -i 's/#mount_program/mount_program/' /etc/containers/storage.conf

RUN echo jenkins:100000:65536 >/etc/subuid
RUN echo jenkins:100000:65536 >/etc/subgid
USER Jenkins

FROM FROM alpine/helm:3