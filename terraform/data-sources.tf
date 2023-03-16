data "external" "ssh_key" {
  program = ["python3", "${path.module}/external/ssh-key-generator.py"]
}
