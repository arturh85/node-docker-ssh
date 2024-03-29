FROM node:lts-alpine
# update packages to latest, add docker and ssh client tools plus clean up big binaries which are not needed for docker client
RUN apk update && apk upgrade && apk add docker openssh-client && rm -f /usr/bin/dockerd /usr/bin/docker-* /usr/bin/containerd /usr/bin/containerd-* /usr/bin/ctr /usr/bin/runc
