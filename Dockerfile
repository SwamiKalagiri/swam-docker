FROM openjdk:8-jdk-alpine
#to run application as non-root user
RUN addgroup -S srk && adduser -S srk -G srk 
USER srk:srk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

#docker build -t dokloud/swam-docker .
#docker run -p 8080:8080 dokloud/swam-docker