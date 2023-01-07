FROM ubuntu:22.04 
RUN  apt update && apt install git -y && apt install wget -y &&  apt install openjdk-11-jdk -y && mkdir spring-petclinic
COPY ./target/spring-petclinic-2.7.3.jar /spring-petclinic
WORKDIR /spring-petclinic 
EXPOSE 8080
CMD [ "java","-jar","spring-petclinic-2.7.3.jar" ]
