#FROM openjdk:17-jdk
#EXPOSE 8080
#ADD /var/lib/jenkins/workspace/pipe_r/target/devops-integration.jar
#ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]
FROM ubuntu

RUN /bin/bash -c 'echo This would be apt-get or other system'
ENV myCustomEnvVar="sample string" \ 
    otherEnvVar=this is also sample""
