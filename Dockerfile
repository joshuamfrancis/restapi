# ARG JAR_FILE

# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file into the image
# COPY ${JAR_FILE} app.jar
COPY target/restapi-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 if your application runs on it
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
