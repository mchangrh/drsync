FROM alpine
RUN apk add rsync
EXPOSE 873
VOLUME [ "/data" ]
COPY rsyncd.conf /etc/rsyncd.conf
ENTRYPOINT ["/usr/bin/rsync", "--no-detach", "--daemon", "--config", "/etc/rsyncd.conf"]