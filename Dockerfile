FROM me2digital/haproxy17
MAINTAINER zargor

RUN yum install rsyslog -y && \
    sed -i 's/#$ModLoad imudp/$ModLoad imudp/g' /etc/rsyslog.conf && \
    sed -i 's/#$UDPServerRun 514/$UDPServerRun 514/g' /etc/rsyslog.conf

ADD haproxy.conf /etc/rsyslog.d

RUN rsyslogd



