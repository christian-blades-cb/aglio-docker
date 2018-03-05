# Pull base image
FROM alpine:3.7

LABEL version=2.3.0

RUN apk -U add nodejs g++ make python; npm install -g aglio@2.3.0; apk del g++ make python

ENTRYPOINT ["aglio"]
