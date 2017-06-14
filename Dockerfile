# Pull base image
FROM alpine:latest

RUN \
  apk -U add nodejs-npm g++ make python \
  && npm install -g aglio@latest \
  &&apk del g++ make python

ENTRYPOINT ["aglio"]
