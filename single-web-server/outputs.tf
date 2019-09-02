output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP of the web server"
}

output "vpc_id" {
  value = "${aws_vpc.myvpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.mysubnet.id}"
}