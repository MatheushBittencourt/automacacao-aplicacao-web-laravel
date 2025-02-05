resource "digitalocean_droplet" "web" {
  name     = var.droplet_name
  region   = var.region
  size     = var.size
  image    = var.image
  ssh_keys = ["71:2a:16:72:8d:a9:3a:3e:4f:bc:92:2b:7c:78:cd:b4"]

  monitoring = true
}
