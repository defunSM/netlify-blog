# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /netlify-blog
COPY . .
RUN yarn install --production
RUN apt-get install php
CMD ["bash", "build.sh"]
