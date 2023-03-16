# ops-beliven

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

After ansible scripts, go to `/etc/ssh/sshd_config`:

- Find this line `PasswordAuthentication no`
- Replace with `PasswordAuthentication yes`
- Run `service sshd restart`
