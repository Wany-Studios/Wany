# FROM docker/compose:latest

# ARG GITHUB_USERNAME
# ARG GITHUB_TOKEN

# RUN apk update && \
#     apk upgrade && \
#     apk add --no-cache git && \
#     git config --global credential.helper store && \
#     git clone --recursive https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/Wany-Studios/Wany-Production.git /app

# WORKDIR /app

# RUN echo "" > backend/.env.local

# CMD ["tail", "-f", "/dev/null"]
# CMD ["docker-compose", "up"]

FROM ubuntu:latest

ENV GOOGLE_CLIENT_ID=935362793165-l5lphpf3artovol5an7aoku3ri4n14hv.apps.googleusercontent.com
ENV GOOGLE_CLIENT_SECRET=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
ENV MAIL_AUTH_HOST=sandbox.smtp.mailtrap.io
ENV MAIL_AUTH_USER=c728a6468cfc13
ENV MAIL_AUTH_PASS=9902e58eb853eb
ENV MAIL_AUTH_PORT=587
ENV MAIL_SERVICE=
ENV SYNC_DATABASE=true

ARG GITHUB_USERNAME
ARG GITHUB_TOKEN

RUN apt-get update -y && apt-get install -y \
    git \
    docker.io \
    docker-compose \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git config --global credential.helper store
RUN git clone --recursive https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/Wany-Studios/Wany-Production.git /app

WORKDIR /app

RUN echo "" > backend/.env.local

CMD ["docker-compose", "up"]