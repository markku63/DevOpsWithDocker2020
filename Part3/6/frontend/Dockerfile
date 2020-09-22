FROM node:lts-alpine as build-stage
ENV NODE_ENV=production
WORKDIR /frontend
RUN apk add --no-cache git
RUN git clone --depth 1 https://github.com/docker-hy/frontend-example-docker.git .\
    && npm install --no-optional \
    && npm run build

FROM node:lts-alpine
EXPOSE 5000
# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
ENV NODE_ENV=production
RUN npm install -g serve
USER node
WORKDIR /home/node
COPY --from=build-stage /frontend/dist /home/node/dist
CMD [ "serve", "-s", "-l", "5000", "dist" ]