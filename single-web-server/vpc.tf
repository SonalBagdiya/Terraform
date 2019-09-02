resource "aws_vpc" "main" {
  cidr_block  = "192.50.0.0/16"
  
  tags {
    Name = "Main"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "10.20.1.0/24"

  tags {
    Name = "Main"
  }
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "subnet_id" {
  value = "${aws_subnet.main.id}"
}