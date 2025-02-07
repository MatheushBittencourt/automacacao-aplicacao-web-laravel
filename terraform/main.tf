resource "digitalocean_droplet" "web" {
  name     = var.droplet_name
  region   = var.region
  size     = var.size
  image    = var.image
  ssh_keys = ["Seu Fingerprint da Digital Ocean"]

  monitoring = true
}
