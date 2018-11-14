#!/bin/sh

set -e

chown beanstalk:daemon -R /var/lib/beanstalkd

exec beanstalkd -u beanstalk -b /var/lib/beanstalkd -z "$MAX_JOB_SIZE"
