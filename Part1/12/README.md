# Build and run
```
$ docker build -t exercise_1_12_front -f Dockerfile_front .
$ docker build -t exercise_1_12_back -f Dockerfile_back .
$ docker run -d -p 5000:5000 exercise_1_12_front
$ docker run -d -p 8000:8000 exercise_1_12_back
```