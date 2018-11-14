FROM alpine:3.8

RUN apk --update --no-cache add beanstalkd=1.10-r0

ENV MAX_JOB_SIZE=65535

ADD start.sh /start.sh

VOLUME ["/var/lib/beanstalkd"]
EXPOSE 11300
CMD ["/start.sh"]
