variable "do_token" {
  description = "Token da API da DigitalOcean"
  type        = string
  sensitive   = true
}

variable "droplet_name" {
  description = "Nome do Droplet"
  type        = string
  default     = "meu-droplet"
}

variable "region" {
  description = "Região onde será criado o Droplet"
  type        = string
  default     = "nyc3"
}

variable "size" {
  description = "Tamanho do Droplet"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "image" {
  description = "Imagem do sistema operacional"
  type        = string
  default     = "ubuntu-22-04-x64"
}

variable "ssh_keys" {
  description = "Lista de chaves SSH permitidas"
  type        = list(string)
}

variable "ssh_private_key" {
  description = "Caminho da chave SSH privada"
  type        = string
  default     = "~/.ssh/id_rsa"
}
