FROM phusion/baseimage:0.9.11

# LABEL about the custom image
LABEL maintainer="docker@samuraipanda.com"
LABEL version="0.2"
LABEL description="This is custom Docker Image uses imapgrab to pull \
an email account via imap."

ARG DEBIAN_FRONTEND=noninteractive

# set a directory for the app
WORKDIR /app

# copy the imapgrab files to the container
COPY imapgrab* /app/

# install dependencies
RUN apt update && apt install -y python2.7-minimal getmail cron && \
    rm -rf /var/lib/apt/lists/* && \
    apt clean && \
    adduser --disabled-password --gecos "" imapgrab

# Rune imapgrab
# CMD ["sh", "/app/imapgrab.sh"]