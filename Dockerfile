FROM openjdk:8-jre-slim

EXPOSE 8080

RUN mkdir /app

RUN cd /app

COPY build/libs/springbootdocker-0.0.1-SNAPSHOT.jar /app/spring-boot-application.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/spring-boot-application.jar"]