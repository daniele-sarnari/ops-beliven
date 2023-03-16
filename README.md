# ops-beliven

## Setup

1. Run `cd terraform`
2. Run `cp terraform.tfvars.example.json terraform.tfvars.json`
3. Add hcloud_token to `terraform.tfvars.json`
4. Run `terraform init`
5. Run `terraform apply`
6. Copy the VM IP to clipboard
7. Run `cd ../ansible/roles`
8. Run `ansible-galaxy install -r requirements.yml --roles-path .`
9. Run `cd ..`
10. Run `cp hosts.example hosts`
11. Open `hosts` file and replace `iphere` with the IP you copied from the 6th step
12. Run `ansible-playbook playbook.yml`
13. Read the notes

## Terraform Available Scripts

- `terraform init`
- `terraform fmt`
- `terraform validate`
- `terraform apply`
- `terraform destroy `

## Ansible Available Scripts

- `ansible all -m ping`
- `ansible all -a "/bin/echo hello"`
- `ansible-galaxy install -r requirements.yml --roles-path .`
- `ansible-playbook playbook.yml`
- `openssl passwd -1 -salt passpass`

## Notes

After ansible scripts, ssh to the VM and open the following file `/etc/ssh/sshd_config`:

- Find this line `PasswordAuthentication no`
- Replace with `PasswordAuthentication yes`
- Run `service sshd restart`
