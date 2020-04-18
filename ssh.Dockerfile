FROM sickp/alpine-sshd:latest

# install sudo as root
RUN apk add sudo

RUN adduser -D -h /home/term -s /bin/sh term sudo && \
    ( echo "term:term" | chpasswd ) 
