# Use a Java runtime as a base image
FROM openjdk:11-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged WAR file into the container
COPY target/*.war /app/app.war

# Define the command to run the application
CMD ["java", "-jar", "app.war"]
