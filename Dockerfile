FROM openjdk:17-jdk
EXPOSE 8080
ADD /var/lib/jenkins/workspace/pipe_r/target/devops-integration.jar
ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]

