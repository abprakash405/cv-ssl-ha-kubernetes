FROM ubuntu:16.04
RUN apt-get update && \
apt-get install unzip wget curl vim -y

WORKDIR /home/ubuntu/

ENV VAULT_ADDR https://server.dc1.cluster.local:8200

RUN wget https://releases.hashicorp.com/vault/1.1.3/vault_1.1.3_linux_amd64.zip
RUN unzip vault_1.1.3_linux_amd64.zip
RUN mv vault /usr/bin

RUN mkdir /etc/vault

COPY certs .
RUN cat consul-agent-ca.pem >> /etc/ssl/certs/ca-certificates.crt


COPY config.hcl /etc/vault/config.hcl

COPY hosts /tmp/hosts

CMD cat /tmp/hosts >> /etc/hosts; export VAULT_ADDR=https://server.dc1.cluster.local:8200; /usr/bin/vault server -config=/etc/vault/config.hcl