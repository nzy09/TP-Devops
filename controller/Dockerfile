# Build Stage
FROM maven:3.8.6-amazoncorretto-17 AS myapp-build
# Define working directory and set environment variable
ENV MYAPP_HOME /opt/myapp
WORKDIR $MYAPP_HOME
# Copy the project's POM file and source code to the working directory
COPY pom.xml .
COPY src ./src
# Build the application using Maven, skipping tests to speed up the process
RUN mvn package -DskipTests

# Runtime Stage
FROM amazoncorretto:17
# Set environment variable and working directory
ENV MYAPP_HOME /opt/myapp
WORKDIR $MYAPP_HOME
# Copy the built JAR file from the build stage to the runtime stage
COPY --from=myapp-build $MYAPP_HOME/target/*.jar $MYAPP_HOME/myapp.jar
# Define the command to run the application when the container starts
ENTRYPOINT java -jar myapp.jar
