FROM openjdk:11

ENV PORT=8080
COPY . /usr/src/yavin

WORKDIR /usr/src/yavin/packages/webservice
RUN  ./gradlew bootJar

WORKDIR /usr/src/yavin/packages/webservice
RUN cp -r ./../app/dist app/build/resources/main/META-INF/resources/ui

# ADD packages/webservice/app/build /usr/src/yavin/packages/webservice/app/
WORKDIR /usr/src/yavin/packages/webservice
CMD java -XX:MetaspaceSize 100m -XX:+UseG1GC -verbose:gc -XX:+UseContainerSupport -Xmx200m -jar /usr/src/yavin/packages/webservice/app/build/libs/app-0.2.0.jar
