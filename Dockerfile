FROM frapsoft/node:yarn

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.1
ENV CONTAINER_NAME frapsoft/typescript:yarn
ENV CONTAINER_REPO https://github.com/ellerbrock/typescript-docker/tree/yarn

USER root

RUN yarn global add typescript && \
  yarn cache clean

USER app
ENV HOME=/app
WORKDIR $HOME

ENTRYPOINT ["tsc"]
CMD ["--version"]
