FROM openjdk:14-jdk-alpine
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
COPY ./target/*.jar /usr/app/app.jar
CMD ["java","-jar","app.jar"]