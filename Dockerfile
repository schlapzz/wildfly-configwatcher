FROM alpine:latest

WORKDIR /watcher

RUN apk add -y inotify-tools

COPY watcher.sh .

ENTRYPOINT [ "./watcher.sh" ]