FROM sickp/alpine-sshd:latest
RUN adduser -D -h /home/term -s /bin/sh term sudo && \
    ( echo "term:term" | chpasswd ) 
