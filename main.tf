terraform {

  required_providers {
    ansible = {
      version = "~> 1.1.0"
      source = "ansible/ansible"
    }
    aws = {
      version = "~> 5.25"
      source = "hashicorp/aws"
    }
  }
}