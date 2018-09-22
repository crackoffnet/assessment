FROM rabbitmq:3.7.8-management
ADD rabbitmq.config /etc/rabbitmq/
ADD definitions.json /etc/rabbitmq/
ADD rabbitmq_email-0.2.0.ez /usr/lib/rabbitmq/lib/rabbitmq_server-3.7.8/plugins
ADD gen_smtp-0.12.0.ez /usr/lib/rabbitmq/lib/rabbitmq_server-3.7.8/plugins

RUN rabbitmq-plugins enable rabbitmq_email && \
    rabbitmq-plugins enable gen_smtp

CMD ["rabbitmq-server"]
