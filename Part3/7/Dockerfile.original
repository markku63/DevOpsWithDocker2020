FROM openjdk:8-jdk
WORKDIR /spring-example
EXPOSE 8080
RUN git clone --depth 1 https://github.com/docker-hy/spring-example-project.git .
RUN ./mvnw package
CMD [ "java", "-jar", "./target/docker-example-1.1.3.jar" ]