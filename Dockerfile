
FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.1
ENV CONTAINER_NAME frapsoft/typescript:nodemon
ENV CONTAINER_REPO https://github.com/ellerbrock/typescript-docker/tree/light

RUN mkdir /app && \
  adduser -h /app -s /bin/false -D app && \
  apk update && \
  apk add --no-cache nodejs && \
  npm update && \
  npm i -g typescript nodemon ts-node && \
  npm cache clean && \
  chown -R app:app /app

USER app
ENV HOME=/app
WORKDIR $HOME

ENTRYPOINT ["nodemon --exec ts-node"]
