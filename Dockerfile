FROM docker:dind

RUN apk update && apk add bash curl python
RUN curl https://sdk.cloud.google.com | bash -s -- --disable-prompts
RUN gcloud components install docker-credential-gcr
RUN docker-credential-gcr configure-docker
