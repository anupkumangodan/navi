FROM openjdk:11

ADD . /usr/src/yavin

RUN npm install -g ember-cli

WORKDIR /usr/src/yavin/packages/webservice
RUN ./gradlew bootJar

WORKDIR /usr/src/yavin/
RUN npm run-script build-ui

WORKDIR /usr/src/yavin/packages/webservice
ADD ./../app/dist app/build/resources/main/META-INF/resources/ui

CMD java -jar app/build/libs/app-2.0.jar
