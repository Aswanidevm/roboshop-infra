resource "aws_security_group" "sec_g" {
  name        = "${var.component}-${var.env}-sec_g"
  description = "Allow TLS inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.component}-${var.env}-sec_g"
  }
}

output "sg_id" {
  value = aws_security_group.sec_g.id
}

variable "component" {}

variable "env" {
  default = "dev"
}