# Espressif IoT Development Framework (ESP-IDF) in a container
## Usage
Create, clone or copy an [ESP-IDF project](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/build-system.html#example-project) to a directory on your Docker host system. Start the container with your project directory bind mounted to `/esp/src` and the environment variables `LOCAL_USER_ID` and `LOCAL_GROUP_ID` set to the UID and GID owning the project directory.
### Example
```
$ docker run -it -v $(pwd):/esp/src -e LOCAL_USER_ID=$(id -u) -e LOCAL_GROUP_ID=$(id -g) exercise_1_17 idf.py menuconfig
```
## References
- [ESP-IDF Programming Guide](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/index.html)
- [Handling permissions with Docker volumes](https://denibertovic.com/posts/handling-permissions-with-docker-volumes/)