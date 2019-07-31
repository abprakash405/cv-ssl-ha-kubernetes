storage "consul" {
  address = "server.dc1.cluster.local:8501"
  path = "vault/"
  scheme = "https"
  tls_skip_verify = 0
  tls_key_file = "/home/ubuntu/dc1-server-consul.key.pem"
  tls_cert_file = "/home/ubuntu/dc1-server-consul.pem"
}

listener "tcp" {
address = "0.0.0.0:8200"
tls_disable = 0
tls_key_file = "/home/ubuntu/dc1-server-consul.key.pem"
tls_cert_file = "/home/ubuntu/dc1-server-consul.pem"
}

ui=true

api_addr="https://server.dc1.cluster.local:8200"
cluster_addr="https://server.dc1.cluster.local:8201"

