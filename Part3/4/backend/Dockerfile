FROM node:lts
# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
ENV NODE_ENV=production
EXPOSE 8000

WORKDIR /backend
RUN chown -fR node /backend
USER node
RUN git clone --depth 1 https://github.com/docker-hy/backend-example-docker.git .\
    && npm install --no-optional
CMD [ "npm", "start" ]