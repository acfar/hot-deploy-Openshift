FROM maven
WORKDIR /project
ADD . /project
VOLUME /root/.m2
EXPOSE 8080
CMD ["mvn" , "spring-boot:run"]
#FROM maven
#WORKDIR /project
#ADD target/demo-0.0.1.jar demo-0.0.1.jar
#EXPOSE 8080
#CMD ["java", "-jar", "demo-0.0.1.jar"]