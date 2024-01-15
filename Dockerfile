# # You can change this base image to anything else
# # But make sure to use the correct version of Java
# FROM adoptopenjdk/openjdk11:alpine-jre

# # Simply the artifact path
# ARG artifact=target/spring-boot-web.jar

# WORKDIR /opt/app

# COPY ${artifact} app.jar

# # This should not be changed
# ENTRYPOINT ["java","-jar","app.jar"]


FROM openjdk:17
EXPOSE 8080
ADD target/app.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]