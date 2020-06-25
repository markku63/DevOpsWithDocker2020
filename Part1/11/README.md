# Build and run the container with:
```
$ docker build -t exercise_1_11 .
$ touch logs.txt
$ docker run -d -p 8000:8000 -v $(pwd)/logs.txt:/backend/logs.txt exercise_1_11
```