FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y sudo gnupg vim-tiny ruby-dev nginx make gcc g++ libc-dev wget bzip2 gnupg dirmngr procps
RUN gem install fluentd --no-doc
RUN gem install fluent-plugin-mqtt-io
RUN gem install fluent-plugin-prometheus
RUN fluentd --setup
RUN mkdir /var/log/fluent

#Http
EXPOSE 8080

COPY nginx-entrypoint.sh /nginx-entrypoint.sh
RUN chmod +x /nginx-entrypoint.sh


COPY config/nginx.conf /etc/nginx/nginx.conf


ENTRYPOINT /nginx-entrypoint.sh