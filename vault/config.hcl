storage "consul" {
  address = "server.dc1.consul:8501"
  path = "vault/"
  scheme = "https"
  tls_skip_verify = 0
  tls_key_file = "/home/ubuntu/dc1-server-consul-0-key.pem"
  tls_cert_file = "/home/ubuntu/dc1-server-consul-0.pem"
}

listener "tcp" {
address = "server.dc1.consul:8200"
tls_disable = 0
tls_key_file = "/home/ubuntu/dc1-server-consul-0-key.pem"
tls_cert_file = "/home/ubuntu/dc1-server-consul-0.pem"
}

ui=true

api_addr="https://server.dc1.consul:8200"
cluster_addr="https://server.dc1.consul:8201"

