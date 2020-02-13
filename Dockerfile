#FROM maven
#WORKDIR /project
#ADD . /project
#VOLUME /root/.m2
#EXPOSE 8080
#CMD ["mvn" , "spring-boot:run"]
#CMD ["mvn", "-jar", "demo-0.0.1.jar"]

FROM openjdk:8
WORKDIR /project
ADD target/demo-0.0.2.jar demo-0.0.2.jar
EXPOSE 8080
CMD ["java", "-jar", "demo-0.0.2.jar"]

#FROM maven AS MAVEN_BUILD
#COPY pom.xml /build/
#COPY src /build/src/
#WORKDIR /build/
#RUN mvn package
#
#FROM openjdk:11
#WORKDIR /app
#COPY --from=MAVEN_BUILD /build/target/docker-boot-intro-0.1.0.jar /app/
#ENTRYPOINT ["java", "-jar", "docker-boot-intro-0.1.0.jar"]

#apiVersion: skaffold/v1
#kind: Config
#build:
#  artifacts:
#    - image: default-route-openshift-image-registry.apps-crc.testing/hotswapping/rysnc
#      jib: {}
#  local: {}
#deploy:
#  kubectl:
#    manifests:
#    - k8s/openshift.yaml
#    - k8s/service.yaml
