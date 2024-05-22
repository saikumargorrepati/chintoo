FROM frolvlad/alpine-oraclejre8:latest
VOLUME /tmp
ADD  build/libs/flightSearch-0.0.1-SNAPSHOT.jar search.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/search.jar"]
