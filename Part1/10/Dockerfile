FROM node:lts
EXPOSE 5000
RUN npm install -g --production serve
USER node
ENTRYPOINT [ "/usr/local/bin/serve" ]
CMD [ " -s -l 5000 dist" ]