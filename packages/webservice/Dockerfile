FROM openjdk:7

ADD . /usr/src/yavin

WORKDIR /usr/src/yavin/packages/webservice
RUN ./gradlew bootJar

WORKDIR /usr/src/yavin/packages/webservice
ADD ./../app/dist app/build/resources/main/META-INF/resources/ui

CMD java -jar app/build/libs/app-2.0.jar
