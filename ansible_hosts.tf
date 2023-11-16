resource "ansible_host" "prometheus" {
  name = aws_instance.prometheus.public_dns
  groups = ["metrics"]
  variables = {
    ansible_user                  = "admin",
    ansible_ssh_private_key_file  = "~/.ssh/labsuser.ppk",
    ansible_python_interpreter    = "/usr/bin/python3"
  }
}

resource "ansible_host" "grafana" {
  name = aws_instance.grafana.public_dns
  groups = ["metrics"]
  variables = {
    ansible_user                  = "admin",
    ansible_ssh_private_key_file  = "~/.ssh/labsuser.ppk",
    ansible_python_interpreter    = "/usr/bin/python3"
  }
}