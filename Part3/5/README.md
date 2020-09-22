After 3.4 the frontend image is 1.13GB and backend is 933MB
```
$ docker images
REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
frontend-example               latest              746cafb1c921        5 minutes ago       1.13GB
backend-example                latest              45b7551b1d3e        12 minutes ago      933MB
```

Changing the base image to node:alpine-lts reduced the sizes to 317MB for frontend and 121MB for backend
```
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED              SIZE
backend-example     latest              cbf41f1de236        About a minute ago   121MB
frontend-example    latest              7f396818a106        About a minute ago   317MB
```