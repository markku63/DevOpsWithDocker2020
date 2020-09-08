# A container for building and publishing containers

## Usage:

Create a file that contains your Docker Hub password or [access token](https://docs.docker.com/docker-hub/access-tokens/). Bind mount the password file to /app/password.txt and /var/run/docker/sock from host to the same path in container. 
```
docker run -v /var/run/docker.sock:/var/run/docker.sock -v ~/.topsecret \
-e DOCKER_USERNAME=mrnobody \
markku63/my_builder <Git repo> <docker_user/docker_repo>
```