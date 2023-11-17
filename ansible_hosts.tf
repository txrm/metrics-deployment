resource "ansible_host" "node_exporter" {
  name = aws_instance.node_exporter.public_dns
  groups = ["node_exporter"]
  variables = {
    ansible_user                  = "admin",
    ansible_ssh_private_key_file  = "~/.ssh/labsuser.pem",
    ansible_python_interpreter    = "/usr/bin/python3"
  }
  depends_on = [
    aws_instance.node_exporter
  ]
}

resource "ansible_host" "prometheus" {
  name = aws_instance.prometheus.public_dns
  groups = ["prometheus"]
  variables = {
    ansible_user                  = "admin",
    ansible_ssh_private_key_file  = "~/.ssh/labsuser.pem",
    ansible_python_interpreter    = "/usr/bin/python3"
  }

  depends_on = [
    aws_instance.prometheus
  ]
}

resource "ansible_host" "grafana" {
  name = aws_instance.grafana.public_dns
  groups = ["grafana"]
  variables = {
    ansible_user                  = "admin",
    ansible_ssh_private_key_file  = "~/.ssh/labsuser.pem",
    ansible_python_interpreter    = "/usr/bin/python3"
  }

  depends_on = [
    aws_instance.grafana
  ]
}
