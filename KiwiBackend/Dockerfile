# syntax=docker/dockerfile:1   

FROM openjdk:23-jdk-bullseye
# Working directory
WORKDIR /app
# copy from host to container
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN chmod +x mvnw
#run this inside the image
RUN ./mvnw dependency:go-offline
COPY src ./src
#run inside container
CMD ["./mvnw", "spring-boot:run"] 

