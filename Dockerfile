FROM docker:dind

RUN apk update && apk add bash curl
RUN curl https://sdk.cloud.google.com | bash -s -- --disable-prompts
