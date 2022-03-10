provider "aws" {
  region     = "us-east-1"
  version    = ">3.7"
}

variable "sg_ports" {
  type = list(number)
  description = "Allow TLS inbound & Outbound multiple ports"
  default = [443, 8200, 8201, 8300, 9200, 9500, 8080, 8081]
}

resource "aws_security_group" "demo_sg" {
  name        = "demo-sample-sg"
  description = "Allow TLS inbound to multiple port"


 dynamic "ingress" {
  for_each = var.sg_ports
  content {
    from_port   = ingress.value
    to_port     = ingress.value
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

 dynamic "egress" {
  for_each = var.sg_ports
  content {
    from_port   = egress.value
    to_port     = egress.value
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

  tags = {
    Name = "demo-tf-sg"
  }
}
