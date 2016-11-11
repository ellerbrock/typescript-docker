FROM frapsoft/node

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.1
ENV CONTAINER_NAME frapsoft/typescript
ENV CONTAINER_REPO https://github.com/ellerbrock/typescript-docker

USER root

RUN npm i -g typescript && \
  npm cache clean

USER app
ENV HOME=/app
WORKDIR $HOME

ENTRYPOINT ["tsc"]
CMD ["--version"]
