resource "aws_vpc" "myvpc" {
  cidr_block    = "192.50.0.0/16"
  
  tags = {
    Name = "VPC-main"
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block    = "10.20.1.0/24"
  
  tags = {
    Name = "VPC-main"
  }
}