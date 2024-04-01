FROM openjdk:17-jdk
EXPOSE 8080
ADD target/devops-integration.jar
ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]
#FROM ubuntu

#RUN /bin/bash -c 'echo This would be apt-get or other system'
