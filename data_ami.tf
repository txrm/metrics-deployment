data "aws_ami" "debian12" { # Modificar a gusto, los playbooks solo se han probado en Debian 12
  owners                = ["136693071363"]
  most_recent           = "true"

  filter {
    name   = "name"
    values = ["debian-12-amd64-*-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}