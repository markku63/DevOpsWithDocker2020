The Dockerfile from exercise 1.13 is in Dockerfile.original. The following optimizations have been made in Dockerfile.optimized:
- multi-stage build
- smaller base image: openjdk:8-jre-slim instead of full jdk
- run as unprivileged user

Image size is reduced from 596MB to 203MB