resource "aws_instance" "node_exporter" {
  ami                             = data.aws_ami.debian12.id
  instance_type                   = "t3a.medium"
  key_name                        = "vockey"

  subnet_id                       = aws_subnet.main-public-1.id
  vpc_security_group_ids          = [aws_security_group.node_exporter_sg.id]

  tags = {
    Name = "Node Exporter agent - Debian 12"
  }
}

resource "aws_instance" "prometheus" {
  ami                             = data.aws_ami.debian12.id
  instance_type                   = "t3a.medium"
  key_name                        = "vockey"

  subnet_id                       = aws_subnet.main-public-1.id
  vpc_security_group_ids          = [aws_security_group.prometheus_sg.id]

  tags = {
    Name = "Servidor Prometheus - Debian 12"
  }
}

resource "aws_instance" "grafana" {
  ami                             = data.aws_ami.debian12.id
  instance_type                   = "t3a.medium"
  key_name                        = "vockey"

  subnet_id                       = aws_subnet.main-public-1.id
  vpc_security_group_ids         = [aws_security_group.grafana_sg.id]

  tags = {
    Name = "Servidor Grafana - Debian 12"
  }
}