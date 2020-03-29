FROM gradle:jdk-alpine

WORKDIR /home/gradle/bootgradle

EXPOSE 8080

USER root

RUN apk update

ENV GRADLE_USER_HOME /home/gradle/bootgradle

COPY . /home/gradle/bootgradle

RUN gradle build


FROM java:jre-alpine

WORKDIR /home/gradle/project

COPY --from=0 /home/gradle/bootgradle/build/libs/bootgradle-*-SNAPSHOT.jar .

ENTRYPOINT java -jar bootgradle-*-SNAPSHOT.jar
