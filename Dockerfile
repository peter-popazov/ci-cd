FROM gradle:latest AS builder
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y openjdk-17-jdk
RUN chmod +x ./gradlew && ./gradlew build -x test

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/build/libs/ci-cd-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
