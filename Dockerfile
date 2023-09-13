# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/BookStoreManager-0.0.1-SNAPSHOT.jar /app/BookStoreManager-0.0.1-SNAPSHOT.jar

# Expose the port your application will listen on (if needed)
EXPOSE 8885

# Define the command to run your Java application
CMD ["java", "-jar", "BookStoreManager-0.0.1-SNAPSHOT.jar"]
