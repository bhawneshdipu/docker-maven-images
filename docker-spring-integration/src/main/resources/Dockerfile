FROM openjdk:8u191-jdk-alpine

RUN mkdir "/code/"
ADD spring-integration-entrypoint.sh /code/spring-integration-entrypoint.sh
ADD spring-integration-env.env /code/spring-integration-env.env
ADD spring-integration/spring-integration.jar /code/spring-integration.jar
RUN chmod -R 0777 /code/

EXPOSE 18081 15005

CMD ["/code/spring-integration-entrypoint.sh"]