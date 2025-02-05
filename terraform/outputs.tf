output "ip_publico" {
  description = "IP público do Droplet"
  value       = digitalocean_droplet.web.ipv4_address
}
