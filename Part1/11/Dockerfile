FROM node:lts
WORKDIR /backend
EXPOSE 8000
RUN git clone --depth 1 https://github.com/docker-hy/backend-example-docker.git . && npm install --no-optional
CMD [ "npm", "start" ]