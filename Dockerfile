FROM registry.fedoraproject.org/fedora:latest

RUN dnf install -y python python3-prometheus_client.noarch
RUN mkdir -p /monitor

COPY src/main.py /monitor/main.py
COPY src/start.sh /

RUN chmod 755 /start.sh
    
CMD ["/start.sh"]
