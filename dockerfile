FROM maven:3.3-jdk-8-onbuild
USER root
WORKDIR /home/root
COPY pom.xml .
COPY src src
RUN mvn install -DskipTests
EXPOSE 8089
CMD ["java","-jar","/target/demo-0.0.1-SNAPSHOT.jar"] 
