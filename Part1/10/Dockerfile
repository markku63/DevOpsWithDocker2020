FROM node:lts
EXPOSE 5000
WORKDIR /frontend
RUN git clone --depth 1 https://github.com/docker-hy/frontend-example-docker.git . && npm install --no-optional
CMD [ "npm", "start" ]