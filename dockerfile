USER root
WORKDIR /home/root
FROM maven:3.3-jdk-8-onbuild
EXPOSE 8089
CMD ["java","-jar","/target/demo-0.0.1-SNAPSHOT.jar"] 
