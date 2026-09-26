# Use Java 21 runtime
FROM eclipse-temurin:21-jdk

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the JAR file from the target directory into the container
COPY target/simple-java-app-1.0.jar /usr/src/app/simple-java-app.jar

# Expose the application port
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "/usr/src/app/simple-java-app.jar"]
