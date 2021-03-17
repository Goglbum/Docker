FROM openjdk:8-slim
WORKDIR /opt/app
COPY db-api-for-docker.jar /opt/app
RUN apt update
RUN apt install nodejs -y
RUN apt install npm -y
CMD java -jar db-api-for-docker.jar
EXPOSE 9999