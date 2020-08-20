Starting from Dockerfiles and images used in exercise 2.10, the image sizes are:
```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
backend             latest              c036239b7100        5 minutes ago       936MB
frontend            latest              232f34238ade        15 minutes ago      1.13GB
node                lts                 cfcf3e70099d        2 weeks ago         917MB
```
Both images are built FROM node:lts and most of the size comes from there. There's only a single RUN command in each, so no commands can be joined. As far as I know, there are no useless parts to remove.