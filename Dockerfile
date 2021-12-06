FROM adoptopenjdk/openjdk11:alpine-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ARG GIT_URI
ENV GIT_URI =$GIT_URI

ARG GIT_USER
ENV GIT_USER =$GIT_USER

ARG GIT_PASSWORD
ENV GIT_PASSWORD =$GIT_PASSWORD

ENTRYPOINT ["java", "-jar", "/app.jar"]