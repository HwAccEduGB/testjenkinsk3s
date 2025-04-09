FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -Dmaven.test.skip=true
FROM openjdk:17-jdk-slim
COPY --from=build /app/target/testjenkins-0.0.1-SNAPSHOT.jar /usr/local/lib/testjenkins.jar
ENTRYPOINT ["java", "-jar", "/usr/local/lib/testjenkins.jar"]