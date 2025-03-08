output "public_ip" {
    value = aws_instance.ec2_server
    description = "Public IP Address of Instance"
}