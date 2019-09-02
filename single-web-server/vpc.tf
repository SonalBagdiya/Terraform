resource "aws_vpc" "myvpc" {
  cidr_block    = "192.50.0.0/16"
  
  tags = {
    Name = "VPC-main"
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "10.20.1.0/24"

  tags {
    Name = "mysubnet"
  }
}

output "vpc_id" {
  value = "${aws_vpc.myvpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.mysubnet.id}"
}