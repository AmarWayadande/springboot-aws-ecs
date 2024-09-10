FROM openjdk:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-ecs-ecr.jar springboot-aws-ecs-ecr.jar
ENTRYPOINT ["java","-jar","/springboot-aws-ecs-ecr.jar"]