FROM maven:3.8.4-jdk-11 AS build
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package

FROM adoptopenjdk:11-jre-hotspot

WORKDIR /app
COPY --from=build /app/target/Lab2AppQ2.war .
EXPOSE 8080

CMD ["java", "-jar", "Lab2AppQ2.war"]
