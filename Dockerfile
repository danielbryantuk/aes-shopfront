FROM maven:3.6.3-openjdk-11 AS BUILD
COPY src /src
COPY pom.xml .
RUN mvn clean package

FROM openjdk:8-jre
COPY --from=BUILD target/shopfront-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8010
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
