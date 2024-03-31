FROM openjdk:17-jdk
EXPOSE 8888
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]

