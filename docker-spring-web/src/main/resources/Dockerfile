FROM openjdk:8u191-jdk-alpine

RUN mkdir "/code/"
ADD spring-web-entrypoint.sh /code/spring-web-entrypoint.sh
ADD spring-web-env.env /code/spring-web-env.env
ADD spring-web/spring-web.jar /code/spring-web.jar
RUN chmod -R 0777 /code/

EXPOSE 18081 15005

CMD ["/code/spring-web-entrypoint.sh"]