#JtSpringProject-0.0.1-SNAPSHOT.jar

# Use an official Openjdk runtime as a parent image
FROM openjdk:17-jdk-slim

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory inside the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Package the application (this will create a jar file in the target directory)
RUN mvn package -DskipTests

# EXPOSE the port the application runs on
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "target/JtSpringProject-0.0.1-SNAPSHOT.jar"]