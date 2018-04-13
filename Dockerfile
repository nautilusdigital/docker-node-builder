FROM node:9.11.1-alpine

# Install development packages
RUN apk add --no-cache --update bash curl git openssh docker jq && \
    rm -rf /var/cache/apk/*

# Install AWS CLI
RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

# Install Node.js packages
RUN yarn global add \
    conventional-github-releaser \
    bunyan
