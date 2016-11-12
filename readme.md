# TypeScript with Node.js LTS (6.9.1) Alpine Linux

[![Docker Automated Build](https://img.shields.io/docker/automated/frapsoft/typescript.svg)](https://hub.docker.com/r/frapsoft/typescript/) [![Docker Pulls](https://img.shields.io/docker/pulls/frapsoft/typescript.svg)](https://hub.docker.com/r/frapsoft/typescript/) [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg)](https://github.com/ellerbrock/open-source-badges/) [![Gitter Chat](https://badges.gitter.im/frapsoft/frapsoft.svg)](https://gitter.im/frapsoft/frapsoft/)

- Docker Hub: [frapsoft/typescript](https://hub.docker.com/r/frapsoft/typescript/)
- Repository: <https://github.com/ellerbrock/typescript-docker>
- Dockerfile: <https://github.com/ellerbrock/typescript-docker/blob/master/Dockerfile>
- Base Image: [alpine](https://hub.docker.com/_/alpine/)

## Versions

- `frapsoft/typescript` - Node.js [(latest)](https://github.com/ellerbrock/typescript-docker/) LTS (6.9.1) with npm
- `frapsoft/typescript:light` - Node.js [(light)](https://github.com/ellerbrock/typescript-docker/tree/light) LTS (6.9.1) without npm
- `frapsoft/typescript:yarn` - Node.js [(yarn)](https://github.com/ellerbrock/typescript-docker/tree/yarn) LTS (6.9.1) with yarn instead of npm

## Installation

`docker pull frapsoft/typescript`

## Quick Introduction

    add your node application under /app

### Examples

**get TypeScript version:**

`docker run frapsoft/typescript`

**run app from local folder:**

`docker run -v $(PWD)/app:/app frapsoft/typescript index.ts`

or

`docker run -v $(PWD)/app:/app frapsoft/typescript index.ts`

from the example in this repository under `/app` ...

**run app from a volume:**

`docker run -v webapp:/app frapsoft/typescript index.ts`

**interactive shell:**

`docker run -it --entrypoint sh frapsoft/typescript`

### Contact / Social Media

_Get the latest News about Web Development, Open Source, Tooling, Server & Security_

[![Twitter](https://github.frapsoft.com/social/twitter.png)](https://twitter.com/frapsoft/)[![Facebook](https://github.frapsoft.com/social/facebook.png)](https://www.facebook.com/frapsoft/)[![Google+](https://github.frapsoft.com/social/google-plus.png)](https://plus.google.com/116540931335841862774)[![Gitter](https://github.frapsoft.com/social/gitter.png)](https://gitter.im/frapsoft/frapsoft/)[![Github](https://github.frapsoft.com/social/github.png)](https://github.com/ellerbrock/)
