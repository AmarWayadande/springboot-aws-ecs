FROM openjdk:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-ecs1-deploy.jar springboot-aws-ecs1-deploy.jar
ENTRYPOINT ["java","-jar","/springboot-aws-ecs1-deploy.jar"]