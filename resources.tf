resource "aws_instance" "prometheus" {
  ami                             = data.aws_ami.debian12.id
  instance_type                   = "t3a.medium"
  key_name                        = "vockey"
  tags = {
    Name = "Servidor Prometheus - Debian 12"
  }
}

resource "aws_instance" "grafana" {
  ami                             = data.aws_ami.debian12.id
  instance_type                   = "t3a.medium"
  key_name                        = "vockey"
  tags = {
    Name = "Servidor Grafana - Debian 12"
  }
}