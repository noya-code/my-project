FROM openjdk:8-jre-alpine

EXPOSE 8080
ARG JAR_FILE=./build/libs/java-app-1.0-SNAPSHOT.jar
COPY ${JAR_FILE} /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]