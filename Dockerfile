# Use a Java runtime as a base image
FROM openjdk:17-jdk

# Set the working directory inside the container
#WORKDIR /app

# Add the packaged JAR file into the container
#COPY target/devops-integration.jar devops-integration.jar

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "devops-integration.jar"]

