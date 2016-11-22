FROM frapsoft/node

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

USER root

RUN npm i -g typescript && \
  npm cache clean

USER app

ENV HOME=/app

WORKDIR $HOME


ENTRYPOINT ["tsc"]

CMD ["--version"]
