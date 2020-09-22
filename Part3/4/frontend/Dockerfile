FROM node:lts
EXPOSE 5000
# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
ENV NODE_ENV=production

WORKDIR /frontend
RUN chown -fR node /frontend
USER node
RUN git clone --depth 1 https://github.com/docker-hy/frontend-example-docker.git .\
    && npm install --no-optional
CMD [ "npm", "start" ]