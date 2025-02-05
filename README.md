# Infraestrutura Automatizada com Terraform e Ansible (Laravel + Nginx + Mysql)

Este projeto automatiza a criação e configuração de um servidor na DigitalOcean utilizando **Terraform** para provisionamento e **Ansible** para configuração.

## 📌 Pré-requisitos
Certifique-se de ter instalado em sua máquina:
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- Chave SSH cadastrada na DigitalOcean
- Token da API da DigitalOcean

## 🚀 Como usar

### 1️⃣ Provisionando a Infraestrutura com Terraform
1. Clone este repositório:
   ```sh
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio/terraform
   ```
2. Configure as variáveis necessárias no arquivo `terraform.tfvars`:
   ```hcl
   cp terraform.example.tfvars terraform.tfvars
   
   do_token = "seu_digitalocean_token"
   ssh_private_key = "[Seu Fingerprint da Digital Ocean]"
   ```
3. Inicialize o Terraform:
   ```sh
   terraform init
   ```
4. Aplique o plano para criar o droplet:
   ```sh
   terraform apply -auto-approve
   ```
5. Após a execução, copie o **IP público** do servidor exibido na saída do Terraform.

### 2️⃣ Configurando o Servidor com Ansible
1. Acesse a pasta do Ansible:
   ```sh
   cd ../ansible
   ```
2. Edite o arquivo `inventory.ini` e adicione o IP do droplet:
   ```ini
   [web]
   IP_Do_Servidor ansible_user=root ansible_ssh_private_key_file=~/.ssh/id_rsa
   ```
3. Execute o playbook para configurar o servidor:
   ```sh
   ansible-playbook -i inventory.ini playbook.yml
   ```

## 🎯 Estrutura do Projeto
```
/seu-repositorio
│── terraform/           # Infraestrutura na DigitalOcean
│   ├── main.tf          # Definição dos recursos Terraform
│   ├── variables.tf     # Definição de variáveis
│   ├── outputs.tf       # Saídas do Terraform
│   ├── terraform.tfvars # Valores das variáveis (não comitar)
│── ansible/             # Configuração do servidor
│   ├── inventory.ini    # Lista de hosts
│   ├── playbook.yml     # Playbook do Ansible
│   ├── roles/           # Papéis do Ansible
```

## 🛠️ Personalização
- Modifique `terraform.tfvars` para alterar a configuração do droplet.
- Atualize `playbook.yml` para adicionar novas configurações ao servidor.

## 📜 Licença
Este projeto está sob a licença MIT. Sinta-se livre para modificar e adaptar conforme necessário.

