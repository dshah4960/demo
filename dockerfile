FROM maven:3.3-jdk-8-onbuild
USER root
WORKDIR /home/root
COPY /home/root/target/demo-0.0.1-SNAPSHOT.jar /opt/demo-0.0.1-SNAPSHOT.jar
EXPOSE 8089
CMD ["java","-jar","/opt/demo-0.0.1-SNAPSHOT.jar"] 
