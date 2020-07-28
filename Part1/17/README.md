# Espressif IoT Development Framework (ESP-IDF) in a container
[ESP-IDF](https://github.com/espressif/esp-idf) is a development system for [ESP32 series](https://www.espressif.com/en/products/socs) microcontrollers that consists of a C/C++ cross-compiler, [FreeRTOS](https://www.freertos.org/index.html)-based real time kernel and drivers and libraries for the on-chip peripherals

With this container you can run the latest development version (at the time the container was built) of ESP-IDF without disturbing any stable version installed on your system.
## Usage
Create, clone or copy an [ESP-IDF project](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/build-system.html#example-project) to a directory on your Docker host system. Start the container with your project directory bind mounted to `/esp/src` and the environment variables `LOCAL_USER_ID` and `LOCAL_GROUP_ID` set to the UID and GID owning the project directory. Give [a command to the ESP_IDF](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/build-system.html#idf-py) as parameters, or omit any parameters to access bash shell.
### Example 1: configure a project in the current directory
```
$ docker run -it -v $(pwd):/esp/src -e LOCAL_USER_ID=$(id -u) -e LOCAL_GROUP_ID=$(id -g) markku63/exercise-1-17 idf.py menuconfig
```
### Example 2: open an interactive session to the ESP-IDF Linux shell and run multiple commands
```
$ docker run -it -v $(pwd):/esp/src -e LOCAL_USER_ID=$(id -u) -e LOCAL_GROUP_ID=$(id -g) markku63/exercise-1-17
$ idf.py set-target esp32s2
$ idf.py menuconfig
$ idf.py build
$ exit
```
### Example 3: Build a project located in $HOME/projects/blink
```
$ docker run -v $HOME/projects/blink:/esp/src -e LOCAL_USER_ID=$(id -u) -e LOCAL_GROUP_ID=$(id -g) markku63/exercise-1-17 idf.py build

```
Use [esptool](https://pypi.org/project/esptool/) to write the compiled binary file to the microcontroller board.
## References
- [ESP-IDF Programming Guide](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/index.html)
- [Handling permissions with Docker volumes](https://denibertovic.com/posts/handling-permissions-with-docker-volumes/)