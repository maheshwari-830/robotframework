FROM maven:3.9.5-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests
FROM eclipse-temurin:17-jdk
WORKDIR /dist
COPY --from=build /app/target/robotframework-*.jar ./robotframework.jar
CMD ["ls", "-lh", "robotframework.jar"]
