FROM alpine:3.20.3 AS build

COPY . .

RUN apk update
RUN apk add --no-cache maven
RUN mvn clean install

FROM openjdk:17-slim

COPY --from=build /target/odontoprev-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]

EXPOSE 8080