FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD test-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 50001
ENTRYPOINT [ "java", "-jar", "/app.jar" ]