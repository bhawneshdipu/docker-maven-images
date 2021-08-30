FROM rabbitmq:3.8-alpine
# Define environment variables.
ENV RABBITMQ_PID_FILE /code/rabbitmq.pid
ENV COMPOSE_FILE rabbitmq-compose.yml
ADD rabbitmq-entrypoint.sh /code/rabbitmq-entrypoint.sh
ADD rabbitmq-env.env /code/rabbitmq-env.env
ENTRYPOINT rabbitmq-entrypoint.sh
RUN rabbitmq-plugins enable --offline rabbitmq_management

EXPOSE 15672 15672
EXPOSE 5672 5672

# Define default command
CMD ["/init.sh"]