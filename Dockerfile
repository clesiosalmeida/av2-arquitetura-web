# Etapa de build
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY autheticuser/pom.xml autheticuser/
COPY autheticuser/src/ autheticuser/src/
RUN mvn -f autheticuser/pom.xml clean package -DskipTests

# Etapa final
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/autheticuser/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]