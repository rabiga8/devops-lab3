FROM openjdk:17-jdk
WORKDIR /app
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java", "-jar", "devops-integration.jar"]

