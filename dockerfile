FROM maven:3.3-jdk-8-onbuild
COPY target/demo-0.0.1-SNAPSHOT.jar /opt/demo-0.0.1-SNAPSHOT.jar
RUN useradd -ms /bin/bash root
USER root
WORKDIR /home/root
EXPOSE 8089
CMD ["java","-jar","/opt/demo-0.0.1-SNAPSHOT.jar"] 
