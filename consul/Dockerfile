FROM ubuntu:16.04
RUN apt-get update && \
apt-get install unzip wget curl vim -y

WORKDIR /home/ubuntu/

ENV CONSUL_HTTP_ADDR https://server.dc1.cluster.local:8501
ENV VAULT_ADDR https://server.dc1.cluster.local:8200
ENV api_addr "https://server.dc1.cluster.local:8200"
ENV cluster_addr "https://server.dc1.cluster.local:8201"


RUN wget https://releases.hashicorp.com/consul/1.5.3/consul_1.5.3_linux_amd64.zip
RUN unzip consul_1.5.3_linux_amd64.zip
RUN mv consul /usr/bin

RUN mkdir /etc/consul.d/
COPY ui.json /etc/consul.d/ui.json
COPY certs .
RUN cat consul-agent-ca.pem >> /etc/ssl/certs/ca-certificates.crt

ADD entrypoint.sh /home/ubuntu/

RUN chmod a+x /home/ubuntu/entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
