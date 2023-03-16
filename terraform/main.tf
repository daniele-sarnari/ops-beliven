resource "hcloud_ssh_key" "ssh_key" {
  name       = "SSH Key"
  public_key = file(data.external.ssh_key.result.path)
}


resource "hcloud_server" "node1" {
  name        = "node1"
  image       = "ubuntu-22.04"
  server_type = "cx11"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  ssh_keys = ["${hcloud_ssh_key.ssh_key.id}"]
}


output "server_ip_node1" {
  value = hcloud_server.node1.ipv4_address
}
