FROM alpine

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN mkdir /app && \
  adduser -h /app -s /bin/false -D app && \
  apk update && \
  apk add --no-cache nodejs && \
  rm -f /tmp/* /etc/apk/cache/* && \
  npm update && \
  npm i -g typescript && \
  npm uninstall -g npm && \
  chown -R app:app /app

USER app

ENV HOME=/app

WORKDIR $HOME


ENTRYPOINT ["tsc"]

CMD ["--version"]